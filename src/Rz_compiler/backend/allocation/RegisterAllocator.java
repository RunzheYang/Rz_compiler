package Rz_compiler.backend.allocation;

import Rz_compiler.backend.instructions.AssemblerDirective;
import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.instructions.Syscall;
import Rz_compiler.backend.instructions.arithmetic_logic.*;
import Rz_compiler.backend.instructions.branch_jump.*;
import Rz_compiler.backend.instructions.comparison.*;
import Rz_compiler.backend.instructions.load_store_move.*;
import Rz_compiler.backend.instructions.visitors.InstructionVisitor;
import Rz_compiler.backend.operands.Label;

import java.util.Deque;

/**
 * Created by YRZ on 5/1/16.
 */
public class RegisterAllocator implements InstructionVisitor<Deque<PseudoInstruction>> {

    @Override
    public Deque<PseudoInstruction> visit(AbsInstr absInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(AddInstr addInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(AndInstr andInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(DivInstr divInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(MulInstr mulInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(NegInstr negInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(NorInstr norInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(NotInstr notInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(OrInstr orInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(RemInstr remInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(RolInstr rolInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(SllInstr sllInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(SraInstr sraInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(SrlInstr srlInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(SubInstr subInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(XorInstr xorInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(BeqInstr beqInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(BgeInstr bgeInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(BgtInstr bgtInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(BInstr bInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(BleInstr bleInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(BltInstr bltInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(BneInstr bneInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(JarInstr jarInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(JrInstr jrInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(SeqInstr seqInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(SgeInstr sgeInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(SgtInstr sgtInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(SleInstr sleInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(SltInstr sltInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(SneInstr sneInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(LaInstr laInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(LbInstr lbInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(LhInstr lhInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(LiInstr liInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(LwInstr lwInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(MoveInstr moveInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(SbInstr sbInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(ShInstr shInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(SwInstr swInstr) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(Syscall syscall) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(AssemblerDirective assemblerDirective) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visit(Label label) {
        return null;
    }
}
