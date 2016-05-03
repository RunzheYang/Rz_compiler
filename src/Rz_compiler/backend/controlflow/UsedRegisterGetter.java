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
public class UsedRegisterGetter implements InstructionVisitor<List<Register>> {

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
            return memAddress.getReg().accpet(this);
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
        List<Register> regList = absInstr.getSrc1().accpet(new RegisterGetter());
        regList.addAll(absInstr.getSrc2().accpet(new RegisterGetter()));
        return regList;
    }

    @Override
    public List<Register> visit(AddInstr addInstr) {
        List<Register> regList = addInstr.getSrc1().accpet(new RegisterGetter());
        regList.addAll(addInstr.getSrc2().accpet(new RegisterGetter()));
        return regList;
    }

    @Override
    public List<Register> visit(AndInstr andInstr) {
        List<Register> regList = andInstr.getSrc1().accpet(new RegisterGetter());
        regList.addAll(andInstr.getSrc2().accpet(new RegisterGetter()));
        return regList;
    }

    @Override
    public List<Register> visit(DivInstr divInstr) {
        List<Register> regList = divInstr.getSrc1().accpet(new RegisterGetter());
        regList.addAll(divInstr.getSrc2().accpet(new RegisterGetter()));
        return regList;
    }

    @Override
    public List<Register> visit(MulInstr mulInstr) {
        List<Register> regList = mulInstr.getSrc1().accpet(new RegisterGetter());
        regList.addAll(mulInstr.getSrc2().accpet(new RegisterGetter()));
        return regList;
    }

    @Override
    public List<Register> visit(NegInstr negInstr) {
        List<Register> regList = negInstr.getSrc1().accpet(new RegisterGetter());
        regList.addAll(negInstr.getSrc2().accpet(new RegisterGetter()));
        return regList;
    }

    @Override
    public List<Register> visit(NorInstr norInstr) {
        List<Register> regList = norInstr.getSrc1().accpet(new RegisterGetter());
        regList.addAll(norInstr.getSrc2().accpet(new RegisterGetter()));
        return regList;
    }

    @Override
    public List<Register> visit(NotInstr notInstr) {
        List<Register> regList = notInstr.getSrc1().accpet(new RegisterGetter());
        regList.addAll(notInstr.getSrc2().accpet(new RegisterGetter()));
        return regList;
    }

    @Override
    public List<Register> visit(OrInstr orInstr) {
        List<Register> regList =orInstr.getSrc1().accpet(new RegisterGetter());
        regList.addAll(orInstr.getSrc2().accpet(new RegisterGetter()));
        return regList;
    }

    @Override
    public List<Register> visit(RemInstr remInstr) {
        List<Register> regList = remInstr.getSrc1().accpet(new RegisterGetter());
        regList.addAll(remInstr.getSrc2().accpet(new RegisterGetter()));
        return regList;
    }

    @Override
    public List<Register> visit(RolInstr rolInstr) {
        List<Register> regList = rolInstr.getSrc1().accpet(new RegisterGetter());
        regList.addAll(rolInstr.getSrc2().accpet(new RegisterGetter()));
        return regList;
    }

    @Override
    public List<Register> visit(SllInstr sllInstr) {
        List<Register> regList = sllInstr.getSrc1().accpet(new RegisterGetter());
        regList.addAll(sllInstr.getSrc2().accpet(new RegisterGetter()));
        return regList;
    }

    @Override
    public List<Register> visit(SraInstr sraInstr) {
        List<Register> regList = sraInstr.getSrc1().accpet(new RegisterGetter());
        regList.addAll(sraInstr.getSrc2().accpet(new RegisterGetter()));
        return regList;
    }

    @Override
    public List<Register> visit(SrlInstr srlInstr) {
        List<Register> regList = srlInstr.getSrc1().accpet(new RegisterGetter());
        regList.addAll(srlInstr.getSrc2().accpet(new RegisterGetter()));
        return regList;
    }

    @Override
    public List<Register> visit(SubInstr subInstr) {
        List<Register> regList = subInstr.getSrc1().accpet(new RegisterGetter());
        regList.addAll(subInstr.getSrc2().accpet(new RegisterGetter()));
        return regList;
    }

    @Override
    public List<Register> visit(XorInstr xorInstr) {
        List<Register> regList = xorInstr.getSrc1().accpet(new RegisterGetter());
        regList.addAll(xorInstr.getSrc2().accpet(new RegisterGetter()));
        return regList;
    }

    @Override
    public List<Register> visit(BeqInstr beqInstr) {
        List<Register> regList = beqInstr.getDest().accpet(new RegisterGetter());
        regList.addAll(beqInstr.getSrc1().accpet(new RegisterGetter()));
        regList.addAll(beqInstr.getSrc2().accpet(new RegisterGetter()));
        return regList;
    }

    @Override
    public List<Register> visit(BgeInstr bgeInstr) {
        List<Register> regList = bgeInstr.getDest().accpet(new RegisterGetter());
        regList.addAll(bgeInstr.getSrc1().accpet(new RegisterGetter()));
        regList.addAll(bgeInstr.getSrc2().accpet(new RegisterGetter()));
        return regList;
    }

    @Override
    public List<Register> visit(BgtInstr bgtInstr) {
        List<Register> regList = bgtInstr.getDest().accpet(new RegisterGetter());
        regList.addAll(bgtInstr.getSrc1().accpet(new RegisterGetter()));
        regList.addAll(bgtInstr.getSrc2().accpet(new RegisterGetter()));
        return regList;
    }

    @Override
    public List<Register> visit(BInstr bInstr) {
        return new LinkedList<>();
    }

    @Override
    public List<Register> visit(BleInstr bleInstr) {
        return null;
    }

    @Override
    public List<Register> visit(BltInstr bltInstr) {
        return null;
    }

    @Override
    public List<Register> visit(BneInstr bneInstr) {
        return null;
    }

    @Override
    public List<Register> visit(JalInstr jalInstr) {
        return null;
    }

    @Override
    public List<Register> visit(JrInstr jrInstr) {
        return null;
    }

    @Override
    public List<Register> visit(SeqInstr seqInstr) {
        return null;
    }

    @Override
    public List<Register> visit(SgeInstr sgeInstr) {
        return null;
    }

    @Override
    public List<Register> visit(SgtInstr sgtInstr) {
        return null;
    }

    @Override
    public List<Register> visit(SleInstr sleInstr) {
        return null;
    }

    @Override
    public List<Register> visit(SltInstr sltInstr) {
        return null;
    }

    @Override
    public List<Register> visit(SneInstr sneInstr) {
        return null;
    }

    @Override
    public List<Register> visit(LaInstr laInstr) {
        return null;
    }

    @Override
    public List<Register> visit(LbInstr lbInstr) {
        return null;
    }

    @Override
    public List<Register> visit(LhInstr lhInstr) {
        return null;
    }

    @Override
    public List<Register> visit(LiInstr liInstr) {
        return null;
    }

    @Override
    public List<Register> visit(LwInstr lwInstr) {
        return null;
    }

    @Override
    public List<Register> visit(MoveInstr moveInstr) {
        return null;
    }

    @Override
    public List<Register> visit(SbInstr sbInstr) {
        return null;
    }

    @Override
    public List<Register> visit(ShInstr shInstr) {
        return null;
    }

    @Override
    public List<Register> visit(SwInstr swInstr) {
        return null;
    }

    @Override
    public List<Register> visit(Syscall syscall) {
        return null;
    }

    @Override
    public List<Register> visit(AssemblerDirective assemblerDirective) {
        return null;
    }

    @Override
    public List<Register> visit(Label label) {
        return null;
    }
}
