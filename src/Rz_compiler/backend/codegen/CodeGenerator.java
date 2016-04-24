package Rz_compiler.backend.codegen;

import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.frontend.semantics.SymbolTable;
import Rz_compiler.frontend.syntax.RzParser;

import java.util.Deque;
import java.util.LinkedList;

/**
 * Created by YRZ on 4/21/16.
 */
public class CodeGenerator {
    private final RzParser.ProgContext program;

    private SymbolTable symbolTable;

    public CodeGenerator(RzParser.ProgContext program, SymbolTable symbolTable) {
        this.program = program;
        this.symbolTable = symbolTable;
    }

    public String compile(int optLevel) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        try {

            // TODO: add instructions here.
//            instrList.add(...);

            Deque<PseudoInstruction> frame;
            OptimizedIntermediateCodeGenerator codeGen;
            for (RzParser.Func_defContext func : program.func_def()) {
                codeGen = new OptimizedIntermediateCodeGenerator(func, symbolTable, optLevel);
                frame = codeGen.call();
            }

        } catch (Exception error) {
            error.printStackTrace();
            System.err.println(error.getMessage());
            System.exit(1);
        }
        return printInstr(instrList, optLevel);
    }

    public String printInstr(Deque<PseudoInstruction> instrList, int optLevel) {
        // TODO: translate pseudo-instruction to assembly.
        return "\n----mips assembler directives here----\n";
    }
}
