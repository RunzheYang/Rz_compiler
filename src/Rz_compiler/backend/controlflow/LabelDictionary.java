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

    private final SelectedInstructionVisitor<Label> getLabelofJump = new SelectedInstructionVisitor<Label>(
            new Callable<Label>(){
                @Override
                public Label call() throws Exception {
                    return null;
                }
            }
    ){
        @Override
        public Label visit(BInstr bInstr) {
            return bInstr.getLabel();
        }

        @Override
        public Label visit(BeqInstr beqInstr) {
            return (Label) beqInstr.getSrc2();
        }

        @Override
        public Label visit(BgeInstr bgeInstr) {
            return (Label) bgeInstr.getSrc2();
        }

        @Override
        public Label visit(BgtInstr bgtInstr) {
            return (Label) bgtInstr.getSrc2();
        }

        @Override
        public Label visit(BleInstr bleInstr) {
            return (Label) bleInstr.getSrc2();
        }

        @Override
        public Label visit(BltInstr bltInstr) {
            return (Label) bltInstr.getSrc2();
        }

        @Override
        public Label visit(BneInstr bneInstr) {
            return (Label) bneInstr.getSrc2();
        }

        @Override
        public Label visit(JalInstr jalInstr) {
            return jalInstr.getLabel();
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

    public void addAllJump() {
        CFGNode next;
        int cnt = 0;
        for (CFGNode node : instrs.keySet()) {
            next = labelDic.get(node.getInstr().accept(getLabelofJump));
            if (next != null)
                instrs.get(node).add(next);
        }
    }
}
