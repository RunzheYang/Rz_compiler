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

            Pair<Operand, Deque<PseudoInstruction>> result = null;

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
                MipsRegister register = (MipsRegister) available.iterator().next();
                tempReg.setInRegister(register);
                result = new Pair<>(register, new LinkedList<>()) ;
                return result;
            } else {}

            return null;
        }

        @Override
        public Pair<Operand, Deque<PseudoInstruction>> visit(ImmediateValue immediate) {

            Pair<Operand, Deque<PseudoInstruction>> result = new Pair<>(immediate, new LinkedList<>());

            return result;
        }

        @Override
        public Pair<Operand, Deque<PseudoInstruction>> visit(MemAddress memAddress) {

            Pair<Operand, Deque<PseudoInstruction>> result = new Pair<>(memAddress, new LinkedList<>());

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

        Operand operand2 = absInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand1 = absInstr.getDest().accpet(new RegisterMapper()).a;

        instructions.add(new AbsInstr(operand1, operand2));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(AddInstr addInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = addInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = addInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = addInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new AddInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(AndInstr andInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = andInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = andInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = andInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new AndInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(DivInstr divInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = divInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = divInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = divInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new DivInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(MulInstr mulInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = mulInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = mulInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = mulInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new MulInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(NegInstr negInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = negInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand1 = negInstr.getDest().accpet(new RegisterMapper()).a;

        instructions.add(new NegInstr(operand1, operand2));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(NorInstr norInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = norInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = norInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = norInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new NorInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(NotInstr notInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = notInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand1 = notInstr.getDest().accpet(new RegisterMapper()).a;

        instructions.add(new NotInstr(operand1, operand2));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(OrInstr orInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 =  orInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 =  orInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 =  orInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new OrInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(RemInstr remInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = remInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = remInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = remInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new RemInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(RolInstr rolInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = rolInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = rolInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = rolInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new RolInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SllInstr sllInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = sllInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = sllInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = sllInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new SllInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SraInstr sraInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = sraInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = sraInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = sraInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new SraInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SrlInstr srlInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = srlInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = srlInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = srlInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new SrlInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SubInstr subInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = subInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = subInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = subInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new SubInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(XorInstr xorInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = xorInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = xorInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = xorInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new XorInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(BeqInstr beqInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = beqInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = beqInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = beqInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new BeqInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(BgeInstr bgeInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = bgeInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = bgeInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = bgeInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new BgeInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(BgtInstr bgtInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = bgtInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = bgtInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = bgtInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new BgtInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(BInstr bInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand1 = bInstr.getLabel().accpet(new RegisterMapper()).a;

        instructions.add(new BInstr((Label) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(BleInstr bleInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = bleInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = bleInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = bleInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new BleInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(BltInstr bltInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = bltInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = bltInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = bltInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new BltInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(BneInstr bneInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = bneInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = bneInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = bneInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new BneInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(JalInstr jalInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand1 = jalInstr.getLabel().accpet(new RegisterMapper()).a;

        instructions.add(new JalInstr((Label) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(JrInstr jrInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand1 =  jrInstr.getrSrc().accpet(new RegisterMapper()).a;

        instructions.add(new JrInstr(operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SeqInstr seqInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = seqInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = seqInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = seqInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new SeqInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SgeInstr sgeInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = sgeInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = sgeInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = sgeInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new SgeInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SgtInstr sgtInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = sgtInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = sgtInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = sgtInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new SgtInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SleInstr sleInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = sleInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = sleInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = sleInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new SleInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SltInstr sltInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = sltInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = sltInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = sltInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new SltInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SneInstr sneInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = sneInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand3 = sneInstr.getSrc2().accpet(new RegisterMapper()).a;
        Operand operand1 = sneInstr.getDest().accpet(new RegisterMapper()).a;



        instructions.add(new SneInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(LaInstr laInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand1 =  laInstr.getDest().accpet(new RegisterMapper()).a;
        Operand operand2 =  laInstr.getSrc1().accpet(new RegisterMapper()).a;

        instructions.add(new LaInstr (operand1, operand2));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(LbInstr lbInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 =  lbInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand1 =  lbInstr.getDest().accpet(new RegisterMapper()).a;

        instructions.add(new LbInstr (operand1, operand2));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(LhInstr lhInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 =  lhInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand1 =  lhInstr.getDest().accpet(new RegisterMapper()).a;

        instructions.add(new LhInstr (operand1, operand2));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(LiInstr liInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 =  liInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand1 =  liInstr.getDest().accpet(new RegisterMapper()).a;

        instructions.add(new LiInstr (operand1, operand2));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(LwInstr lwInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 =  lwInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand1 =  lwInstr.getDest().accpet(new RegisterMapper()).a;

        instructions.add(new LwInstr (operand1, operand2));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(MoveInstr moveInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand2 = moveInstr.getSrc1().accpet(new RegisterMapper()).a;
        Operand operand1 = moveInstr.getDest().accpet(new RegisterMapper()).a;

        if (!operand1.toString().equals(operand2.toString())) {
            instructions.add(new MoveInstr(operand1, operand2));
        }

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SbInstr sbInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand1 =  sbInstr.getDest().accpet(new RegisterMapper()).a;
        Operand operand2 =  sbInstr.getSrc1().accpet(new RegisterMapper()).a;

        instructions.add(new SbInstr (operand1, operand2));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(ShInstr shInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand1 =  shInstr.getDest().accpet(new RegisterMapper()).a;
        Operand operand2 =  shInstr.getSrc1().accpet(new RegisterMapper()).a;

        instructions.add(new ShInstr (operand1, operand2));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SwInstr swInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Operand operand1 =  swInstr.getDest().accpet(new RegisterMapper()).a;
        Operand operand2 =  swInstr.getSrc1().accpet(new RegisterMapper()).a;

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
