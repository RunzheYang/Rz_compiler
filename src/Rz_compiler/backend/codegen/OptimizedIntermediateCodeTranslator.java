package Rz_compiler.backend.codegen;

import Rz_compiler.backend.allocation.FrameManager;
import Rz_compiler.backend.allocation.RegisterAllocator;
import Rz_compiler.backend.controlflow.ControlFlowGraph;
import Rz_compiler.backend.controlflow.DefinedRegisterGetter;
import Rz_compiler.backend.controlflow.UsedRegisterGetter;
import Rz_compiler.backend.instructions.AssemblerDirective;
import Rz_compiler.backend.instructions.MipsInstruction;
import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.instructions.arithmetic_logic.AbsInstr;
import Rz_compiler.backend.instructions.arithmetic_logic.AddInstr;
import Rz_compiler.backend.instructions.arithmetic_logic.SubInstr;
import Rz_compiler.backend.interference.IGColouration;
import Rz_compiler.backend.interference.InterferenceGraph;
import Rz_compiler.backend.operands.ImmediateValue;
import Rz_compiler.backend.operands.MipsRegister;
import Rz_compiler.backend.operands.Operand;
import Rz_compiler.backend.operands.Register;
import Rz_compiler.frontend.semantics.SymbolTable;
import org.antlr.v4.runtime.misc.Pair;
import org.antlr.v4.runtime.tree.ParseTree;

import java.util.*;
import java.util.concurrent.Callable;

/**
 * Created by YRZ on 4/21/16.
 */
public class OptimizedIntermediateCodeTranslator implements Callable<Deque<PseudoInstruction>> {

    private final ParseTree ctx;
    private final int optLevel;

    private SymbolTable symbolTable;

    private Map<String, String> stringDic;

    private FrameManager frameManager = new FrameManager(1);

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

        if (optLevel == -1) {
            ControlFlowGraph cfg = new ControlFlowGraph(intermediateCode);
            //System.err.println(cfg);
            InterferenceGraph ig = new InterferenceGraph(cfg);
            //System.err.println(ig);
            //IGColouration igc = new IGColouration(ig);
            intermediateCode = simpleRegisterAllocation(intermediateCode, ig);
        }

        return intermediateCode;
    }

    private Deque<PseudoInstruction> simpleRegisterAllocation(Deque<PseudoInstruction> intermediateCode,
                                                              InterferenceGraph ig) {
        Deque<PseudoInstruction> alloCode = new ArrayDeque<>();
        RegisterAllocator registerAllocator = new RegisterAllocator(ig, frameManager);

        for (PseudoInstruction ps : intermediateCode) {
            if (ps instanceof MipsInstruction && !((MipsInstruction) ps).isUseful()) {
                continue;
            }
            alloCode.addAll(ps.accept(registerAllocator));
        }

        //Correct the SP MOVE
        Deque<PseudoInstruction> finalCode = new ArrayDeque<>();
        for (PseudoInstruction ps : alloCode) {
            if (ps instanceof AddInstr
                    && ((AddInstr) ps).getDest().toString().equals("$sp")
                    && ((AddInstr) ps).getSrc1().toString().equals("$sp")) {
                ps = new AddInstr(MipsRegister.$sp, MipsRegister.$sp, new ImmediateValue(frameManager.getOffset()));
            } else if (ps instanceof SubInstr
                    && ((SubInstr) ps).getDest().toString().equals("$sp")
                    && ((SubInstr) ps).getSrc1().toString().equals("$sp")) {
                ps = new SubInstr(MipsRegister.$sp, MipsRegister.$sp, new ImmediateValue(frameManager.getOffset()));
            }
            finalCode.add(ps);
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
