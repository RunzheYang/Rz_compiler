package Rz_compiler.backend.controlflow;

import Rz_compiler.backend.instructions.AssemblerDirective;
import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.instructions.branch_jump.*;
import Rz_compiler.backend.instructions.visitors.SelectedInstructionVisitor;
import Rz_compiler.backend.operands.Label;

import java.util.*;
import java.util.concurrent.Callable;

/**
 * Created by YRZ on 5/3/16.
 */
public class ControlFlowGraph extends AbstractGraph<CFGNode> {

    private final SelectedInstructionVisitor<Label> labelVisitor = new SelectedInstructionVisitor<Label>(
            new Callable<Label>(){
                @Override
                public Label call() throws Exception {
                    return null;
                }
            }
    ) {
        @Override
        public Label visit(Label label) {
            return label;
        }
    };

    private final SelectedInstructionVisitor<Boolean> isNextInstructionExecuted = new SelectedInstructionVisitor<Boolean>(
            new Callable<Boolean>(){
                @Override
                public Boolean call() throws Exception {
                    return true;
                }
            }
    ){
        @Override
        public Boolean visit(BInstr bInstr) {
            return false;
        }

        @Override
        public Boolean visit(JrInstr jrInstr) {
            return false;
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



    public ControlFlowGraph(Deque<PseudoInstruction> instrList) {
        super();
        Iterator<PseudoInstruction> iterator = instrList.descendingIterator();
        Map<Label, CFGNode> labelDic = new HashMap<>();
        LabelDictionary dictionary = new LabelDictionary(labelDic);

        PseudoInstruction curInstr;
        CFGNode preNode = null;
        CFGNode curNode = null;
        Set<CFGNode> sucNodes;

        Label label = null;

        int id = 0;
        while (iterator.hasNext()) {
            curInstr = iterator.next();

            label = curInstr.accept(labelVisitor);

            if(label != null) {
                if(preNode == null) {
                    preNode = new CFGNode(id, new AssemblerDirective(""));
                    this.addNode(preNode, new HashSet<CFGNode>());
                    id++;
                }
                labelDic.put(label, preNode);
                continue;
            }

            curNode = new CFGNode(id, curInstr);
            sucNodes = new HashSet<>();
            if (preNode != null && curInstr.accept(isNextInstructionExecuted)) {
                sucNodes.add(preNode);
            }
            Label toLabel = curInstr.accept(getLabelofJump);
            if (toLabel != null) {
                sucNodes.add(labelDic.get(toLabel));
            }
            dictionary.add(curNode, sucNodes);
            this.addNode(curNode, sucNodes);
            preNode = curNode;
            id++;
        }
    }
}
