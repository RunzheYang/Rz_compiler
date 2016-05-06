package Rz_compiler.backend.allocation;

import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.instructions.load_store_move.LaInstr;
import Rz_compiler.backend.instructions.load_store_move.LwInstr;
import Rz_compiler.backend.instructions.load_store_move.SwInstr;
import Rz_compiler.backend.operands.*;
import Rz_compiler.frontend.semantics.SymbolTable;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * Created by YRZ on 5/4/16.
 */
public class FrameManager {
    private int offset = 0;
    Map<Register, Operand> varMemDic = new HashMap<>();

    Set<Register> regUseInFrame = new HashSet<>();

    public FrameManager(int startoffset) {
        this.offset = startoffset;
    }

    public PseudoInstruction CastToMem(Register reg) {
        if (reg instanceof TemporaryRegister && reg.isGlobal()) {

            Register real  = ((TemporaryRegister) reg).isInRegister();
            if (real != null) {
                ((TemporaryRegister) reg).leaveRegister();
                varMemDic.put(reg, ((TemporaryRegister) reg).getGlobalMem());

                return new SwInstr(real, ((TemporaryRegister) reg).getGlobalMem());
            } else {
                throw new RuntimeException("CANNOT!");
            }

        } else if (reg instanceof TemporaryRegister) {

            Register real  = ((TemporaryRegister) reg).isInRegister();
            if (real != null) {
                ((TemporaryRegister) reg).leaveRegister();
                Operand memAddress = varMemDic.get(reg);

                //if not be cast before
                if (memAddress == null || !(memAddress instanceof MemAddress)) {
                    memAddress = new MemAddress(MipsRegister.$sp, 4 * (this.offset++));
                }

                varMemDic.put(reg, memAddress);

                return new SwInstr(real, memAddress);
            } else {
                throw new RuntimeException("CANNOT!");
            }
        }
        // return null if there is a real register to be cast;
        return null;
    }


    public PseudoInstruction BackFromMem(Register reg, Register newTarget) {

        Operand memAdd = varMemDic.get(reg);
        if (memAdd instanceof Label) {
            return new LaInstr(newTarget, memAdd);
        } else if (memAdd instanceof MemAddress) {
            return new LwInstr(newTarget, memAdd);
        }
        //return null if we cannot find it in frame
        return null;
    }

    public int getOffset() {
        return offset * 4;
    }

    public void recordNewReg(Register reg) {
        regUseInFrame.add(reg);
    }

    public Set<Register> getRegUseInFrame() {
        return regUseInFrame;
    }
}
