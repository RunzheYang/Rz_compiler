package Rz_compiler.backend.controlflow;

import Rz_compiler.backend.instructions.AssemblerDirective;
import Rz_compiler.backend.instructions.MipsInstruction;
import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.instructions.branch_jump.*;
import Rz_compiler.backend.instructions.visitors.SelectedInstructionVisitor;
import Rz_compiler.backend.operands.Label;
import Rz_compiler.backend.operands.Register;
import Rz_compiler.backend.operands.TemporaryRegister;

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

    private Set<Register> allRegisters;

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

        dictionary.addAllJump();
    }


    public Set<Register> getAllRegisters() {
        return allRegisters;
    }


    public Map<CFGNode, Set<Register>> getLiveOut() {

        Map<CFGNode,Set<Register>> liveIn = new HashMap<>();
        Map<CFGNode,Set<Register>> liveOut = new HashMap<>();

        Map<CFGNode,Set<Register>> prevLiveIn = new HashMap<>();
        Map<CFGNode,Set<Register>> prevLiveOut = new HashMap<>();

        for(CFGNode node : this) {
            Set<Register> set1 = new HashSet<Register>();
            Set<Register> set2 = new HashSet<Register>();
            liveIn.put(node, set1);
            liveOut.put(node, set2);
            prevLiveIn.put(node, new HashSet<>(set1));
            prevLiveOut.put(node, new HashSet<>(set2));
        }

        Set<Register> liveInN;
        Set<Register> liveOutN;
        Set<Register> tmp;
        Set<CFGNode> succN;
        allRegisters = new HashSet<Register>();

        do {
            for(CFGNode n : this) {
                liveInN = liveIn.get(n);
                liveOutN = liveOut.get(n);

                //FROM TEXTBOOK

                //LiveIn(n) = uses(n) U (LiveOut(n) - defs(n))
                liveInN.addAll(n.uses);
                tmp = new HashSet<Register>(liveOutN);
                tmp.removeAll(n.defs);
                liveInN.addAll(tmp);

                //	LiveOut(n) = Us elem succ(n) LiveIn(s);
                succN = this.getAdjacent(n);
                for(CFGNode sn : succN) {
                    liveOutN.addAll(liveIn.get(sn));
                }

                //allRegisters.addAll(liveOutN);
                allRegisters.addAll(n.defs);
                allRegisters.addAll(n.uses);
            }
        } while (isChanged(liveIn, prevLiveIn) || isChanged(liveOut, prevLiveOut));

        // lable unuseful instruction && prepare for smart caller
        for(CFGNode n : this) {
            if (n.defs.size() == 1 && n.getInstr() instanceof MipsInstruction) {
                if (n.defs.get(0) instanceof TemporaryRegister && !liveOut.get(n).contains(n.defs.get(0))) {
                    ((MipsInstruction) n.getInstr()).unUseful();
                }
            }
            if (n.getInstr() instanceof JalInstr) {
                ((JalInstr) n.getInstr()).setNeedSave(liveIn.get(n));
            }
        }

        //System.err.println(liveOut);

        return liveOut;
    }

    int sameCnt = 0;
    private <T, E> boolean isChanged(Map<T, Set<E>> graph, Map<T, Set<E>> prevGraph) {
        if (isEqual(graph, prevGraph)) {
            sameCnt++;
        } else {
            sameCnt = 0;
        }

        for (T node : graph.keySet()) {
            prevGraph.get(node).addAll(graph.get(node));
        }

        return sameCnt < 5;
    }
}
