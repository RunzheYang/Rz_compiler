package Rz_compiler.backend.controlflow;

import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.instructions.visitors.InstructionPrinter;
import Rz_compiler.backend.operands.Register;

import java.util.LinkedList;
import java.util.List;

/**
 * Created by YRZ on 5/3/16.
 */
public class CFGNode {

    private final PseudoInstruction instr;

    private final int id;

    List<Register> defs = new LinkedList<>();
    List<Register> uses = new LinkedList<>();

    public CFGNode(int id, PseudoInstruction instr) {
        this.id = id;
        this.instr = instr;
        defs = instr.accept(new DefinedRegisterGetter());
        uses = instr.accept(new UsedRegisterGetter());
    }

    public PseudoInstruction getInstr() {
        return instr;
    }

    public List<Register> getDefs() {
        return defs;
    }

    public List<Register> getUses() {
        return uses;
    }

    public int getId() {
        return id;
    }

    @Override
    public String toString() {
        return instr.accept(new InstructionPrinter());
    }
}
