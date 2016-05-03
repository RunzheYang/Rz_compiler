package Rz_compiler.backend.interference;

import Rz_compiler.backend.controlflow.AbstractGraph;
import Rz_compiler.backend.controlflow.CFGNode;
import Rz_compiler.backend.controlflow.ControlFlowGraph;
import Rz_compiler.backend.operands.MipsRegister;
import Rz_compiler.backend.operands.Register;

import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * Created by YRZ on 5/3/16.
 */
public class InterferenceGraph extends AbstractGraph<IGNode> {

    public InterferenceGraph(ControlFlowGraph cfg) {
        this(cfg.getLiveOut(), cfg.getAllRegisters());
    }

    public InterferenceGraph(Map<CFGNode, Set<Register>> liveOutDic, Set<Register> allRegisters) {

        for (Register reg : allRegisters) {
            for (CFGNode node : liveOutDic.keySet()) {
                Set<Register> liveOut = liveOutDic.get(node);
                if (liveOut.contains(reg)) {
                    this.addNode(IGNode.getIGNodeforRegister(reg),
                            registersToNodes(liveOut, reg));
                } else {
                    //useless register
                    this.addNode(IGNode.getIGNodeforRegister(reg), new HashSet<IGNode>());
                }
            }
        }
        this.remove(IGNode.getIGNodeforRegister(MipsRegister.$ra));
        this.remove(IGNode.getIGNodeforRegister(MipsRegister.$zero));
        this.remove(IGNode.getIGNodeforRegister(MipsRegister.$sp));
    }

    private Set<IGNode> registersToNodes(Set<Register> regSet, Register reg) {
        Set<IGNode> igNodes = new HashSet<>();
        for (Register r : regSet) {
            if (r != reg) {
                igNodes.add(IGNode.getIGNodeforRegister(r));
            }
        }
        return igNodes;
    }
}
