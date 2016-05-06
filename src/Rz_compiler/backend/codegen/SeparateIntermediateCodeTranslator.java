package Rz_compiler.backend.codegen;

import Rz_compiler.backend.allocation.FrameManager;
import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.frontend.semantics.SymbolTable;
import org.antlr.v4.runtime.misc.Pair;
import org.antlr.v4.runtime.tree.ParseTree;

import java.util.*;
import java.util.concurrent.Callable;

/**
 * Created by YRZ on 4/21/16.
 */
public class SeparateIntermediateCodeTranslator implements Callable<Deque<PseudoInstruction>> {

    private final ParseTree ctx;

    private SymbolTable symbolTable;

    private Map<String, String> stringDic;

    private FrameManager frameManager = new FrameManager(1);

    private int argOff = 0;

    public SeparateIntermediateCodeTranslator(ParseTree ctx, SymbolTable symbolTable,
                                              Map<String, String> stringDic) {
        this.ctx = ctx;
        this.symbolTable = symbolTable;
        this.stringDic = stringDic;
    }

    @Override
    public Deque<PseudoInstruction> call() throws Exception {
        IntermediateCodeTranslator visitor = new IntermediateCodeTranslator(symbolTable, stringDic);
        Deque<PseudoInstruction> intermediateCode = null;
        try {
            intermediateCode = ctx.accept(visitor);
        } catch (Exception err) {
            err.printStackTrace();
        }

        argOff = visitor.getSpillArgCnt();

        return intermediateCode;
    }

    public int getArgOff() {
        return argOff;
    }

    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> predata() {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList = null;
        PreIntermediateCodeTranslator visitor = new PreIntermediateCodeTranslator(symbolTable, stringDic);
        try {
            preList = ctx.accept(visitor);
        } catch (Exception err) {
            err.printStackTrace();
        }

        return preList;
    }
}
