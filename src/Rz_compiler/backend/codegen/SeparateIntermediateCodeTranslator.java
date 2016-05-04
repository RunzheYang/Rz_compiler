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
public class SeparateIntermediateCodeTranslator implements Callable<Deque<PseudoInstruction>> {

    private final ParseTree ctx;

    private SymbolTable symbolTable;

    private Map<String, String> stringDic;

    private FrameManager frameManager = new FrameManager(1);

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

        return intermediateCode;
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
