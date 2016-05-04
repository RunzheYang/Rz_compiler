package Rz_compiler.backend.instructions.branch_jump;

import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.instructions.visitors.InstructionVisitor;
import Rz_compiler.backend.operands.Label;
import Rz_compiler.backend.operands.Register;

import java.util.HashMap;
import java.util.Set;

/**
 * Created by YRZ on 4/23/16.
 */
public class JalInstr implements PseudoInstruction {

    private Label label;

    private Set<Register> needSave = null;

    public Set<Register> getNeedSave() {
        return needSave;
    }

    public void setNeedSave(Set<Register> needSave) {
        this.needSave = needSave;
    }

    public JalInstr(Label label) {
        this.label = label;
    }

    public Label getLabel() {
        return label;
    }

    @Override
    public <T> T accept(InstructionVisitor<T> visitor) {
        return visitor.visit(this);
    }
}
