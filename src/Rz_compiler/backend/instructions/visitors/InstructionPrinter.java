package Rz_compiler.backend.instructions.visitors;

import Rz_compiler.backend.instructions.AssemblerDirective;
import Rz_compiler.backend.instructions.Syscall;
import Rz_compiler.backend.instructions.arithmetic_logic.*;
import Rz_compiler.backend.instructions.branch_jump.*;
import Rz_compiler.backend.instructions.comparison.*;
import Rz_compiler.backend.instructions.load_store_move.*;
import Rz_compiler.backend.operands.Label;

/**
 * Created by YRZ on 5/3/16.
 */
public class InstructionPrinter implements InstructionVisitor<String> {
    @Override
    public String visit(AbsInstr absInstr) {
        return "\tabs " + absInstr.getDest().toString() + ", "
                + absInstr.getSrc1().toString() + ", "
                + absInstr.getSrc2().toString();
    }

    @Override
    public String visit(AddInstr addInstr) {
        return "\tadd " + addInstr.getDest().toString() + ", "
                + addInstr.getSrc1().toString() + ", "
                + addInstr.getSrc2().toString();
    }

    @Override
    public String visit(AndInstr andInstr) {
        return "\tand " + andInstr.getDest().toString() + ", "
                + andInstr.getSrc1().toString() + ", "
                + andInstr.getSrc2().toString();
    }

    @Override
    public String visit(DivInstr divInstr) {
        return "\tdiv " + divInstr.getDest().toString() + ", "
                + divInstr.getSrc1().toString() + ", "
                + divInstr.getSrc2().toString();
    }

    @Override
    public String visit(MulInstr mulInstr) {
        return "\tmul " + mulInstr.getDest().toString() + ", "
                + mulInstr.getSrc1().toString() + ", "
                + mulInstr.getSrc2().toString();
    }

    @Override
    public String visit(NegInstr negInstr) {
        return "\tneg " + negInstr.getDest().toString() + ", "
                + negInstr.getSrc1().toString();
    }

    @Override
    public String visit(NorInstr norInstr) {
        return "\tnor " + norInstr.getDest().toString() + ", "
                + norInstr.getSrc1().toString() + ", "
                + norInstr.getSrc2().toString();
    }

    @Override
    public String visit(NotInstr notInstr) {
        return "\tnot " + notInstr.getDest().toString() + ", "
                + notInstr.getSrc1().toString();
    }

    @Override
    public String visit(OrInstr orInstr) {
        return "\tor " + orInstr.getDest().toString() + ", "
                + orInstr.getSrc1().toString() + ", "
                + orInstr.getSrc2().toString();
    }

    @Override
    public String visit(RemInstr remInstr) {
        return "\trem " + remInstr.getDest().toString() + ", "
                + remInstr.getSrc1().toString() + ", "
                + remInstr.getSrc2().toString();
    }

    @Override
    public String visit(RolInstr rolInstr) {
        return "\trol " + rolInstr.getDest().toString() + ", "
                + rolInstr.getSrc1().toString() + ", "
                + rolInstr.getSrc2().toString();
    }

    @Override
    public String visit(SllInstr sllInstr) {
        return "\tsll " + sllInstr.getDest().toString() + ", "
                + sllInstr.getSrc1().toString() + ", "
                + sllInstr.getSrc2().toString();
    }

    @Override
    public String visit(SraInstr sraInstr) {
        return "\tsra " + sraInstr.getDest().toString() + ", "
                + sraInstr.getSrc1().toString() + ", "
                + sraInstr.getSrc2().toString();
    }

    @Override
    public String visit(SrlInstr srlInstr) {
        return "\tsrl " + srlInstr.getDest().toString() + ", "
                + srlInstr.getSrc1().toString() + ", "
                + srlInstr.getSrc2().toString();
    }

    @Override
    public String visit(SubInstr subInstr) {
        return "\tsub " + subInstr.getDest().toString() + ", "
                + subInstr.getSrc1().toString() + ", "
                + subInstr.getSrc2().toString();
    }

    @Override
    public String visit(XorInstr xorInstr) {
        return "\txor " + xorInstr.getDest().toString() + ", "
                + xorInstr.getSrc1().toString() + ", "
                + xorInstr.getSrc2().toString();
    }

    @Override
    public String visit(BeqInstr beqInstr) {
        return "\tbeq " + beqInstr.getDest().toString() + ", "
                + beqInstr.getSrc1().toString() + ", "
                + beqInstr.getSrc2().toString();
    }

    @Override
    public String visit(BgeInstr bgeInstr) {
        return "\tbge " + bgeInstr.getDest().toString() + ", "
                + bgeInstr.getSrc1().toString() + ", "
                + bgeInstr.getSrc2().toString();
    }

    @Override
    public String visit(BgtInstr bgtInstr) {
        return "\tbeq " + bgtInstr.getDest().toString() + ", "
                + bgtInstr.getSrc1().toString() + ", "
                + bgtInstr.getSrc2().toString();
    }

    @Override
    public String visit(BInstr bInstr) {
        return "\tb " + bInstr.getLabel().toString();
    }

    @Override
    public String visit(BleInstr bleInstr) {
        return "\tble " + bleInstr.getDest().toString() + ", "
                + bleInstr.getSrc1().toString() + ", "
                + bleInstr.getSrc2().toString();
    }

    @Override
    public String visit(BltInstr bltInstr) {
        return "\tblt " + bltInstr.getDest().toString() + ", "
                + bltInstr.getSrc1().toString() + ", "
                + bltInstr.getSrc2().toString();
    }

    @Override
    public String visit(BneInstr bneInstr) {
        return "\tbne " + bneInstr.getDest().toString() + ", "
                + bneInstr.getSrc1().toString() + ", "
                + bneInstr.getSrc2().toString();
    }

    @Override
    public String visit(JalInstr jalInstr) {
        return "\tjal " + jalInstr.getLabel().toString();
    }

    @Override
    public String visit(JrInstr jrInstr) {
        return "\tjr " + jrInstr.getrSrc().toString();
    }

    @Override
    public String visit(SeqInstr seqInstr) {
        return "\tseq " + seqInstr.getDest().toString() + ", "
                + seqInstr.getSrc1().toString() + ", "
                + seqInstr.getSrc2().toString();
    }

    @Override
    public String visit(SgeInstr sgeInstr) {
        return "\tsge " + sgeInstr.getDest().toString() + ", "
                + sgeInstr.getSrc1().toString() + ", "
                + sgeInstr.getSrc2().toString();
    }

    @Override
    public String visit(SgtInstr sgtInstr) {
        return "\tsgt " + sgtInstr.getDest().toString() + ", "
                + sgtInstr.getSrc1().toString() + ", "
                + sgtInstr.getSrc2().toString();
    }

    @Override
    public String visit(SleInstr sleInstr) {
        return "\tsle " + sleInstr.getDest().toString() + ", "
                + sleInstr.getSrc1().toString() + ", "
                + sleInstr.getSrc2().toString();
    }

    @Override
    public String visit(SltInstr sltInstr) {
        return "\tslt " + sltInstr.getDest().toString() + ", "
                + sltInstr.getSrc1().toString() + ", "
                + sltInstr.getSrc2().toString();
    }

    @Override
    public String visit(SneInstr sneInstr) {
        return "\tsne " + sneInstr.getDest().toString() + ", "
                + sneInstr.getSrc1().toString() + ", "
                + sneInstr.getSrc2().toString();
    }

    @Override
    public String visit(LaInstr laInstr) {
        return "\tla " + laInstr.getDest().toString() + ", "
                + laInstr.getSrc1().toString();
    }

    @Override
    public String visit(LbInstr lbInstr) {
        return "\tlb " + lbInstr.getDest().toString() + ", "
                + lbInstr.getSrc1().toString();
    }

    @Override
    public String visit(LhInstr lhInstr) {
        return "\tlh " + lhInstr.getDest().toString() + ", "
                + lhInstr.getSrc1().toString();
    }

    @Override
    public String visit(LiInstr liInstr) {
        return "\tli " + liInstr.getDest().toString() + ", "
                + liInstr.getSrc1().toString();
    }

    @Override
    public String visit(LwInstr lwInstr) {
        return "\tlw " + lwInstr.getDest().toString() + ", "
                + lwInstr.getSrc1().toString();
    }

    @Override
    public String visit(MoveInstr moveInstr) {
        return "\tmove " + moveInstr.getDest().toString() + ", "
                + moveInstr.getSrc1().toString();
    }

    @Override
    public String visit(SbInstr sbInstr) {
        return "\tsb " + sbInstr.getDest().toString() + ", "
                + sbInstr.getSrc1().toString();
    }

    @Override
    public String visit(ShInstr shInstr) {
        return "\tsh " + shInstr.getDest().toString() + ", "
                + shInstr.getSrc1().toString();
    }

    @Override
    public String visit(SwInstr swInstr) {
        return "\tsw " + swInstr.getDest().toString() + ", "
                + swInstr.getSrc1().toString();
    }

    @Override
    public String visit(Syscall syscall) {
        return "\t" + syscall.toString();
    }

    @Override
    public String visit(AssemblerDirective assemblerDirective) {
        return assemblerDirective.toString();
    }

    @Override
    public String visit(Label label) {
        return label.toString() + ":";
    }

}


