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
import Rz_compiler.backend.operands.*;
import org.antlr.v4.runtime.misc.Pair;

import java.util.*;

/**
 * Created by YRZ on 5/6/16.
 */
public class CiscRegisterAllocator implements InstructionVisitor<Deque<PseudoInstruction>> {

    FrameManager frameManager = null;

    Set<Register> mipsTempReg = MipsRegister.getRealTemporaryRegisters();

    public CiscRegisterAllocator(FrameManager frameManager) {
        this.frameManager = frameManager;
    }

    @Override
    public Deque<PseudoInstruction> visit(AbsInstr absInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(absInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  absInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
        }

        instructions.add(new AbsInstr(MipsRegister.$t0, operand2));

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(AddInstr addInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(addInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(addInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  addInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new AddInstr(MipsRegister.$t0, operand2, operand3));
        } else {
            instructions.add(new AddInstr(operand1, operand2, operand3));
        }


        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(AndInstr andInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(andInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(andInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  andInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new AndInstr(MipsRegister.$t0, operand2, operand3));
        } else {
            instructions.add(new AndInstr(operand1, operand2, operand3));
        }

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(DivInstr divInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(divInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(divInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  divInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new DivInstr(MipsRegister.$t0, operand2, operand3));
        } else {
            instructions.add(new DivInstr(operand1, operand2, operand3));
        }

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(MulInstr mulInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(mulInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(mulInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  mulInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new MulInstr(MipsRegister.$t0, operand2, operand3));
        } else {
            instructions.add(new MulInstr(operand1, operand2, operand3));
        }

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(NegInstr negInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(negInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  negInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new NegInstr(MipsRegister.$t0, operand2));
        } else {
            instructions.add(new NegInstr(operand1, operand2));
        }

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(NorInstr norInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(norInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(norInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  norInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new NorInstr(MipsRegister.$t0, operand2, operand3));
        } else {
            instructions.add(new NorInstr(operand1, operand2, operand3));
        }

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(NotInstr notInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(notInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  notInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new NotInstr(MipsRegister.$t0, operand2));
        } else {
            instructions.add(new NotInstr(operand1, operand2));
        }

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(OrInstr orInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(orInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(orInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  orInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new OrInstr(MipsRegister.$t0, operand2, operand3));
        } else {
            instructions.add(new OrInstr(operand1, operand2, operand3));
        }

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(RemInstr remInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(remInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(remInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  remInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new RemInstr(MipsRegister.$t0, operand2, operand3));
        } else {
            instructions.add(new RemInstr(operand1, operand2, operand3));
        }

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(RolInstr rolInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(rolInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(rolInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  rolInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new RolInstr(MipsRegister.$t0, operand2, operand3));
        } else {
            instructions.add(new RolInstr(operand1, operand2, operand3));
        }

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SllInstr sllInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(sllInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(sllInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  sllInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new SllInstr(MipsRegister.$t0, operand2, operand3));
        } else {
            instructions.add(new SllInstr(operand1, operand2, operand3));
        }

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SraInstr sraInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(sraInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(sraInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  sraInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new SraInstr(MipsRegister.$t0, operand2, operand3));
        } else {
            instructions.add(new SraInstr(operand1, operand2, operand3));
        }


        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SrlInstr srlInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(srlInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(srlInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  srlInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new SrlInstr(MipsRegister.$t0, operand2, operand3));
        } else {
            instructions.add(new SrlInstr(operand1, operand2, operand3));
        }

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SubInstr subInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(subInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(subInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  subInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new SubInstr(MipsRegister.$t0, operand2, operand3));
        } else {
            instructions.add(new SubInstr(operand1, operand2, operand3));
        }

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(XorInstr xorInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(xorInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(xorInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  xorInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new XorInstr(MipsRegister.$t0, operand2, operand3));
        } else {
            instructions.add(new XorInstr(operand1, operand2, operand3));
        }

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(BeqInstr beqInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(beqInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(beqInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  LW(beqInstr.getDest(), MipsRegister.$t0);
        Operand operand1 = result.a;
        instructions.addAll(result.b);


        instructions.add(new BeqInstr(operand1, operand2, operand3));


        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(BgeInstr bgeInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(bgeInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(bgeInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  LW(bgeInstr.getDest(), MipsRegister.$t0);
        Operand operand1 = result.a;
        instructions.addAll(result.b);


        instructions.add(new BeqInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(BgtInstr bgtInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(bgtInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(bgtInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  LW(bgtInstr.getDest(), MipsRegister.$t0);
        Operand operand1 = result.a;
        instructions.addAll(result.b);


        instructions.add(new BeqInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(BInstr bInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        instructions.add(bInstr);

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(BleInstr bleInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(bleInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(bleInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  LW(bleInstr.getDest(), MipsRegister.$t0);
        Operand operand1 = result.a;
        instructions.addAll(result.b);


        instructions.add(new BeqInstr(operand1, operand2, operand3));
        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(BltInstr bltInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(bltInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(bltInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  LW(bltInstr.getDest(), MipsRegister.$t0);
        Operand operand1 = result.a;
        instructions.addAll(result.b);


        instructions.add(new BeqInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(BneInstr bneInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(bneInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(bneInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        result =  LW(bneInstr.getDest(), MipsRegister.$t0);
        Operand operand1 = result.a;
        instructions.addAll(result.b);


        instructions.add(new BeqInstr(operand1, operand2, operand3));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(JalInstr jalInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        instructions.add(jalInstr);


        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(JrInstr jrInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        instructions.add(jrInstr);

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SeqInstr seqInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(seqInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(seqInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  seqInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new SeqInstr(MipsRegister.$t0, operand2, operand3));
        } else {
            instructions.add(new SeqInstr(operand1, operand2, operand3));
        }

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SgeInstr sgeInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(sgeInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(sgeInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  sgeInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new SgeInstr(MipsRegister.$t0, operand2, operand3));
        } else {
            instructions.add(new SgeInstr(operand1, operand2, operand3));
        }

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SgtInstr sgtInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(sgtInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(sgtInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  sgtInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new SgtInstr(MipsRegister.$t0, operand2, operand3));
        } else {
            instructions.add(new SgtInstr(operand1, operand2, operand3));
        }

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SleInstr sleInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(sleInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(sleInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  sleInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new SleInstr(MipsRegister.$t0, operand2, operand3));
        } else {
            instructions.add(new SleInstr(operand1, operand2, operand3));
        }

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SltInstr sltInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(sltInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(sltInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  sltInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new SltInstr(MipsRegister.$t0, operand2, operand3));
        } else {
            instructions.add(new SltInstr(operand1, operand2, operand3));
        }

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SneInstr sneInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(sneInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result =  LW(sneInstr.getSrc2(), MipsRegister.$t3);
        Operand operand3 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  sneInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new SneInstr(MipsRegister.$t0, operand2, operand3));
        } else {
            instructions.add(new SneInstr(operand1, operand2, operand3));
        }
        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(LaInstr laInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(laInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  laInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new LaInstr(MipsRegister.$t0, operand2));
        } else {
            instructions.add(new LaInstr(operand1, operand2));
        }

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(LbInstr lbInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(lbInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  lbInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new LbInstr(MipsRegister.$t0, operand2));
        } else {
            instructions.add(new LbInstr(operand1, operand2));
        }

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(LhInstr lhInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(lhInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  lhInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new LhInstr(MipsRegister.$t0, operand2));
        } else {
            instructions.add(new LhInstr(operand1, operand2));
        }

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(LiInstr liInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(liInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  liInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new LiInstr(MipsRegister.$t0, operand2));
        } else {
            instructions.add(new LiInstr(operand1, operand2));
        }

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(LwInstr lwInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(lwInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  lwInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new LwInstr(MipsRegister.$t0, operand2));
        } else {
            instructions.add(new LwInstr(operand1, operand2));
        }

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(MoveInstr moveInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(moveInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        Operand operand1 =  moveInstr.getDest();
        if (operand1 instanceof TemporaryRegister) {
            MipsRegister real = MipsRegister.$t0;
            ((TemporaryRegister) operand1).setInRegister(real);
            instructions.add(new MoveInstr(MipsRegister.$t0, operand2));
        } else {
            instructions.add(new MoveInstr(operand1, operand2));
        }

        instructions.add(frameManager.CastToMem((Register) operand1));

        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SbInstr sbInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(sbInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result = LW(sbInstr.getDest(), MipsRegister.$t0);
        Operand operand1 = result.a;
        instructions.addAll(result.b);

        instructions.add(new SbInstr(operand1, operand2));


        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(ShInstr shInstr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(shInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result = LW(shInstr.getDest(), MipsRegister.$t0);
        Operand operand1 = result.a;
        instructions.addAll(result.b);

        instructions.add(new ShInstr(operand1, operand2));


        return instructions;
    }

    @Override
    public Deque<PseudoInstruction> visit(SwInstr swInstr) {

        Deque<PseudoInstruction> instructions = new LinkedList<>();

        Pair<Operand, Deque<PseudoInstruction>> result = LW(swInstr.getSrc1(), MipsRegister.$t2);
        Operand operand2 = result.a;
        instructions.addAll(result.b);

        result = LW(swInstr.getDest(), MipsRegister.$t0);
        Operand operand1 = result.a;
        instructions.addAll(result.b);

        instructions.add(new SwInstr(operand1, operand2));

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

    public Pair<Operand, Deque<PseudoInstruction>> LW(Operand operand, MipsRegister mr) {
        Deque<PseudoInstruction> instructions = new LinkedList<>();
        if (operand instanceof TemporaryRegister) {
            MipsRegister real = mr;
            // never appeared reg cannot be in mem
            if (((TemporaryRegister) operand).getHistoryRegister() == null) {
                ((TemporaryRegister) operand).setInRegister(real);
                operand = real;

            } else {
                instructions.add( frameManager.BackFromMem((Register) operand, real) );
                operand = real;
            }
        } else if (operand instanceof MemAddress) {
            int off = ((MemAddress) operand).getOffset();
            Pair<Operand, Deque<PseudoInstruction>> next = LW(((MemAddress) operand).getReg(), mr);
            return new Pair<Operand, Deque<PseudoInstruction>>(new MemAddress((Register) next.a, off), next.b);
        }


        Pair<Operand, Deque<PseudoInstruction>> result = new Pair<>(operand, instructions);
        return result;
    }

}
