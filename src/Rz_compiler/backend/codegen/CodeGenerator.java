package Rz_compiler.backend.codegen;

import Rz_compiler.backend.instructions.AssemblerDirective;
import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.instructions.Syscall;
import Rz_compiler.backend.instructions.arithmetic_logic.*;
import Rz_compiler.backend.instructions.branch_jump.*;
import Rz_compiler.backend.instructions.comparison.*;
import Rz_compiler.backend.instructions.load_store_move.*;
import Rz_compiler.backend.instructions.visitors.InstructionPrinter;
import Rz_compiler.backend.operands.Label;
import Rz_compiler.frontend.semantics.SymbolTable;
import Rz_compiler.frontend.syntax.RzParser;
import org.antlr.v4.runtime.misc.Pair;

import java.util.Deque;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

/**
 * Created by YRZ on 4/21/16.
 */
public class CodeGenerator {

    private final RzParser.ProgContext program;

    private SymbolTable symbolTable;

    public static boolean hasToString = false;

    public CodeGenerator(RzParser.ProgContext program, SymbolTable symbolTable) {
        this.program = program;
        this.symbolTable = symbolTable;
    }

    public String compile(int optLevel) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        try {

            // TODO: add instructions here.
//            instrList.add(...);

            // TODO add global variables and string constant here.
            Deque<PseudoInstruction> globalString;
            StringConstGetter scGet = new StringConstGetter();
            globalString = program.accept(scGet);
            Map<String, String> stringDic = scGet.getStringConsts();

            OptimizedIntermediateCodeTranslator codeGen;
            Deque<PseudoInstruction> globalVar;
            Deque<PseudoInstruction> preInstr;

            codeGen = new OptimizedIntermediateCodeTranslator(program, symbolTable, stringDic, optLevel);
            Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList = codeGen.predata();

            globalVar = preList.a;
            preInstr = preList.b;

            Map<String, Deque<PseudoInstruction>> fbody = new HashMap<>();
            for (RzParser.Func_defContext func : program.func_def()) {
                codeGen = new OptimizedIntermediateCodeTranslator(func, symbolTable, stringDic, optLevel);
                fbody.put(func.ident().getText(), codeGen.call());
            }

            if (preInstr.size() != 0) {
                preInstr.addAll(fbody.get("main"));
                fbody.put("main", preInstr);
            }

            instrList.add(new AssemblerDirective(".data"));
            instrList.add(new AssemblerDirective(".align 2"));
            instrList.addAll(globalString);
            instrList.addAll(globalVar);
            instrList.add(new AssemblerDirective(".text"));
            for (String funcname : fbody.keySet()) {
                if (!funcname.equals("main")) {
                    instrList.add(new AssemblerDirective("f_" + funcname + ":"));
                } else {
                    instrList.add(new AssemblerDirective(funcname + ":"));
                }
                instrList.addAll(fbody.get(funcname));
            }

        } catch (Exception error) {
            error.printStackTrace();
//            System.err.println(error.getMessage());
            System.exit(1);
        }

        return printInstr(instrList, optLevel);
    }

    public String printInstr(Deque<PseudoInstruction> instrList, int optLevel) {
        // TODO: translate pseudo-instruction to assembly.

        System.err.println("Total #instr = " + instrList.size() + "\n");

        for (PseudoInstruction instr : instrList) {
            System.err.println(instr.accept(new InstructionPrinter()));
        }

        if (hasToString) {
            System.err.println(new MipsLibrary().func_toString);
        }

        return "\n----mips assembler directives here----\n";
    }
}
