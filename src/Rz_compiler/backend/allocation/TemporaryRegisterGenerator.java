package Rz_compiler.backend.allocation;

import Rz_compiler.backend.operands.TemporaryRegister;

/**
 * Created by YRZ on 4/24/16.
 */
public class TemporaryRegisterGenerator {
    private static int cnt = 0;

    public TemporaryRegister generate() {
        return new TemporaryRegister(cnt++);
    }
}
