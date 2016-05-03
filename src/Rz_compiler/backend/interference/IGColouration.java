package Rz_compiler.backend.interference;

import Rz_compiler.backend.allocation.RegisterMapping;
import Rz_compiler.backend.operands.*;

import java.util.HashSet;
import java.util.Set;

/**
 * Created by YRZ on 5/3/16.
 */
public class IGColouration {

    private final int MAX_REGS = 18;

    private InterferenceGraph ig;

    public IGColouration(InterferenceGraph ig) {
        this.ig = ig;
    }

    public boolean dye(int k, int numSpilled) {
        int currentColor = 100 * MAX_REGS;
        for (IGNode node : findMipsRegister()) {
            node.setColor(currentColor++);
        }

        currentColor = 1;

        return false;
    }

    private Set<IGNode> findMipsRegister() {
        Set<IGNode> mipsRegisterNodes = new HashSet<>();

        for (IGNode node : ig) {
            if (isMipsRegister(node)) {
                mipsRegisterNodes.add(node);
            }
        }
        return mipsRegisterNodes;
    }

    private boolean isMipsRegister(IGNode node) {
        return node.getReg().accpet(new OperandVisitor<Boolean>() {
            @Override
            public Boolean visit(MipsRegister mipsReg) {
                return true;
            }

            @Override
            public Boolean visit(TemporaryRegister tempReg) {
                return false;
            }

            @Override
            public Boolean visit(ImmediateValue immediate) {
                return false;
            }

            @Override
            public Boolean visit(MemAddress memAddress) {
                return memAddress.getReg().accpet(this);
            }

            @Override
            public Boolean visit(Label label) {
                return false;
            }

            @Override
            public Boolean visit(NoOperand noOperand) {
                return false;
            }
        });
    }

    public RegisterMapping generateTemperateRegisterMappings(int k, boolean useSpilledRegisterFromStart) {
        return new RegisterMapping();
    }
}
