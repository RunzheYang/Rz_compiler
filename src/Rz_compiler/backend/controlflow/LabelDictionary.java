package Rz_compiler.backend.controlflow;

import Rz_compiler.backend.instructions.branch_jump.*;
import Rz_compiler.backend.instructions.visitors.SelectedInstructionVisitor;
import Rz_compiler.backend.operands.Label;

import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;

/**
 * Created by YRZ on 5/3/16.
 */
public class LabelDictionary {

    private final class FalseCallable implements Callable<Boolean> {
        @Override
        public Boolean call() throws Exception {
            return false;
        }
    }

    private final SelectedInstructionVisitor<Boolean> boolVisitor = new SelectedInstructionVisitor<Boolean>(
            new FalseCallable()
    ){
        @Override
        public Boolean visit(BeqInstr beqInstr) {
            return true;
        }

        @Override
        public Boolean visit(BgeInstr bgeInstr) {
            return true;
        }

        @Override
        public Boolean visit(BgtInstr bgtInstr) {
            return true;
        }

        @Override
        public Boolean visit(BInstr bInstr) {
            return true;
        }

        @Override
        public Boolean visit(BleInstr bleInstr) {
            return true;
        }

        @Override
        public Boolean visit(BltInstr bltInstr) {
            return true;
        }

        @Override
        public Boolean visit(BneInstr bneInstr) {
            return true;
        }
    };

    private final Map<Label, CFGNode> labelDic;
    private final Map<CFGNode,Set<CFGNode>> instrs = new HashMap<>();

    public LabelDictionary(Map<Label, CFGNode> labelDic) {
        this.labelDic = labelDic;
    }

    public void add(CFGNode curNode, Set<CFGNode> sucNodes) {
        if (curNode.getInstr().accept(boolVisitor)) {
            instrs.put(curNode, sucNodes);
        }
    }
}
