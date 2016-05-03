package Rz_compiler.backend.instructions.visitors;

import Rz_compiler.backend.instructions.AssemblerDirective;
import Rz_compiler.backend.instructions.Syscall;
import Rz_compiler.backend.instructions.arithmetic_logic.*;
import Rz_compiler.backend.instructions.branch_jump.*;
import Rz_compiler.backend.instructions.comparison.*;
import Rz_compiler.backend.instructions.load_store_move.*;
import Rz_compiler.backend.operands.Label;

import java.util.concurrent.Callable;

/**
 * Created by YRZ on 5/3/16.
 */
public class SelectedInstructionVisitor<T> implements InstructionVisitor<T> {

    private Callable<T> func;

    public SelectedInstructionVisitor(Callable<T> func) {
        this.func = func;
    }

    @Override
    public T visit(AbsInstr absInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(AddInstr addInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(AndInstr andInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(DivInstr divInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(MulInstr mulInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(NegInstr negInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(NorInstr norInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(NotInstr notInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(OrInstr orInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(RemInstr remInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(RolInstr rolInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(SllInstr sllInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(SraInstr sraInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(SrlInstr srlInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(SubInstr subInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(XorInstr xorInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(BeqInstr beqInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(BgeInstr bgeInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(BgtInstr bgtInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(BInstr bInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(BleInstr bleInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(BltInstr bltInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(BneInstr bneInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(JalInstr jalInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(JrInstr jrInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(SeqInstr seqInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(SgeInstr sgeInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(SgtInstr sgtInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(SleInstr sleInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(SltInstr sltInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(SneInstr sneInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(LaInstr laInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(LbInstr lbInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(LhInstr lhInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(LiInstr liInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(LwInstr lwInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(MoveInstr moveInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(SbInstr sbInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(ShInstr shInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(SwInstr swInstr) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(Syscall syscall) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(AssemblerDirective assemblerDirective) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }

    @Override
    public T visit(Label label) {
        try {
            return func.call();
        } catch (Exception err) {
            throw new RuntimeException(err);
        }
    }
}
