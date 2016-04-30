package Rz_compiler.backend.codegen;

import Rz_compiler.backend.instructions.AssemblerDirective;
import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.instructions.Syscall;
import Rz_compiler.backend.instructions.arithmetic_logic.*;
import Rz_compiler.backend.instructions.branch_jump.BInstr;
import Rz_compiler.backend.instructions.branch_jump.BeqInstr;
import Rz_compiler.backend.instructions.branch_jump.BneInstr;
import Rz_compiler.backend.instructions.branch_jump.JarInstr;
import Rz_compiler.backend.instructions.comparison.*;
import Rz_compiler.backend.instructions.load_store_move.*;
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
            OptimizedIntermediateCodeTranslator codeGen;
            Deque<PseudoInstruction> globalVar;
            Deque<PseudoInstruction> preInstr;

            codeGen = new OptimizedIntermediateCodeTranslator(program, symbolTable, optLevel);
            Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList = codeGen.predata();

            globalVar = preList.a;
            preInstr = preList.b;

            Map<String, Deque<PseudoInstruction>> fbody = new HashMap<>();
            for (RzParser.Func_defContext func : program.func_def()) {
                codeGen = new OptimizedIntermediateCodeTranslator(func, symbolTable, optLevel);
                fbody.put(func.ident().getText(), codeGen.call());
            }

            if (preInstr.size() != 0) {
                preInstr.addAll(fbody.get("main"));
                fbody.put("main", preInstr);
            }

            instrList.add(new AssemblerDirective(".data"));
            instrList.addAll(globalVar);
            instrList.add(new AssemblerDirective(".text"));
            for (String funcname : fbody.keySet()) {
                instrList.add(new AssemblerDirective(funcname + ":"));
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
            if (instr instanceof MoveInstr) {
                System.err.println("\tmove " + ((MoveInstr) instr).getDest().toString() + ", "
                        + ((MoveInstr) instr).getSrc1().toString());
            }
            if (instr instanceof LiInstr) {
                System.err.println("\tli " + ((LiInstr) instr).getDest().toString() + ", "
                        + ((LiInstr) instr).getSrc1().toString());
            }
            if (instr instanceof LaInstr) {
                System.err.println("\tla " + ((LaInstr) instr).getDest().toString() + ", "
                        + ((LaInstr) instr).getSrc1().toString());
            }
            if (instr instanceof LwInstr) {
                System.err.println("\tlw " + ((LwInstr) instr).getDest().toString() + ", "
                        + ((LwInstr) instr).getSrc1().toString());
            }
            if (instr instanceof SwInstr) {
                System.err.println("\tsw " + ((SwInstr) instr).getDest().toString() + ", "
                        + ((SwInstr) instr).getSrc1().toString());
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
            if (instr instanceof JarInstr) {
                System.err.println("\tjar " + ((JarInstr) instr).getLabel().toString());
            }
            if (instr instanceof NegInstr) {
                System.err.println("\tneg " + ((NegInstr) instr).getDest().toString() + ", "
                        + ((NegInstr) instr).getSrc1().toString());
            }
            if (instr instanceof NotInstr) {
                System.err.println("\tnot " + ((NotInstr) instr).getDest().toString() + ", "
                        + ((NotInstr) instr).getSrc1().toString());
            }
            if (instr instanceof BInstr) {
                System.err.println("\tb " + ((BInstr) instr).getLabel().toString());
            }
            if (instr instanceof AssemblerDirective) {
                System.err.println(instr.toString());
            }
            if (instr instanceof Syscall) {
                System.err.println("\t" + instr.toString());
            }
            if (instr instanceof Label) {
                System.err.println(instr.toString() + ":");
            }
        }

        return "\n----mips assembler directives here----\n";
    }
}
