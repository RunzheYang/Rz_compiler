package Rz_compiler.backend.instructions.visitors;

import Rz_compiler.backend.instructions.AssemblerDirective;
import Rz_compiler.backend.instructions.arithmetic_logic.*;
import Rz_compiler.backend.instructions.branch_jump.*;
import Rz_compiler.backend.instructions.comparison.*;
import Rz_compiler.backend.instructions.load_store_move.*;

import java.util.List;

/**
 * Created by YRZ on 4/23/16.
 */
public interface InstructionVisitor<T> {

    T visit(AbsInstr absInstr);

    T visit(AddInstr addInstr);

    T visit(AndInstr andInstr);

    T visit(DivInstr divInstr);

    T visit(MulInstr mulInstr);

    T visit(NegInstr negInstr);

    T visit(NorInstr norInstr);

    T visit(NotInstr notInstr);

    T visit(OrInstr orInstr);

    T visit(RemInstr remInstr);

    T visit(RolInstr rolInstr);

    T visit(SllInstr sllInstr);

    T visit(SraInstr sraInstr);

    T visit(SrlInstr srlInstr);

    T visit(SubInstr subInstr);

    T visit(XorInstr xorInstr);

    T visit(BeqInstr beqInstr);

    T visit(BgeInstr bgeInstr);

    T visit(BgtInstr bgtInstr);

    T visit(BInstr bInstr);

    T visit(BleInstr bleInstr);

    T visit(BltInstr bltInstr);

    T visit(BneInstr bneInstr);

    T visit(JarInstr jarInstr);

    T visit(JrInstr jrInstr);

    T visit(SeqInstr seqInstr);

    T visit(SgeInstr sgeInstr);

    T visit(SgtInstr sgtInstr);

    T visit(SleInstr sleInstr);

    T visit(SltInstr sltInstr);

    T visit(SneInstr sneInstr);

    T visit(LaInstr laInstr);

    T visit(LbInstr lbInstr);

    T visit(LhInstr lhInstr);

    T visit(LiInstr liInstr);

    T visit(LwInstr lwInstr);

    T visit(MoveInstr moveInstr);

    T visit(SbInstr sbInstr);

    T visit(ShInstr shInstr);

    T visit(SwInstr swInstr);

    T visit(AssemblerDirective assemblerDirective);
}
