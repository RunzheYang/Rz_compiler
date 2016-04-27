package Rz_compiler.backend.codegen;

import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.instructions.arithmetic_logic.AddInstr;
import Rz_compiler.backend.instructions.arithmetic_logic.SubInstr;
import Rz_compiler.backend.instructions.load_store_move.LiInstr;
import Rz_compiler.backend.instructions.load_store_move.MoveInstr;
import Rz_compiler.frontend.semantics.SymbolTable;
import Rz_compiler.frontend.semantics.identifier.Variable;
import Rz_compiler.frontend.syntax.RzParser;
import org.antlr.v4.runtime.ParserRuleContext;
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
                System.err.println("move " + ((MoveInstr) instr).getDest().toString() + ", "
                        + ((MoveInstr) instr).getSrc1().toString());
            }
            if (instr instanceof LiInstr) {
                System.err.println("li " + ((LiInstr) instr).getDest().toString() + ", "
                        + ((LiInstr) instr).getSrc1().toString());
            }
            if (instr instanceof AddInstr) {
                System.err.println("add " + ((AddInstr) instr).getDest().toString() + ", "
                        + ((AddInstr) instr).getSrc1().toString() + ", "
                        + ((AddInstr) instr).getSrc2().toString());
            }
            if (instr instanceof SubInstr) {
                System.err.println("sub " + ((SubInstr) instr).getDest().toString() + ", "
                        + ((SubInstr) instr).getSrc1().toString() + ", "
                        + ((SubInstr) instr).getSrc2().toString());
            }
        }

        return intermediateCode;
    }
}
