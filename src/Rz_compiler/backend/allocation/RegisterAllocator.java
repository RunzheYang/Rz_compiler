package Rz_compiler.backend.allocation;

import Rz_compiler.backend.instructions.AssemblerDirective;
import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.instructions.Syscall;
import Rz_compiler.backend.instructions.arithmetic_logic.*;
import Rz_compiler.backend.instructions.branch_jump.*;
import Rz_compiler.backend.instructions.comparison.*;
import Rz_compiler.backend.instructions.load_store_move.*;
import Rz_compiler.backend.instructions.visitors.InstructionVisitor;
import Rz_compiler.backend.interference.IGNode;
import Rz_compiler.backend.interference.InterferenceGraph;
import Rz_compiler.backend.operands.*;
import org.antlr.v4.runtime.misc.Pair;

import java.util.*;

/**
 * Created by YRZ on 5/1/16.
 */
public class RegisterAllocator implements InstructionVisitor<Deque<PseudoInstruction>> {

    InterferenceGraph ig;

    FrameManager frameManager;

    Set<Register> mipsTempReg = MipsRegister.getRealTemporaryRegisters();

    public RegisterAllocator(InterferenceGraph ig, FrameManager frameManager) {
        this.ig = ig;
        this.frameManager = frameManager;
    }

    private class RegisterMapper implements OperandVisitor<Pair<Operand, Deque<PseudoInstruction>>> {
        @Override
        public Pair<Operand, Deque<PseudoInstruction>> visit(MipsRegister mipsReg) {

            Pair<Operand, Deque<PseudoInstruction>> result = new Pair<>(mipsReg, new LinkedList<>());

            return result;
        }

        @Override
        public Pair<Operand, Deque<PseudoInstruction>> visit(TemporaryRegister tempReg) {

            Pair<Operand, Deque<PseudoInstruction>> result;

            if (tempReg.isInRegister() != null) {
                result = new Pair<>(tempReg.isInRegister(), new LinkedList<>()) ;
                return result;
            }

            Set<IGNode> adjacent = ig.getAdjacent(IGNode.getIGNodeforRegister(tempReg));
            Set<Register> available = new HashSet<Register>(mipsTempReg);
            for (IGNode node : adjacent) {
                Register reg = node.getReg();
                if (reg instanceof TemporaryRegister) {
                    Register real =  ((TemporaryRegister) reg).isInRegister();
                    if (real != null) {
                        available.remove(real);
                    }
                }
            }

            if (available.size() > 0) {
System.err.println("NO ENOUGH?" + available.size());
                MipsRegister real = (MipsRegister) available.iterator().next();
                Deque<PseudoInstruction> instructions = new LinkedList<>();
                if (tempReg.isInMem()) {
                    instructions.add(frameManager.BackFromMem(tempReg, real));
                }
                tempReg.setInRegister(real);
                result = new Pair<>(real, instructions) ;
                return result;
            } else {
                for (IGNode node : adjacent) {
                    Register register = node.getReg();
                    if (register instanceof TemporaryRegister) {
                        Register real = ((TemporaryRegister) register).isInRegister();
                        if (real != null) {
                            // if it is cast to mem before
                            Deque<PseudoInstruction> instructions = new LinkedList<>();
                            if (tempReg.isInMem()) {
                                instructions.add(frameManager.BackFromMem(tempReg, real));
                            }
                            tempReg.setInRegister((MipsRegister) real);
                            instructions.add(frameManager.CastToMem(register));
                            return new Pair<>(real, instructions);
                        }
                    }
                }

            }
            return null;
        }

        @Override
        public Pair<Operand, Deque<PseudoInstruction>> visit(ImmediateValue immediate) {

            Pair<Operand, Deque<PseudoInstruction>> result = new Pair<>(immediate, new LinkedList<>());

            return result;
        }

        @Override
        public Pair<Operand, Deque<PseudoInstruction>> visit(MemAddress memAddress) {

            Pair<Operand, Deque<PseudoInstruction>> innerResult = memAddress.getReg().accept(this);

            Pair<Operand, Deque<PseudoInstruction>> result = new Pair<>(new MemAddress((Register) innerResult.a,
                    memAddress.getOffset()), innerResult.b);

            return result;
        }

        @Override
        public Pair<Operand, Deque<PseudoInstruction>> visit(Label label) {

            Pair<Operand, Deque<PseudoInstruction>> result = new Pair<>(label, new LinkedList<>());

            return result;
        }

        @Override
        public Pair<Operand, Deque<PseudoInstruction>> visit(NoOperand noOperand) {

            Pair<Operand, Deque<PseudoInstruction>> result = new Pair<>(noOperand, new LinkedList<>());

            return result;
        }
    }

    @Override
    public Deque<PseudoInstruction> visit(AbsInstr absInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  absInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  absInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);


        instructions.add(new AbsInstr(operand1, operand2));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(AddInstr addInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  addInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  addInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  addInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new AddInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(AndInstr andInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  andInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  andInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  andInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new AndInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(DivInstr divInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  divInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  divInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  divInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new DivInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(MulInstr mulInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  mulInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  mulInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  mulInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new MulInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(NegInstr negInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  negInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  negInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);


        instructions.add(new NegInstr(operand1, operand2));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(NorInstr norInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  norInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  norInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  norInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new NorInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(NotInstr notInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  notInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  notInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);


        instructions.add(new NotInstr(operand1, operand2));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(OrInstr orInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =   orInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =   orInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =   orInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new OrInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(RemInstr remInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  remInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  remInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  remInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new RemInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(RolInstr rolInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  rolInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  rolInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  rolInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new RolInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SllInstr sllInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  sllInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  sllInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  sllInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new SllInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SraInstr sraInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  sraInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  sraInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  sraInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new SraInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SrlInstr srlInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  srlInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  srlInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  srlInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new SrlInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SubInstr subInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  subInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  subInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  subInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new SubInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(XorInstr xorInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  xorInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  xorInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  xorInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new XorInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(BeqInstr beqInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  beqInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  beqInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  beqInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new BeqInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(BgeInstr bgeInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  bgeInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  bgeInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  bgeInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new BgeInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(BgtInstr bgtInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  bgtInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  bgtInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  bgtInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new BgtInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(BInstr bInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  bInstr.getLabel().accept(new RegisterMapper());
        Operand operand1 = result.a;

        instructions.addAll(result.b);

        instructions.add(new BInstr((Label) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(BleInstr bleInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  bleInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  bleInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  bleInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new BleInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(BltInstr bltInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  bltInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  bltInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  bltInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new BltInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(BneInstr bneInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  bneInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  bneInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  bneInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new BneInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(JalInstr jalInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  jalInstr.getLabel().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);


        instructions.add(new JalInstr((Label) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(JrInstr jrInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  jrInstr.getrSrc().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);


        instructions.add(new JrInstr(operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SeqInstr seqInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  seqInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  seqInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  seqInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new SeqInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SgeInstr sgeInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  sgeInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  sgeInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  sgeInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new SgeInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SgtInstr sgtInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  sgtInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  sgtInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  sgtInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new SgtInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SleInstr sleInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  sleInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  sleInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  sleInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new SleInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SltInstr sltInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  sltInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  sltInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  sltInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new SltInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SneInstr sneInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  sneInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  sneInstr.getSrc2().accept(new RegisterMapper());
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  sneInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);




        instructions.add(new SneInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(LaInstr laInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =   laInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);

        result =   laInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);


        instructions.add(new LaInstr (operand1, operand2));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(LbInstr lbInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =   lbInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =   lbInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);


        instructions.add(new LbInstr (operand1, operand2));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(LhInstr lhInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =   lhInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =   lhInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);


        instructions.add(new LhInstr (operand1, operand2));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(LiInstr liInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =   liInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =   liInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);


        instructions.add(new LiInstr (operand1, operand2));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(LwInstr lwInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =   lwInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =   lwInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);


        instructions.add(new LwInstr (operand1, operand2));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(MoveInstr moveInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =  moveInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  moveInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);


        if (!operand1.toString().equals(operand2.toString())) {
            instructions.add(new MoveInstr(operand1, operand2));
        }

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SbInstr sbInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =   sbInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);

        result =   sbInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);


        instructions.add(new SbInstr (operand1, operand2));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(ShInstr shInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =   shInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);

        result =   shInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);


        instructions.add(new ShInstr (operand1, operand2));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SwInstr swInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result =   swInstr.getDest().accept(new RegisterMapper());
        Operand operand1 = result.a;
        instructions.addAll(result.b);

        result =   swInstr.getSrc1().accept(new RegisterMapper());
        Operand operand2 = result.a;
        instructions.addAll(result.b);


        instructions.add(new SwInstr (operand1, operand2));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(Syscall syscall) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        instructions.add(syscall);

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(AssemblerDirective assemblerDirective) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        instructions.add(assemblerDirective);

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(Label label) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        instructions.add(label);

        return instructions;
    }
}
