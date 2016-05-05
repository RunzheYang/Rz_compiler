package Rz_compiler.backend.codegen;

import Rz_compiler.backend.allocation.FrameManager;
import Rz_compiler.backend.allocation.RegisterAllocator;
import Rz_compiler.backend.controlflow.ControlFlowGraph;
import Rz_compiler.backend.instructions.AssemblerDirective;
import Rz_compiler.backend.instructions.MipsInstruction;
import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.instructions.arithmetic_logic.*;
import Rz_compiler.backend.instructions.visitors.InstructionPrinter;
import Rz_compiler.backend.interference.InterferenceGraph;
import Rz_compiler.backend.operands.ImmediateValue;
import Rz_compiler.backend.operands.MipsRegister;
import Rz_compiler.frontend.semantics.SymbolTable;
import Rz_compiler.frontend.syntax.RzParser;
import org.antlr.v4.runtime.misc.Pair;

import java.util.*;

/**
 * Created by YRZ on 4/21/16.
 */
public class CodeGenerator {

    private final RzParser.ProgContext program;

    private SymbolTable symbolTable;

    public static boolean hasToString = false;

    public static boolean hasStringAdd = false;

    public static boolean hasLabelStringCopy = false;

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

            SeparateIntermediateCodeTranslator codeGen;
            Deque<PseudoInstruction> globalVar;
            Deque<PseudoInstruction> preInstr;

            codeGen = new SeparateIntermediateCodeTranslator(program, symbolTable, stringDic);
            Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList = codeGen.predata();

            globalVar = preList.a;
            preInstr = preList.b;

            Map<String, Deque<PseudoInstruction>> fbody = new HashMap<>();
            for (RzParser.Func_defContext func : program.func_def()) {
                codeGen = new SeparateIntermediateCodeTranslator(func, symbolTable, stringDic);
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
                instrList.addAll(allocateRegisters(fbody.get(funcname), optLevel));
            }

        } catch (Exception error) {
            error.printStackTrace();
//            System.err.println(error.getMessage());
//            System.exit(1);
        }

        return printInstr(instrList, optLevel);
    }

    public String printInstr(Deque<PseudoInstruction> instrList, int optLevel) {
        // TODO: translate pseudo-instruction to assembly.
        String finalcode = "";
//        System.err.println("Total #instr = " + instrList.size() + "\n");

        for (PseudoInstruction instr : instrList) {
            finalcode += instr.accept(new InstructionPrinter()) + "\n";
        }

        if (hasToString) {
            finalcode += new MipsLibrary().func_toString + "\n";
        }

        if (hasStringAdd) {
            finalcode += new MipsLibrary().func_stringConcatenate + "\n";
        }

        if (hasLabelStringCopy) {
            finalcode += new MipsLibrary().label_stringCopy + "\n";
        }

        return finalcode;
    }

    private Deque<PseudoInstruction> allocateRegisters(Deque<PseudoInstruction> intermediateCode, int optLevel) {

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
        FrameManager frameManager = new FrameManager(1);
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
}
