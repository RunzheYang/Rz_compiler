package Rz_compiler.backend.controlflow;

import Rz_compiler.backend.instructions.PseudoInstruction;

/**
 * Created by YRZ on 5/3/16.
 */
public class CFGNode {

    private final PseudoInstruction instr;

    public CFGNode(PseudoInstruction instr) {
        this.instr = instr;
    }
}
