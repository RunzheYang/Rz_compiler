package Rz_compiler.backend.codegen;

import Rz_compiler.backend.allocation.TemporaryRegisterGenerator;
import Rz_compiler.backend.instructions.AssemblerDirective;
import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.instructions.Syscall;
import Rz_compiler.backend.instructions.arithmetic_logic.*;
import Rz_compiler.backend.instructions.branch_jump.BeqInstr;
import Rz_compiler.backend.instructions.branch_jump.BneInstr;
import Rz_compiler.backend.instructions.branch_jump.JalInstr;
import Rz_compiler.backend.instructions.comparison.*;
import Rz_compiler.backend.instructions.load_store_move.*;
import Rz_compiler.backend.operands.*;
import Rz_compiler.frontend.semantics.SymbolTable;
import Rz_compiler.frontend.semantics.TypeAnalyser;
import Rz_compiler.frontend.semantics.identifier.*;
import Rz_compiler.frontend.syntax.RzParser;
import Rz_compiler.frontend.syntax.RzVisitor;
import org.antlr.v4.runtime.misc.Pair;
import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.RuleNode;
import org.antlr.v4.runtime.tree.TerminalNode;

import java.util.Deque;
import java.util.LinkedList;
import java.util.Map;

/**
 * Created by YRZ on 4/30/16.
 */
public class PreIntermediateCodeTranslator implements RzVisitor<Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>>> {

    private final int WORD_SIZE = 4;

    private TypeAnalyser tpa;
    private SymbolTable symt;
    private Map<String, String> stringDic;

    private int varcnt = 0;

    private TemporaryRegisterGenerator trg = new TemporaryRegisterGenerator();

    private Operand returnOperand = null;
    private Operand returnOperandAddress = null;

    private int new_space = 0;

    public PreIntermediateCodeTranslator(SymbolTable symt, Map<String, String>  stringDic) {
        this.symt = symt;
        this. stringDic = stringDic;
        tpa = new TypeAnalyser();
    }

    private String generate_space() {
        return "pool_" + new_space++;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitProg(RzParser.ProgContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        for (int i = 0; i < ctx.getChildCount(); ++i) {
            Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> next
                    = ctx.getChild(i).accept(this);
            preList.a.addAll(next.a);
            preList.b.addAll(next.b);
        }
        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitFunc_def(RzParser.Func_defContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitVar_decl(RzParser.Var_declContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());

        String varname = ctx.init_declarator().ident().getText();
        Type vartype = tpa.getTypeofType(ctx.type(), symt);

        Variable var = (Variable) (new Variable(vartype)).setGlobal("var_" + (varcnt++));

        symt.add(varname, var);
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> next
                = ctx.init_declarator().accept(this);
        preList.a.addAll(next.a);
        preList.b.addAll(next.b);

        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitClass_decl(RzParser.Class_declContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitParam_list(RzParser.Param_listContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitMember_decl_list(RzParser.Member_decl_listContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitInit_declarator(RzParser.Init_declaratorContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());

        if (ctx.getChildCount() > 1) {
            Identifier var = symt.lookup(ctx.ident().getText());

            if (ctx.initializer().expr().assign_expr().expression() instanceof RzParser.CREATIONContext
                    && ((Variable) var).getType() instanceof ClassType
                    && ((RzParser.CREATIONContext) ctx.initializer().expr()
                    .assign_expr().expression()).creation_expr() instanceof RzParser.NEWCLASSTYPEContext) {
                String pool = generate_space();
                preList.a.add(new AssemblerDirective(pool + ":\t.space\t"
                        + ((ClassType) ((Variable) var).getType()).getOffSet()));
                preList.a.add(new AssemblerDirective(var.getName() + ":\t.word\t"
                        + pool));
                returnOperandAddress = new Label(var.getName());
                return preList;

            }  else {
                preList.b.addAll(ctx.initializer().accept(this).b);
            }

            Operand rhsReg = returnOperand;

            Register varReg = symt.lookup(ctx.ident().getText()).getRegister();

            if (rhsReg instanceof Register) {
                if (varReg == null) {
                    if (var instanceof Variable) {
                        if (((Variable) var).getType().equals(new IntType())) {
                            varReg = trg.generate();
                        } else {
                            varReg = trg.generate().setMem();
                        }
                    }
                    symt.lookup(ctx.ident().getText()).setRegister((TemporaryRegister) varReg);
                }
                assert varReg != null;
                if (varReg.isContainValue() == ((Register) rhsReg).isContainValue()) {
                    if (((Variable) var).getType().equals(new IntType())) {
                        preList.a.add(new AssemblerDirective(var.getName() + ":\t.word\t" + 0));
                        preList.b.add(new MoveInstr(varReg, rhsReg));
                    } else {
                        if (ctx.initializer().expr().assign_expr().expression() instanceof RzParser.CREATIONContext
                                && ((RzParser.CREATIONContext) ctx.initializer().expr()
                                .assign_expr().expression()).creation_expr() instanceof RzParser.NEWCLASSTYPEContext) {
                            if (((Variable) var).getType() instanceof ClassType) {
                                String pool = generate_space();
                                preList.a.add(new AssemblerDirective(pool + ":\t.space\t"
                                        + ((ClassType) ((Variable) var).getType()).getOffSet()));
                                preList.a.add(new AssemblerDirective(var.getName() + ":\t.word\t"
                                        + pool));
                            } else {
                                preList.a.add(new AssemblerDirective(var.getName() + ":\t.word\t" + 0));
                                preList.b.add(new MoveInstr(varReg, rhsReg));
                            }
                        } else {
                            preList.a.add(new AssemblerDirective(var.getName() + ":\t.word\t" + 0));
                            preList.b.add(new MoveInstr(varReg, rhsReg));
                        }
                    }
                    returnOperandAddress = new Label(var.getName());
                } else if (varReg.isContainValue()) {
                    throw new RuntimeException("Runtime Error: Assign memory address to value or vise");
                }

            } else {
                if (((Variable) var).getType().equals(new IntType())) {
                    preList.a.add(new AssemblerDirective(var.getName() + ":\t.word\t"
                            + ((ImmediateValue) rhsReg).getValue()));
                } else {
                    if (rhsReg instanceof ImmediateValue && ((ImmediateValue) rhsReg).getValue() == 0) {
                        preList.a.add(new AssemblerDirective(var.getName() + ":\t.word\t" + 0));
                        if (varReg != null) {
                            ((TemporaryRegister) varReg).setMem();
                        }
                    }
                    if (rhsReg instanceof Label) {
                        preList.a.add(new AssemblerDirective(var.getName() + ":\t.word\t" + rhsReg.toString()));
                    }
                }
            }

            if (returnOperandAddress != null && varReg != null) {
                if (returnOperandAddress instanceof Register) {
                    preList.b.add(new SwInstr(varReg, new MemAddress((Register) returnOperandAddress, 0)));
                } else if (returnOperandAddress instanceof Label) {
                    preList.b.add(new SwInstr(varReg, returnOperandAddress));
                }
            }

            returnOperand = varReg;


        } else {
            Identifier var = symt.lookup(ctx.ident().getText());
            if (var instanceof Variable) {
                preList.a.add(new AssemblerDirective(var.getName() + ":\t.word\t" + 0));
            }
        }

        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitInitializer(RzParser.InitializerContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> next = ctx.expr().accept(this);
        preList.a.addAll(next.a);
        preList.b.addAll(next.b);
        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitCLASSTYPE(RzParser.CLASSTYPEContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitBASETYPE(RzParser.BASETYPEContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitARRAYTYPE(RzParser.ARRAYTYPEContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitIdent(RzParser.IdentContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitEnter_scope(RzParser.Enter_scopeContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitExit_scope(RzParser.Exit_scopeContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitStmt(RzParser.StmtContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitExpr_stmt(RzParser.Expr_stmtContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitCompound_stmt(RzParser.Compound_stmtContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitSelec_stmt(RzParser.Selec_stmtContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitIteration_stmt(RzParser.Iteration_stmtContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitContinue_jump(RzParser.Continue_jumpContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitBreak_jump(RzParser.Break_jumpContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitReturn_jump(RzParser.Return_jumpContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitExpr(RzParser.ExprContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> next = ctx.assign_expr().accept(this);
        preList.a.addAll(next.a);
        preList.b.addAll(next.b);
        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitAssign_expr(RzParser.Assign_exprContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        if (ctx.getChildCount() > 1) {
            preList.b.addAll(ctx.assign_expr().accept(this).b);
            Operand rhsReg = returnOperand;

            preList.b.addAll(ctx.unary_expr().accept(this).b);
            Operand lhsReg = returnOperand;

            if (lhsReg == null) {
                Type type = tpa.getTypeofUnaryExpr(ctx.unary_expr(), symt);
                if (type.equals(new IntType())) {
                    lhsReg = trg.generate();
                } else {
                    lhsReg = trg.generate().setMem();
                }
                tpa.getIdentofUnaryExpr(ctx.unary_expr(), symt).setRegister((TemporaryRegister) lhsReg);
            }

            if (rhsReg instanceof Register
                    && ((Register) rhsReg).isContainValue() == ((Register) lhsReg).isContainValue() ) {
                preList.b.add(new MoveInstr(lhsReg, rhsReg));
            } else {
                if (((Register) lhsReg).isContainValue()) {
                    preList.b.add(new LiInstr(lhsReg, rhsReg));
                } else {
                    if (rhsReg instanceof ImmediateValue && ((ImmediateValue) rhsReg).getValue() == 0) {
                        preList.b.add(new LiInstr(lhsReg, rhsReg));
                        ((TemporaryRegister) lhsReg).setMem();
                    } else if (rhsReg instanceof Label) {
                        preList.b.add(new LaInstr(lhsReg, rhsReg));
                        ((TemporaryRegister) lhsReg).setMem();
                    }
                }
            }

            if (returnOperandAddress != null) {
                if (returnOperandAddress instanceof Register) {
                    preList.b.add(new SwInstr(lhsReg, new MemAddress((Register) returnOperandAddress, 0)));
                } else if (returnOperandAddress instanceof Label) {
                    preList.b.add(new SwInstr(lhsReg, returnOperandAddress));
                }
            }

            returnOperand = lhsReg;
        } else {
            preList.b.addAll(ctx.expression().accept(this).b);
        }

        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitSHIFT(RzParser.SHIFTContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        preList.b.addAll(ctx.expression(0).accept(this).b);
        Operand lhsReg = returnOperand;
        preList.b.addAll(ctx.expression(1).accept(this).b);
        Operand rhsReg = returnOperand;

        if (lhsReg == null) {
            lhsReg = trg.generate();
            tpa.getIdentofExpression(ctx.expression(0), symt).setRegister(((TemporaryRegister) lhsReg));
        }

        if (ctx.op.getText().equals("<<")) {
            if (lhsReg instanceof ImmediateValue && rhsReg instanceof ImmediateValue) {
                int combined = ((ImmediateValue) lhsReg).getValue() << ((ImmediateValue) rhsReg).getValue();
                returnOperand = new ImmediateValue(combined);
            } else {
                Register resultReg = trg.generate();
                if (lhsReg instanceof ImmediateValue) {
                    preList.b.add(new LiInstr(resultReg, lhsReg));
                    lhsReg = resultReg;
                }
                preList.b.add(new SllInstr(resultReg, lhsReg, rhsReg));
                returnOperand = resultReg;
            }
        } else {
            if (lhsReg instanceof ImmediateValue && rhsReg instanceof ImmediateValue) {
                int combined = ((ImmediateValue) lhsReg).getValue() >> ((ImmediateValue) rhsReg).getValue();
                returnOperand = new ImmediateValue(combined);
            } else if (ctx.op.getText().equals(">>")) {
                Register resultReg = trg.generate();
                if (lhsReg instanceof ImmediateValue) {
                    preList.b.add(new LiInstr(resultReg, lhsReg));
                    lhsReg = resultReg;
                }
                preList.b.add(new SraInstr(resultReg, lhsReg, rhsReg));
                returnOperand = resultReg;
            }
        }

        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitAND(RzParser.ANDContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        preList.b.addAll(ctx.expression(0).accept(this).b);
        Operand lhsReg = returnOperand;
        preList.b.addAll(ctx.expression(1).accept(this).b);
        Operand rhsReg = returnOperand;

        if (lhsReg == null) {
            lhsReg = trg.generate();
            tpa.getIdentofExpression(ctx.expression(0), symt).setRegister((TemporaryRegister) lhsReg);
        }

        if (ctx.op.getText().equals("&")) {
            if (lhsReg instanceof ImmediateValue && rhsReg instanceof ImmediateValue) {
                int combined = ((ImmediateValue) lhsReg).getValue() & ((ImmediateValue) rhsReg).getValue();
                returnOperand = new ImmediateValue(combined);
            } else {
                Register resultReg = trg.generate();
                if (lhsReg instanceof ImmediateValue) {
                    Operand swap = lhsReg;
                    lhsReg = rhsReg;
                    rhsReg = swap;
                }
                preList.b.add(new AndInstr(resultReg, lhsReg, rhsReg));
                returnOperand = resultReg;
            }

        }

        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitINCLUSIVE_OR(RzParser.INCLUSIVE_ORContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        preList.b.addAll(ctx.expression(0).accept(this).b);
        Operand lhsReg = returnOperand;
        preList.b.addAll(ctx.expression(1).accept(this).b);
        Operand rhsReg = returnOperand;

        if (lhsReg == null) {
            lhsReg = trg.generate();
            tpa.getIdentofExpression(ctx.expression(0), symt).setRegister((TemporaryRegister) lhsReg);
        }

        if (ctx.op.getText().equals("|")) {
            if (lhsReg instanceof ImmediateValue && rhsReg instanceof ImmediateValue) {
                int combined = ((ImmediateValue) lhsReg).getValue() | ((ImmediateValue) rhsReg).getValue();
                returnOperand = new ImmediateValue(combined);
            } else {
                Register resultReg = trg.generate();
                if (lhsReg instanceof ImmediateValue) {
                    Operand swap = lhsReg;
                    lhsReg = rhsReg;
                    rhsReg = swap;
                }
                preList.b.add(new OrInstr(resultReg, lhsReg, rhsReg));
                returnOperand = resultReg;
            }
        }

        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitEXCLUSIVE_OR(RzParser.EXCLUSIVE_ORContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        preList.b.addAll(ctx.expression(0).accept(this).b);
        Operand lhsReg = returnOperand;
        preList.b.addAll(ctx.expression(1).accept(this).b);
        Operand rhsReg = returnOperand;

        if (lhsReg == null) {
            lhsReg = trg.generate();
            tpa.getIdentofExpression(ctx.expression(0), symt).setRegister((TemporaryRegister) lhsReg);
        }

        if (ctx.op.getText().equals("^")) {
            if (lhsReg instanceof ImmediateValue && rhsReg instanceof ImmediateValue) {
                int combined = ((ImmediateValue) lhsReg).getValue() ^ ((ImmediateValue) rhsReg).getValue();
                returnOperand = new ImmediateValue(combined);
            } else {
                Register resultReg = trg.generate();
                if (lhsReg instanceof ImmediateValue) {
                    Operand swap = lhsReg;
                    lhsReg = rhsReg;
                    rhsReg = swap;
                }
                preList.b.add(new XorInstr(resultReg, lhsReg, rhsReg));
                returnOperand = resultReg;
            }
        }

        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitADDITIVE(RzParser.ADDITIVEContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        preList.b.addAll(ctx.expression(0).accept(this).b);
        Operand lhsReg = returnOperand;
        preList.b.addAll(ctx.expression(1).accept(this).b);
        Operand rhsReg = returnOperand;

        if (lhsReg == null) {
            lhsReg = trg.generate();
            tpa.getIdentofExpression(ctx.expression(0), symt).setRegister((TemporaryRegister) lhsReg);
        }

        if (ctx.op.getText().equals("+")) {
            if (lhsReg instanceof ImmediateValue && rhsReg instanceof ImmediateValue) {
                int combined = (((ImmediateValue) lhsReg).getValue() + ((ImmediateValue) rhsReg).getValue());
                returnOperand = new ImmediateValue(combined);
            } else {
                Register resultReg = trg.generate();
                if (lhsReg instanceof ImmediateValue) {
                    Operand swap = lhsReg;
                    lhsReg = rhsReg;
                    rhsReg = swap;
                }
                preList.b.add(new AddInstr(resultReg, lhsReg, rhsReg));
                returnOperand = resultReg;
            }
        } else {
            if (lhsReg instanceof ImmediateValue && rhsReg instanceof ImmediateValue) {
                int combined = (((ImmediateValue) lhsReg).getValue() - ((ImmediateValue) rhsReg).getValue());
                returnOperand = new ImmediateValue(combined);
            } else {
                Register resultReg = trg.generate();
                if (lhsReg instanceof ImmediateValue) {
                    preList.b.add(new LiInstr(resultReg, lhsReg));
                    lhsReg = resultReg;
                }
                preList.b.add(new SubInstr(resultReg, lhsReg, rhsReg));
                returnOperand = resultReg;
            }
        }

        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitMULTI(RzParser.MULTIContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        preList.b.addAll(ctx.expression(0).accept(this).b);
        Operand lhsReg = returnOperand;
        preList.b.addAll(ctx.expression(1).accept(this).b);
        Operand rhsReg = returnOperand;

        if (lhsReg == null) {
            lhsReg = trg.generate();
            tpa.getIdentofExpression(ctx.expression(0), symt).setRegister((TemporaryRegister) lhsReg);
        }

        if (ctx.op.getText().equals("*")) {
            if (lhsReg instanceof ImmediateValue && rhsReg instanceof ImmediateValue) {
                int combined = ((ImmediateValue) lhsReg).getValue() * ((ImmediateValue) rhsReg).getValue();
                returnOperand = new ImmediateValue(combined);
            } else {
                Register resultReg = trg.generate();
                if (lhsReg instanceof ImmediateValue) {
                    Operand swap = lhsReg;
                    lhsReg = rhsReg;
                    rhsReg = swap;
                }
                preList.b.add(new MulInstr(resultReg, lhsReg, rhsReg));
                returnOperand = resultReg;
            }
        } else if (ctx.op.getText().equals("/")) {
            if (lhsReg instanceof ImmediateValue && rhsReg instanceof ImmediateValue) {
                int combined = ((ImmediateValue) lhsReg).getValue() / ((ImmediateValue) rhsReg).getValue();
                returnOperand = new ImmediateValue(combined);
            } else {
                Register resultReg = trg.generate();
                if (lhsReg instanceof ImmediateValue) {
                    preList.b.add(new LiInstr(resultReg, lhsReg));
                    lhsReg = resultReg;
                }
                preList.b.add(new DivInstr(resultReg, lhsReg, rhsReg));
                returnOperand = resultReg;
            }
        } else if (ctx.op.getText().equals("%")) {
            if (lhsReg instanceof ImmediateValue && rhsReg instanceof ImmediateValue) {
                int combined = ((ImmediateValue) lhsReg).getValue() % ((ImmediateValue) rhsReg).getValue();
                returnOperand = new ImmediateValue(combined);
            } else {
                Register resultReg = trg.generate();
                if (lhsReg instanceof ImmediateValue) {
                    preList.b.add(new LiInstr(resultReg, lhsReg));
                    lhsReg = resultReg;
                }
                preList.b.add(new RemInstr(resultReg, lhsReg, rhsReg));
                returnOperand = resultReg;
            }
        }

        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitRELATION(RzParser.RELATIONContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        preList.b.addAll(ctx.expression(0).accept(this).b);
        Operand lhsReg = returnOperand;
        preList.b.addAll(ctx.expression(1).accept(this).b);
        Operand rhsReg = returnOperand;

        if (lhsReg == null) {
            lhsReg = trg.generate();
            tpa.getIdentofExpression(ctx.expression(0), symt).setRegister((TemporaryRegister) lhsReg);
        }

        if (ctx.op.getText().equals("<")) {
            if (lhsReg instanceof ImmediateValue && rhsReg instanceof ImmediateValue) {
                boolean combined = ((ImmediateValue) lhsReg).getValue() < ((ImmediateValue) rhsReg).getValue();
                returnOperand = new ImmediateValue(combined);
            } else {
                Register resultReg = trg.generate();
                if (lhsReg instanceof ImmediateValue) {
                    Operand swap = lhsReg;
                    lhsReg = rhsReg;
                    rhsReg = swap;
                    preList.b.add(new SgtInstr(resultReg, lhsReg, rhsReg));
                } else {
                    preList.b.add(new SltInstr(resultReg, lhsReg, rhsReg));
                }
                returnOperand = resultReg;
            }
        } else if (ctx.op.getText().equals(">")) {
            if (lhsReg instanceof ImmediateValue && rhsReg instanceof ImmediateValue) {
                boolean combined = ((ImmediateValue) lhsReg).getValue() > ((ImmediateValue) rhsReg).getValue();
                returnOperand = new ImmediateValue(combined);
            } else {
                Register resultReg = trg.generate();
                if (lhsReg instanceof ImmediateValue) {
                    Operand swap = lhsReg;
                    lhsReg = rhsReg;
                    rhsReg = swap;
                    preList.b.add(new SltInstr(resultReg, lhsReg, rhsReg));
                } else {
                    preList.b.add(new SgtInstr(resultReg, lhsReg, rhsReg));
                }
                returnOperand = resultReg;
            }
        } else if (ctx.op.getText().equals("<=")) {
            if (lhsReg instanceof ImmediateValue && rhsReg instanceof ImmediateValue) {
                boolean combined = ((ImmediateValue) lhsReg).getValue() <= ((ImmediateValue) rhsReg).getValue();
                returnOperand = new ImmediateValue(combined);
            } else {
                Register resultReg = trg.generate();
                if (lhsReg instanceof ImmediateValue) {
                    Operand swap = lhsReg;
                    lhsReg = rhsReg;
                    rhsReg = swap;
                    preList.b.add(new SgeInstr(resultReg, lhsReg, rhsReg));
                } else {
                    preList.b.add(new SleInstr(resultReg, lhsReg, rhsReg));
                }
                returnOperand = resultReg;
            }
        } else if (ctx.op.getText().equals(">=")) {
            if (lhsReg instanceof ImmediateValue && rhsReg instanceof ImmediateValue) {
                boolean combined = ((ImmediateValue) lhsReg).getValue() >= ((ImmediateValue) rhsReg).getValue();
                returnOperand = new ImmediateValue(combined);
            } else {
                Register resultReg = trg.generate();
                if (lhsReg instanceof ImmediateValue) {
                    Operand swap = lhsReg;
                    lhsReg = rhsReg;
                    rhsReg = swap;
                    preList.b.add(new SleInstr(resultReg, lhsReg, rhsReg));
                } else {
                    preList.b.add(new SgeInstr(resultReg, lhsReg, rhsReg));
                }
                returnOperand = resultReg;
            }
        }

        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitEQUALITY(RzParser.EQUALITYContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        preList.b.addAll(ctx.expression(0).accept(this).b);
        Operand lhsReg = returnOperand;
        preList.b.addAll(ctx.expression(1).accept(this).b);
        Operand rhsReg = returnOperand;

        if (lhsReg == null) {
            lhsReg = trg.generate();
            tpa.getIdentofExpression(ctx.expression(0), symt).setRegister((TemporaryRegister) lhsReg);
        }

        if (ctx.op.getText().equals("==")) {
            if (lhsReg instanceof ImmediateValue && rhsReg instanceof ImmediateValue) {
                boolean combined = ((ImmediateValue) lhsReg).getValue() == ((ImmediateValue) rhsReg).getValue();
                returnOperand = new ImmediateValue(combined);
            } else {
                Register resultReg = trg.generate();
                if (lhsReg instanceof ImmediateValue) {
                    Operand swap = lhsReg;
                    lhsReg = rhsReg;
                    rhsReg = swap;
                }

                preList.b.add(new SeqInstr(resultReg, lhsReg, rhsReg));

                returnOperand = resultReg;
            }
        } else if (ctx.op.getText().equals("!=")) {
            if (lhsReg instanceof ImmediateValue && rhsReg instanceof ImmediateValue) {
                boolean combined = ((ImmediateValue) lhsReg).getValue() != ((ImmediateValue) rhsReg).getValue();
                returnOperand = new ImmediateValue(combined);
            } else {
                Register resultReg = trg.generate();
                if (lhsReg instanceof ImmediateValue) {
                    Operand swap = lhsReg;
                    lhsReg = rhsReg;
                    rhsReg = swap;
                }

                preList.b.add(new SneInstr(resultReg, lhsReg, rhsReg));

                returnOperand = resultReg;
            }
        }

        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitLOGIC_AND(RzParser.LOGIC_ANDContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        preList.b.addAll(ctx.expression(0).accept(this).b);
        Operand lhsReg = returnOperand;
        Label isfalse = new Label();

        preList.b.add(new BeqInstr(MipsRegister.$zero, lhsReg, isfalse));

        preList.b.addAll(ctx.expression(1).accept(this).b);
        Operand rhsReg = returnOperand;

        if (lhsReg instanceof ImmediateValue && rhsReg instanceof ImmediateValue) {
            int combined = ((ImmediateValue) lhsReg).getValue() & ((ImmediateValue) rhsReg).getValue();
            returnOperand = new ImmediateValue(combined);
        } else {
            Operand resultReg = trg.generate();
            if (lhsReg instanceof ImmediateValue) {
                Operand swap = lhsReg;
                lhsReg = rhsReg;
                rhsReg = swap;
            }
            preList.b.add(new AndInstr(resultReg, lhsReg, rhsReg));
            returnOperand = resultReg;
        }

        preList.b.add(isfalse);

        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitLOGIC_OR(RzParser.LOGIC_ORContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        preList.b.addAll(ctx.expression(0).accept(this).b);
        Operand lhsReg = returnOperand;
        Label istrue = new Label();

        preList.b.add(new BneInstr(MipsRegister.$zero, lhsReg, istrue));

        preList.b.addAll(ctx.expression(1).accept(this).b);
        Operand rhsReg = returnOperand;

        if (lhsReg instanceof ImmediateValue && rhsReg instanceof ImmediateValue) {
            int combined = ((ImmediateValue) lhsReg).getValue() | ((ImmediateValue) rhsReg).getValue();
            returnOperand = new ImmediateValue(combined);
        } else {
            Operand resultReg = trg.generate();
            if (lhsReg instanceof ImmediateValue) {
                Operand swap = lhsReg;
                lhsReg = rhsReg;
                rhsReg = swap;
            }
            preList.b.add(new OrInstr(resultReg, lhsReg, rhsReg));
            returnOperand = resultReg;
        }

        preList.b.add(istrue);

        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitCREATION(RzParser.CREATIONContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> next = ctx.creation_expr().accept(this);
        preList.a.addAll(next.a);
        preList.b.addAll(next.b);
        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitNEWTYPE(RzParser.NEWTYPEContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitNEWCLASSTYPE(RzParser.NEWCLASSTYPEContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        Type classType =  tpa.getTypeofIdent(ctx.ident().getText(), symt);
        preList.b.add(new LiInstr(MipsRegister.$a0, new ImmediateValue(((ClassType) classType).getOffSet())));
        preList.b.add(new LiInstr(MipsRegister.$v0, new ImmediateValue(9)));
        preList.b.add(new Syscall());
        MipsRegister.$v0.setMem();
        returnOperand = MipsRegister.$v0;
        returnOperandAddress = null;
        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitNEWARRAYTYPE(RzParser.NEWARRAYTYPEContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        RzParser.ArrayContext tempCtx = ctx.array();
        while (tempCtx instanceof RzParser.ARR_MOREContext) {
            tempCtx = ((RzParser.ARR_MOREContext) tempCtx).array();
        }
        preList.b.addAll(tempCtx.getChild(2).accept(this).b);
        Operand expReg = returnOperand;

        if (expReg instanceof ImmediateValue) {
            int combined = ((ImmediateValue) expReg).getValue() * WORD_SIZE;
            preList.b.add(new LiInstr(MipsRegister.$a0, new ImmediateValue(combined)));
        } else {
            Operand tempReg = trg.generate();
            preList.b.add(new MulInstr(tempReg, expReg, new ImmediateValue(WORD_SIZE)));
            preList.b.add(new AddInstr(MipsRegister.$a0, MipsRegister.$zero, tempReg));
        }
        preList.b.add(new LiInstr(MipsRegister.$v0, new ImmediateValue(9)));
        preList.b.add(new Syscall());
        MipsRegister.$v0.setMem();
        returnOperand = MipsRegister.$v0;
        returnOperandAddress = null;
        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitARR_MORE(RzParser.ARR_MOREContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitARR_FINAL_BASE(RzParser.ARR_FINAL_BASEContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitARR_FINAL_CLASS(RzParser.ARR_FINAL_CLASSContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitUNARYEXPR(RzParser.UNARYEXPRContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> next = ctx.unary_expr().accept(this);
        preList.a.addAll(next.a);
        preList.b.addAll(next.b);
        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitUnary_expr(RzParser.Unary_exprContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        if (ctx.getChildCount() == 1) {
            preList.b.addAll(ctx.postfix_expr().accept(this).b);
        } else {
            if (ctx.getChild(0).getText().equals("++")) {
                preList.b.addAll(ctx.unary_expr().accept(this).b);
                preList.b.add(new AddInstr(returnOperand, returnOperand, new ImmediateValue(1)));
                if (returnOperandAddress != null) {
                    if (returnOperandAddress instanceof Register) {
                        preList.b.add(new SwInstr(returnOperand, new MemAddress((Register) returnOperandAddress, 0)));
                    } else if (returnOperandAddress instanceof Label) {
                        preList.b.add(new SwInstr(returnOperand, returnOperandAddress));
                    }
                }
            } else if (ctx.getChild(0).getText().equals("--")) {
                preList.b.addAll(ctx.unary_expr().accept(this).b);
                preList.b.add(new SubInstr(returnOperand, returnOperand, new ImmediateValue(1)));
                if (returnOperandAddress != null) {
                    if (returnOperandAddress instanceof Register) {
                        preList.b.add(new SwInstr(returnOperand, new MemAddress((Register) returnOperandAddress, 0)));
                    } else if (returnOperandAddress instanceof Label) {
                        preList.b.add(new SwInstr(returnOperand, returnOperandAddress));
                    }
                }
            } else if (ctx.getChild(0).getText().equals("~")) {
                preList.b.addAll(ctx.unary_expr().accept(this).b);
                if (returnOperand instanceof ImmediateValue) {
                    int notvalue = ~((ImmediateValue) returnOperand).getValue();
                    returnOperand = new ImmediateValue(notvalue);
                } else {
                    preList.b.add(new NotInstr(returnOperand, returnOperand));
                }
            } else if (ctx.getChild(0).getText().equals("-")) {
                preList.b.addAll(ctx.unary_expr().accept(this).b);
                if (returnOperand instanceof ImmediateValue) {
                    int notvalue = -((ImmediateValue) returnOperand).getValue();
                    returnOperand = new ImmediateValue(notvalue);
                } else {
                    preList.b.add(new NegInstr(returnOperand, returnOperand));
                }
            } else if (ctx.getChild(0).getText().equals("+")) {
                preList.b.addAll(ctx.unary_expr().accept(this).b);
            } else if (ctx.getChild(0).getText().equals("!")) {
                preList.b.addAll(ctx.unary_expr().accept(this).b);
                if (returnOperand instanceof ImmediateValue) {
                    boolean notvalue = (((ImmediateValue) returnOperand).getValue() == 0);
                    returnOperand = new ImmediateValue(notvalue);
                } else {
                    preList.b.add(new SeqInstr(returnOperand, MipsRegister.$zero, returnOperand));
                }
            }
        }
        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitPostfix_expr(RzParser.Postfix_exprContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        if (ctx.getChildCount() == 1) {
            preList.b.addAll(ctx.primary_expr().accept(this).b);
        } else {
            if (ctx.postfix() instanceof RzParser.PlusPlusContext) {
                preList.b.addAll(ctx.postfix_expr().accept(this).b);
                Register newplace = trg.generate();
                preList.b.add(new MoveInstr(newplace, returnOperand));
                preList.b.add(new AddInstr(returnOperand, returnOperand, new ImmediateValue(1)));
                if (returnOperandAddress != null) {
                    if (returnOperandAddress instanceof Register) {
                        preList.b.add(new SwInstr(returnOperand, new MemAddress((Register) returnOperandAddress, 0)));
                    } else if (returnOperandAddress instanceof Label) {
                        preList.b.add(new SwInstr(returnOperand, returnOperandAddress));
                    }
                }
                returnOperand = newplace;
            }
            if (ctx.postfix() instanceof RzParser.MinusMinusContext) {
                preList.b.addAll(ctx.postfix_expr().accept(this).b);
                Register newplace = trg.generate();
                preList.b.add(new MoveInstr(newplace, returnOperand));
                preList.b.add(new SubInstr(returnOperand, returnOperand, new ImmediateValue(1)));
                if (returnOperandAddress != null) {
                    if (returnOperandAddress instanceof Register) {
                        preList.b.add(new SwInstr(returnOperand, new MemAddress((Register) returnOperandAddress, 0)));
                    } else if (returnOperandAddress instanceof Label) {
                        preList.b.add(new SwInstr(returnOperand, returnOperandAddress));
                    }
                }
                returnOperand = newplace;
            }

            if (ctx.postfix() instanceof RzParser.SubscriptContext) {
                preList.b.addAll(ctx.postfix_expr().accept(this).b);
                Operand startAddress = returnOperand;
                preList.b.addAll(((RzParser.SubscriptContext) ctx.postfix()).expr().accept(this).b);
                Operand offSetReg = returnOperand;

                if (startAddress instanceof ImmediateValue) {
                    throw new RuntimeException("Runtime Error: An immediate number has a subscript.");
                } else if (startAddress instanceof Register && ((Register) startAddress).isContainValue()) {
                    throw new RuntimeException("Runtime Error: A non-reference type has a subscript.");
                }

                Operand resultAddress = trg.generate().setMem();

                if (offSetReg instanceof Register && !((Register) offSetReg).isContainValue()) {
                    throw new RuntimeException("Runtime Error: A memory address cannot be used as a index");
                } else if (offSetReg instanceof Register) {
                    Operand tempReg = trg.generate();
                    preList.b.add(new MulInstr(tempReg, offSetReg, new ImmediateValue(WORD_SIZE)));
                    offSetReg = tempReg;
                    preList.b.add(new AddInstr(resultAddress, startAddress, offSetReg));
                } else if (offSetReg instanceof ImmediateValue) {
                    offSetReg = new ImmediateValue(((ImmediateValue) offSetReg).getValue() * WORD_SIZE);
                    preList.b.add(new LaInstr(resultAddress,
                            new MemAddress((Register) startAddress, ((ImmediateValue) offSetReg).getValue())));
                }

                returnOperandAddress = (Register) resultAddress;

                Operand resultReg = trg.generate();

                preList.b.add(new LwInstr(resultReg, new MemAddress((Register) resultAddress, 0)));

                if (!tpa.getTypeofPostExpr(ctx, symt).equals(new IntType())) {
                    ((TemporaryRegister) resultReg).setMem();
                }

                returnOperand = resultReg;
            }

            if (ctx.postfix() instanceof RzParser.MemberContext) {
                preList.b.addAll(ctx.postfix_expr().accept(this).b);
                Operand startAddress = returnOperand;
                // TODO
                ClassType classType = (ClassType) tpa.getTypeofPostExpr(ctx.postfix_expr(), symt);
                int offset = classType.getMemberOffsets().get(((RzParser.MemberContext) ctx.postfix()).ident().getText());
                Operand resultAddress = trg.generate().setMem();
                preList.b.add(new LaInstr(resultAddress, new MemAddress((Register) startAddress, offset)));

                returnOperandAddress = (Register) resultAddress;

                Operand resultReg = trg.generate();
                preList.b.add(new LwInstr(resultReg, new MemAddress((Register) resultAddress, 0)));

                if (!classType.getMembers().get(
                        ((RzParser.MemberContext) ctx.postfix()).ident().getText()).getType().equals(new IntType())) {
                    ((TemporaryRegister) resultReg).setMem();
                }

                returnOperand = resultReg;
            }

            if (ctx.postfix() instanceof RzParser.FunctionCallContext) {
                String funcname = ctx.postfix_expr().getText();
                if (funcname.equals("print")) {
                    preList.b.addAll(((RzParser.FunctionCallContext) ctx.postfix()).arguments().accept(this).b);
                    if (returnOperand instanceof Register) {
                        preList.b.add(new MoveInstr(MipsRegister.$a0, returnOperand));
                        preList.b.add(new LiInstr(MipsRegister.$v0, new ImmediateValue(4)));
                        preList.b.add(new Syscall());
                    }
                } else {
                    int argCnt = 0;
                    for (RzParser.Assign_exprContext arg
                            : ((RzParser.FunctionCallContext) ctx.postfix()).arguments().assign_expr()) {
                        preList.b.addAll(arg.accept(this).b);
                        if (returnOperand instanceof Register) {
                            preList.b.add(new MoveInstr(getArgReg(argCnt), returnOperand));
                        } else if (returnOperand instanceof ImmediateValue) {
                            preList.b.add(new LiInstr(getArgReg(argCnt), returnOperand));
                        } else if (returnOperand instanceof Label) {
                            preList.b.add(new LaInstr(getArgReg(argCnt), returnOperand));
                        }
                        argCnt++;
                    }
                    preList.b.add(new JalInstr(new Label("f_" + funcname)));
                }
                if (((FunctionType)symt.lookup(funcname)).getReturnType().equals(new IntType())) {
                    returnOperand = MipsRegister.$v0;
                } else {
                    returnOperand = MipsRegister.$v0.setMem();
                }
            }

        }
        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitBuild_in_Funtion(RzParser.Build_in_FuntionContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitSubscript(RzParser.SubscriptContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitFunctionCall(RzParser.FunctionCallContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitMember(RzParser.MemberContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitPlusPlus(RzParser.PlusPlusContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitMinusMinus(RzParser.MinusMinusContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitArguments(RzParser.ArgumentsContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitPrimary_ident(RzParser.Primary_identContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());

        Identifier var =  tpa.getIdentofPrimary(ctx, symt);
        if (var.isGlobal()) {
            Register reg =  trg.generate().setGlobal();
            if (var.getRegister() == null && var instanceof Variable) {
                if (((Variable) var).getType().equals(new IntType())) {
                    var.setRegister((TemporaryRegister) reg);
                } else {
                    reg =  trg.generate().setGlobal();
                    var.setRegister((TemporaryRegister) ((TemporaryRegister) reg).setMem());
                }
            }
            preList.b.add(new LwInstr(var.getRegister(), new Label(var.getName())));

            returnOperand = var.getRegister();
            Label label = new Label(var.getName());
            returnOperandAddress = label;
            ((TemporaryRegister) reg).setGlobalMem(label);
        } else {
            returnOperand = var.getRegister();
            returnOperandAddress = null;
        }
        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitPrimary_const_int(RzParser.Primary_const_intContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        returnOperand = new ImmediateValue(Integer.parseInt(ctx.INT().getText()));
        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitPrimary_const_bool(RzParser.Primary_const_boolContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        if (ctx.BOOLCONST().getText().equals("true")) {
            returnOperand = new ImmediateValue(1);
        } else {
            returnOperand = new ImmediateValue(0);
        }
        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitPrimary_const_string(RzParser.Primary_const_stringContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        String msg = stringDic.get(ctx.STRING().getText());
        returnOperand = new Label(msg);
        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitPrimary_null(RzParser.Primary_nullContext ctx) {
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> preList
                = new Pair<>(new LinkedList<>(), new LinkedList<>());
        returnOperand = new ImmediateValue(0);
        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitPrimary_PexprP(RzParser.Primary_PexprPContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visit(ParseTree parseTree) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitChildren(RuleNode ruleNode) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitTerminal(TerminalNode terminalNode) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitErrorNode(ErrorNode errorNode) {
        return null;
    }

    private MipsRegister getArgReg(int index) {
        if (index == 0) {
            return MipsRegister.$a0;
        } else if (index == 1) {
            return MipsRegister.$a1;
        } else if (index == 2) {
            return MipsRegister.$a2;
        } else if (index == 3) {
            return MipsRegister.$a3;
        } else {
            throw new RuntimeException("Runtime Error: Too many arguments!");
        }
    }
}
