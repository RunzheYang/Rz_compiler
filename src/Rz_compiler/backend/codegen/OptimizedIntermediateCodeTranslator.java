package Rz_compiler.backend.codegen;

import Rz_compiler.backend.allocation.RegisterAllocator;
import Rz_compiler.backend.controlflow.ControlFlowGraph;
import Rz_compiler.backend.instructions.AssemblerDirective;
import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.frontend.semantics.SymbolTable;
import org.antlr.v4.runtime.misc.Pair;
import org.antlr.v4.runtime.tree.ParseTree;

import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Map;
import java.util.concurrent.Callable;

/**
 * Created by YRZ on 4/21/16.
 */
public class OptimizedIntermediateCodeTranslator implements Callable<Deque<PseudoInstruction>> {

    private final ParseTree ctx;
    private final int optLevel;

    private SymbolTable symbolTable;

    private Map<String, String> stringDic;

    private RegisterAllocator registerAllocator = new RegisterAllocator();

    public OptimizedIntermediateCodeTranslator(ParseTree ctx, SymbolTable symbolTable,
                                               Map<String, String> stringDic, int optLevel) {
        this.ctx = ctx;
        this.symbolTable = symbolTable;
        this.stringDic = stringDic;
        this.optLevel = optLevel;
    }

    @Override
    public Deque<PseudoInstruction> call() throws Exception {
        IntermediateCodeTranslator visitor = new IntermediateCodeTranslator(symbolTable, stringDic);
        Deque<PseudoInstruction> intermediateCode = null;
        try {
            intermediateCode = ctx.accept(visitor);

            intermediateCode = doOptimization(intermediateCode, optLevel);
            
        } catch (Exception err) {
            err.printStackTrace();
//            System.err.println(err.getMessage());
        }

        // TODO: doOptimization(intermediateCode, optLevel);

        return intermediateCode;
    }

    private Deque<PseudoInstruction> doOptimization(Deque<PseudoInstruction> intermediateCode, int optLevel) {

        if (optLevel == 0) {
            return simpleRegisterAllocation(intermediateCode);
        }

        if (optLevel == -1) {
            ControlFlowGraph cfg = new ControlFlowGraph(intermediateCode);
            System.err.println(cfg);
        }

        return intermediateCode;
    }

    private Deque<PseudoInstruction> simpleRegisterAllocation(Deque<PseudoInstruction> intermediateCode) {
        Deque<PseudoInstruction> finalCode = new ArrayDeque<PseudoInstruction>();
        for (PseudoInstruction ps : intermediateCode) {
            finalCode.addAll(ps.accept(registerAllocator));
        }
        return finalCode;
    }

    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> predata() {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList = null;
        PreIntermediateCodeTranslator visitor = new PreIntermediateCodeTranslator(symbolTable, stringDic);
        try {
            preList = ctx.accept(visitor);
        } catch (Exception err) {
            err.printStackTrace();
//            System.err.println(err.getMessage());
        }
        return preList;
    }
}
