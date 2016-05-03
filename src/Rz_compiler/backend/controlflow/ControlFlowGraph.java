package Rz_compiler.backend.controlflow;

import Rz_compiler.backend.instructions.AssemblerDirective;
import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.instructions.branch_jump.BInstr;
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
            dictionary.add(curNode, sucNodes);
            this.addNode(curNode, sucNodes);
            preNode = curNode;
            id++;
        }
    }
}
