package Rz_compiler.backend.interference;

import Rz_compiler.backend.operands.Register;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by YRZ on 5/3/16.
 */
public class IGNode  {

    private int color = -1;

    private Register reg;

    private static Map<Register, IGNode> registersMapped = new HashMap<>();

    public IGNode(Register reg) {
        this.reg = reg;
    }

    public static IGNode getIGNodeforRegister(Register reg) {
        if (registersMapped.containsKey(reg)) {
            return registersMapped.get(reg);
        } else {
            IGNode node = new IGNode(reg);
            registersMapped.put(reg, node);
            return node;
        }
    }

    public void setColor(int color) {
        this.color = color;
    }

    public boolean isColored() {
        return color != -1;
    }

    public Register getReg() {
        return reg;
    }

    public int getColor() {
        return color;
    }

    @Override
    public String toString() {
        return reg.toString();
    }
}
