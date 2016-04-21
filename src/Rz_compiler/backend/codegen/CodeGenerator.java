package Rz_compiler.backend.codegen;

import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.frontend.syntax.RzParser;

import java.util.Deque;
import java.util.LinkedList;

/**
 * Created by YRZ on 4/21/16.
 */
public class CodeGenerator {
    private final RzParser.ProgContext program;

    public CodeGenerator(RzParser.ProgContext program) {
        this.program = program;
    }

    public String compile(int optLevel) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        try {
            Deque<PseudoInstruction> frame;
            OptimizedIntermediateCodeGenerator codeGen;
            for (RzParser.Func_defContext func : program.func_def()) {
                codeGen = new OptimizedIntermediateCodeGenerator(func, optLevel);
                frame = codeGen.call();
            }


        } catch (Exception error) {
            System.err.println(error.getMessage());
            System.exit(1);
        }
        return "here";
    }
}
