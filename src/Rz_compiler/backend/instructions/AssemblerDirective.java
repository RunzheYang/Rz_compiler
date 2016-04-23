package Rz_compiler.backend.instructions;

import Rz_compiler.backend.instructions.PseudoInstruction;

/**
 * Created by YRZ on 4/23/16.
 */
public class AssemblerDirective implements PseudoInstruction {

    private String directive;

    public AssemblerDirective(String directive) {
        this.directive = directive;
    }
}
