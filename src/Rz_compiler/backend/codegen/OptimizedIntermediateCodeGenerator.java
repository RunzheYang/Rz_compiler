package Rz_compiler.backend.codegen;

import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.instructions.arithmetic_logic.*;
import Rz_compiler.backend.instructions.branch_jump.BeqInstr;
import Rz_compiler.backend.instructions.branch_jump.BneInstr;
import Rz_compiler.backend.instructions.comparison.*;
import Rz_compiler.backend.instructions.load_store_move.LiInstr;
import Rz_compiler.backend.instructions.load_store_move.MoveInstr;
import Rz_compiler.backend.operands.Label;
import Rz_compiler.frontend.semantics.SymbolTable;
import Rz_compiler.frontend.syntax.RzParser;
import com.sun.org.apache.xpath.internal.operations.And;
import org.antlr.v4.runtime.tree.ParseTree;

import java.util.Deque;
import java.util.concurrent.Callable;

/**
 * Created by YRZ on 4/21/16.
 */
public class OptimizedIntermediateCodeGenerator implements Callable<Deque<PseudoInstruction>> {

    private final ParseTree ctx;
    private final int optLevel;

    private SymbolTable symbolTable;

    public OptimizedIntermediateCodeGenerator(ParseTree ctx, SymbolTable symbolTable , int optLevel) {
        this.ctx = ctx;
        this.symbolTable = symbolTable;
        this.optLevel = optLevel;
    }

    @Override
    public Deque<PseudoInstruction> call() throws Exception {

        System.out.println(((RzParser.Func_defContext) ctx).ident().getText());

        IntermediateCodeGenerator visitor = new IntermediateCodeGenerator(symbolTable);
        Deque<PseudoInstruction> intermediateCode = ctx.accept(visitor);

        // TODO: doOptimization(intermediateCode, optLevel);

        System.err.println("Total #instr = " + intermediateCode.size() + "\n");

        for (PseudoInstruction instr : intermediateCode) {
            if (instr instanceof MoveInstr) {
                System.err.println("\tmove " + ((MoveInstr) instr).getDest().toString() + ", "
                        + ((MoveInstr) instr).getSrc1().toString());
            }
            if (instr instanceof LiInstr) {
                System.err.println("\tli " + ((LiInstr) instr).getDest().toString() + ", "
                        + ((LiInstr) instr).getSrc1().toString());
            }
            if (instr instanceof AndInstr) {
                System.err.println("\tand " + ((AndInstr) instr).getDest().toString() + ", "
                        + ((AndInstr) instr).getSrc1().toString() + ", "
                        + ((AndInstr) instr).getSrc2().toString());
            }
            if (instr instanceof OrInstr) {
                System.err.println("\tor " + ((OrInstr) instr).getDest().toString() + ", "
                        + ((OrInstr) instr).getSrc1().toString() + ", "
                        + ((OrInstr) instr).getSrc2().toString());
            }
            if (instr instanceof XorInstr) {
                System.err.println("\txor " + ((XorInstr) instr).getDest().toString() + ", "
                        + ((XorInstr) instr).getSrc1().toString() + ", "
                        + ((XorInstr) instr).getSrc2().toString());
            }
            if (instr instanceof AddInstr) {
                System.err.println("\tadd " + ((AddInstr) instr).getDest().toString() + ", "
                        + ((AddInstr) instr).getSrc1().toString() + ", "
                        + ((AddInstr) instr).getSrc2().toString());
            }
            if (instr instanceof SubInstr) {
                System.err.println("\tsub " + ((SubInstr) instr).getDest().toString() + ", "
                        + ((SubInstr) instr).getSrc1().toString() + ", "
                        + ((SubInstr) instr).getSrc2().toString());
            }
            if (instr instanceof MulInstr) {
                System.err.println("\tmul " + ((MulInstr) instr).getDest().toString() + ", "
                        + ((MulInstr) instr).getSrc1().toString() + ", "
                        + ((MulInstr) instr).getSrc2().toString());
            }
            if (instr instanceof DivInstr) {
                System.err.println("\tdiv " + ((DivInstr) instr).getDest().toString() + ", "
                        + ((DivInstr) instr).getSrc1().toString() + ", "
                        + ((DivInstr) instr).getSrc2().toString());
            }
            if (instr instanceof RemInstr) {
                System.err.println("\trem " + ((RemInstr) instr).getDest().toString() + ", "
                        + ((RemInstr) instr).getSrc1().toString() + ", "
                        + ((RemInstr) instr).getSrc2().toString());
            }
            if (instr instanceof SllInstr) {
                System.err.println("\tsll " + ((SllInstr) instr).getDest().toString() + ", "
                        + ((SllInstr) instr).getSrc1().toString() + ", "
                        + ((SllInstr) instr).getSrc2().toString());
            }
            if (instr instanceof SraInstr) {
                System.err.println("\tsra " + ((SraInstr) instr).getDest().toString() + ", "
                        + ((SraInstr) instr).getSrc1().toString() + ", "
                        + ((SraInstr) instr).getSrc2().toString());
            }
            if (instr instanceof SgeInstr) {
                System.err.println("\tsge " + ((SgeInstr) instr).getDest().toString() + ", "
                        + ((SgeInstr) instr).getSrc1().toString() + ", "
                        + ((SgeInstr) instr).getSrc2().toString());
            }
            if (instr instanceof SgtInstr) {
                System.err.println("\tsgt " + ((SgtInstr) instr).getDest().toString() + ", "
                        + ((SgtInstr) instr).getSrc1().toString() + ", "
                        + ((SgtInstr) instr).getSrc2().toString());
            }
            if (instr instanceof SleInstr) {
                System.err.println("\tsle " + ((SleInstr) instr).getDest().toString() + ", "
                        + ((SleInstr) instr).getSrc1().toString() + ", "
                        + ((SleInstr) instr).getSrc2().toString());
            }
            if (instr instanceof SltInstr) {
                System.err.println("\tslt " + ((SltInstr) instr).getDest().toString() + ", "
                        + ((SltInstr) instr).getSrc1().toString() + ", "
                        + ((SltInstr) instr).getSrc2().toString());
            }
            if (instr instanceof SeqInstr) {
                System.err.println("\tseq " + ((SeqInstr) instr).getDest().toString() + ", "
                        + ((SeqInstr) instr).getSrc1().toString() + ", "
                        + ((SeqInstr) instr).getSrc2().toString());
            }
            if (instr instanceof SneInstr) {
                System.err.println("\tsne " + ((SneInstr) instr).getDest().toString() + ", "
                        + ((SneInstr) instr).getSrc1().toString() + ", "
                        + ((SneInstr) instr).getSrc2().toString());
            }
            if (instr instanceof BeqInstr) {
                System.err.println("\tbeq " + ((BeqInstr) instr).getDest().toString() + ", "
                        + ((BeqInstr) instr).getSrc1().toString() + ", "
                        + ((BeqInstr) instr).getSrc2().toString());
            }
            if (instr instanceof BneInstr) {
                System.err.println("\tbne " + ((BneInstr) instr).getDest().toString() + ", "
                        + ((BneInstr) instr).getSrc1().toString() + ", "
                        + ((BneInstr) instr).getSrc2().toString());
            }
            if (instr instanceof Label) {
                System.err.println(instr.toString() + ":");
            }
        }

        return intermediateCode;
    }
}
