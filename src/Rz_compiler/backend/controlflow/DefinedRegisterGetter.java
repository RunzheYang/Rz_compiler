package Rz_compiler.backend.controlflow;

import Rz_compiler.backend.instructions.AssemblerDirective;
import Rz_compiler.backend.instructions.Syscall;
import Rz_compiler.backend.instructions.arithmetic_logic.*;
import Rz_compiler.backend.instructions.branch_jump.*;
import Rz_compiler.backend.instructions.comparison.*;
import Rz_compiler.backend.instructions.load_store_move.*;
import Rz_compiler.backend.instructions.visitors.InstructionVisitor;
import Rz_compiler.backend.operands.*;

import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by YRZ on 5/3/16.
 */
public class DefinedRegisterGetter implements InstructionVisitor<List<Register>> {

    private class RegisterGetter implements OperandVisitor<List<Register>> {
        @Override
        public List<Register> visit(MipsRegister mipsReg) {
            return new LinkedList<Register>(Arrays.asList((Register) mipsReg));
        }

        @Override
        public List<Register> visit(TemporaryRegister tempReg) {
            return new LinkedList<Register>(Arrays.asList((Register) tempReg));
        }

        @Override
        public List<Register> visit(ImmediateValue immediate) {
            return new LinkedList<Register>();
        }

        @Override
        public List<Register> visit(MemAddress memAddress) {
            return memAddress.getReg().accept(this);
        }

        @Override
        public List<Register> visit(Label label) {
            return new LinkedList<Register>();
        }

        @Override
        public List<Register> visit(NoOperand noOperand) {
            return new LinkedList<Register>();
        }
    }

    @Override
    public List<Register> visit(AbsInstr absInstr) {
        return absInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(AddInstr addInstr) {
        return addInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(AndInstr andInstr) {
        return andInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(DivInstr divInstr) {
        return divInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(MulInstr mulInstr) {
        return mulInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(NegInstr negInstr) {
        return negInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(NorInstr norInstr) {
        return norInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(NotInstr notInstr) {
        return notInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(OrInstr orInstr) {
        return orInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(RemInstr remInstr) {
        return remInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(RolInstr rolInstr) {
        return rolInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(SllInstr sllInstr) {
        return sllInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(SraInstr sraInstr) {
        return sraInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(SrlInstr srlInstr) {
        return srlInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(SubInstr subInstr) {
        return subInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(XorInstr xorInstr) {
        return xorInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(BeqInstr beqInstr) {
        return new LinkedList<>();
    }

    @Override
    public List<Register> visit(BgeInstr bgeInstr) {
        return new LinkedList<>();
    }

    @Override
    public List<Register> visit(BgtInstr bgtInstr) {
        return new LinkedList<>();
    }

    @Override
    public List<Register> visit(BInstr bInstr) {
        return new LinkedList<>();
    }

    @Override
    public List<Register> visit(BleInstr bleInstr) {
        return new LinkedList<>();
    }

    @Override
    public List<Register> visit(BltInstr bltInstr) {
        return new LinkedList<>();
    }

    @Override
    public List<Register> visit(BneInstr bneInstr) {
        return new LinkedList<>();
    }

    @Override
    public List<Register> visit(JalInstr jalInstr) {
        return new LinkedList<>();
    }

    @Override
    public List<Register> visit(JrInstr jrInstr) {
        return new LinkedList<>();
    }

    @Override
    public List<Register> visit(SeqInstr seqInstr) {
        return seqInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(SgeInstr sgeInstr) {
        return sgeInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(SgtInstr sgtInstr) {
        return sgtInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(SleInstr sleInstr) {
        return sleInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(SltInstr sltInstr) {
        return sltInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(SneInstr sneInstr) {
        return sneInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(LaInstr laInstr) {
        return laInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(LbInstr lbInstr) {
        return lbInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(LhInstr lhInstr) {
        return lhInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(LiInstr liInstr) {
        return liInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(LwInstr lwInstr) {
        return lwInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(MoveInstr moveInstr) {
        return moveInstr.getDest().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(SbInstr sbInstr) {
        return sbInstr.getSrc1().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(ShInstr shInstr) {
        return shInstr.getSrc1().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(SwInstr swInstr) {
        return swInstr.getSrc1().accept(new RegisterGetter());
    }

    @Override
    public List<Register> visit(Syscall syscall) {
        return new LinkedList<>();
    }

    @Override
    public List<Register> visit(AssemblerDirective assemblerDirective) {
        return new LinkedList<>();
    }

    @Override
    public List<Register> visit(Label label) {
        return new LinkedList<>();
    }
}
