package Rz_compiler.backend.codegen;

import Rz_compiler.backend.allocation.TemporaryRegisterGenerator;
import Rz_compiler.backend.instructions.AssemblerDirective;
import Rz_compiler.backend.instructions.MipsInstruction;
import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.instructions.Syscall;
import Rz_compiler.backend.instructions.arithmetic_logic.*;
import Rz_compiler.backend.instructions.branch_jump.BeqInstr;
import Rz_compiler.backend.instructions.branch_jump.BneInstr;
import Rz_compiler.backend.instructions.branch_jump.JarInstr;
import Rz_compiler.backend.instructions.comparison.*;
import Rz_compiler.backend.instructions.load_store_move.LiInstr;
import Rz_compiler.backend.instructions.load_store_move.LwInstr;
import Rz_compiler.backend.instructions.load_store_move.MoveInstr;
import Rz_compiler.backend.operands.*;
import Rz_compiler.frontend.semantics.SymbolTable;
import Rz_compiler.frontend.semantics.TypeAnalyser;
import Rz_compiler.frontend.semantics.identifier.FunctionType;
import Rz_compiler.frontend.semantics.identifier.Identifier;
import Rz_compiler.frontend.semantics.identifier.Type;
import Rz_compiler.frontend.semantics.identifier.Variable;
import Rz_compiler.frontend.syntax.RzParser;
import Rz_compiler.frontend.syntax.RzVisitor;
import org.antlr.v4.runtime.tree.*;
import sun.print.PeekGraphics;

import java.sql.ResultSet;
import java.util.Deque;
import java.util.LinkedList;

/**
 * Created by YRZ on 4/21/16.
 */
public class IntermediateCodeGenerator implements RzVisitor<Deque<PseudoInstruction>> {

    private TypeAnalyser tpa;
    private SymbolTable symt;

    private TemporaryRegisterGenerator trg = new TemporaryRegisterGenerator();

    private Operand returnOperand = null;

    public IntermediateCodeGenerator(SymbolTable symt) {
        this.symt = symt;
        tpa = new TypeAnalyser();
    }

    @Override
    public Deque<PseudoInstruction> visitProg(RzParser.ProgContext ctx) throws RuntimeException {
        throw new RuntimeException("Program can not be inside of another program");
    }

    @Override
    public Deque<PseudoInstruction> visitFunc_def(RzParser.Func_defContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<PseudoInstruction>();

        int frameOffset = 1;
        TemporaryRegister temporary;

        tpa.setCurrentFunc((FunctionType) symt.lookup(ctx.ident().getText()));
        tpa.getCurrentFunc().renewOuterSymt(symt);
        symt.add(ctx.ident().getText(), tpa.getCurrentFunc());
        tpa.setCurrentFunc((FunctionType) symt.lookup(ctx.ident().getText()));

        if (ctx.getChildCount() > 5) {
            instrList.addAll(ctx.param_list().accept(this));
//            for (RzParser.IdentContext para: ctx.param_list().ident()) {
//                temporary = trg.generate();
//                instrList.add(new LwInstr(temporary, new MemAddress(MipsRegister.$sp,
//                        frameOffset * 4)));
                //TODO: p.getScope().lookup(p.getIdent()).setTemporaryRegister(temporary);
//                frameOffset++;
//            }
        }
        instrList.addAll(ctx.compound_stmt().accept(this));

        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitVar_decl(RzParser.Var_declContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();

        String varname = ctx.init_declarator().ident().getText();
        Type vartype = tpa.getTypeofType(ctx.type(), symt);
        Variable var = new Variable(vartype);
        symt.add(varname, var);

        instrList.addAll(ctx.init_declarator().accept(this));

        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitInit_declarator(RzParser.Init_declaratorContext ctx) {

        Deque<PseudoInstruction> instrList = new LinkedList<>();
        if (ctx.getChildCount() > 1) {
            instrList.addAll(ctx.initializer().accept(this));
            Register varReg = symt.lookup(ctx.ident().getText()).getRegister();

            if (varReg == null) {
                varReg = trg.generate();
                symt.lookup(ctx.ident().getText()).setRegister((TemporaryRegister) varReg);
            }
            Operand rhsReg = returnOperand;
            if (rhsReg instanceof Register) {
                instrList.add(new MoveInstr(varReg, rhsReg));
            } else {
                instrList.add(new LiInstr(varReg, rhsReg));
            }
            returnOperand = varReg;
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitInitializer(RzParser.InitializerContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        instrList.addAll(ctx.expr().accept(this));
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitClass_decl(RzParser.Class_declContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitParam_list(RzParser.Param_listContext ctx) {
        return new LinkedList<>();
    }

    @Override
    public Deque<PseudoInstruction> visitMember_decl_list(RzParser.Member_decl_listContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitCLASSTYPE(RzParser.CLASSTYPEContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitBASETYPE(RzParser.BASETYPEContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitARRAYTYPE(RzParser.ARRAYTYPEContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitIdent(RzParser.IdentContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitEnter_scope(RzParser.Enter_scopeContext ctx) {
        if (tpa.isInFunc()) {
            SymbolTable symbolTable = new SymbolTable(symt);
            this.symt = symbolTable;
        } else {
            tpa.setInFunc();
            SymbolTable symbolTable = tpa.getCurrentFunc().getSymTable();
            this.symt = symbolTable;
        }

        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitExit_scope(RzParser.Exit_scopeContext ctx) {

        System.err.println("a = " + symt.lookup("a").getRegister().toString());
        System.err.println("b = " + symt.lookup("b").getRegister().toString());
        System.err.println("c = " + symt.lookup("c").getRegister().toString());

        SymbolTable symbolTable = symt.getParent();
        this.symt = symbolTable;

        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitStmt(RzParser.StmtContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        instrList.addAll(ctx.getChild(0).accept(this));
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitExpr_stmt(RzParser.Expr_stmtContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        instrList.addAll(ctx.assign_expr().accept(this));
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitCompound_stmt(RzParser.Compound_stmtContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitSelec_stmt(RzParser.Selec_stmtContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        instrList.addAll(ctx.expr().accept(this));
        Operand condReg = returnOperand;

        Label noif = new Label();

        instrList.add(new BeqInstr(MipsRegister.$zero, condReg, noif));

        if (ctx.getChild(4) instanceof RzParser.StmtContext) {
            instrList.addAll(ctx.getChild(4).accept(this));
        }  else if (ctx.getChild(4) instanceof RzParser.Var_declContext) {
            SymbolTable symbolTable = new SymbolTable(symt);
            this.symt = symbolTable;
            instrList.addAll(ctx.getChild(4).accept(this));
            symbolTable = symt.getParent();
            this.symt = symbolTable;
        }

        instrList.add(noif);

        if (ctx.getChildCount() > 5) {
            if (ctx.getChild(6) instanceof RzParser.StmtContext) {
                instrList.addAll(ctx.getChild(6).accept(this));
            } else if (ctx.getChild(6) instanceof RzParser.Var_declContext) {
                SymbolTable symbolTable = new SymbolTable(symt);
                this.symt = symbolTable;
                instrList.addAll(ctx.getChild(4).accept(this));
                symbolTable = symt.getParent();
                this.symt = symbolTable;
            }
        }

        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitIteration_stmt(RzParser.Iteration_stmtContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        if (ctx.getChild(0).getText().equals("while")) {
            Label inwhile = new Label();
            instrList.add(inwhile);
            instrList.addAll(ctx.expr(0).accept(this));
            Operand condReg = returnOperand;
            Label notwhile = new Label();
            instrList.add(new BeqInstr(MipsRegister.$zero, condReg, notwhile));
            if (ctx.stmt() != null) {
                instrList.addAll(ctx.stmt().accept(this));
            } else {
                SymbolTable symbolTable = new SymbolTable(symt);
                this.symt = symbolTable;
                instrList.addAll(ctx.var_decl().accept(this));
                symbolTable = symt.getParent();
                this.symt = symbolTable;
            }
            instrList.add(new JarInstr(inwhile));
            instrList.add(notwhile);
        } else {
            // for statement
            Label infor = null;
            Label notfor = null;
            if (ctx.getChild(2).getText().equals(";")) {
                if (!ctx.getChild(3).getText().equals(";")) {
                    infor = new Label();
                    instrList.add(infor);
                    instrList.addAll(ctx.getChild(3).accept(this));
                    Operand condReg = returnOperand;
                    notfor = new Label();
                    instrList.add(new BeqInstr(MipsRegister.$zero, condReg, notfor));
                    if (!ctx.getChild(5).getText().equals(";")) {
                        instrList.addAll(ctx.getChild(5).accept(this));
                    }
                } else if (!ctx.getChild(4).getText().equals(";")) {
                    instrList.addAll(ctx.getChild(4).accept(this));
                } else {
                    infor = new Label();
                    instrList.add(infor);
                    notfor = new Label();
                }
            } else {
                if (!ctx.getChild(4).getText().equals(";")) {
                    instrList.addAll(ctx.getChild(2).accept(this));
                    infor = new Label();
                    instrList.add(infor);
                    instrList.addAll(ctx.getChild(4).accept(this));
                    Operand condReg = returnOperand;
                    notfor = new Label();
                    instrList.add(new BeqInstr(MipsRegister.$zero, condReg, notfor));
                    if (!ctx.getChild(6).getText().equals(";")) {
                        instrList.addAll(ctx.getChild(6).accept(this));
                    }
                } else if (!ctx.getChild(5).getText().equals(";")) {
                    instrList.addAll(ctx.getChild(5).accept(this));
                }
            }
            int toStmtInd = 5 + ctx.expr().size();
            if (ctx.getChild(toStmtInd) instanceof RzParser.StmtContext) {
                instrList.addAll(ctx.getChild(toStmtInd).accept(this));
                instrList.add(new JarInstr(infor));
                instrList.add(notfor);
            } else if (ctx.getChild(toStmtInd) instanceof RzParser.Var_declContext) {
                SymbolTable symbolTable = new SymbolTable(symt);
                this.symt = symbolTable;
                instrList.addAll(ctx.getChild(toStmtInd).accept(this));
                instrList.add(new JarInstr(infor));
                instrList.add(notfor);
                symbolTable = symt.getParent();
                this.symt = symbolTable;
            }
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitContinue_jump(RzParser.Continue_jumpContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitBreak_jump(RzParser.Break_jumpContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitReturn_jump(RzParser.Return_jumpContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        if (ctx.expr() != null) {
            instrList.addAll(ctx.expr().accept(this));
            Operand tempReg = returnOperand;
            if (tempReg instanceof ImmediateValue) {
                instrList.add(new LiInstr(MipsRegister.$v0, tempReg));
            } else {
                instrList.add(new MoveInstr(MipsRegister.$v0, tempReg));
            }
        }
        Label returnhere = new Label();
        instrList.add(new JarInstr(returnhere));
        instrList.add(returnhere);
        instrList.add(new MoveInstr(MipsRegister.$a0, MipsRegister.$v0));
        instrList.add(new LiInstr(MipsRegister.$v0, new ImmediateValue(1)));
        instrList.add(new Syscall());
        instrList.add(new LiInstr(MipsRegister.$v0, new ImmediateValue(10)));
        instrList.add(new Syscall());
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitExpr(RzParser.ExprContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        instrList.addAll(ctx.assign_expr().accept(this));
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitAssign_expr(RzParser.Assign_exprContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        if (ctx.getChildCount() > 1) {
            instrList.addAll(ctx.assign_expr().accept(this));
            Register lhsReg = tpa.getIdentofUnaryExpr(ctx.unary_expr(), symt).getRegister();
            if (lhsReg == null) {
                lhsReg = trg.generate();
                tpa.getIdentofUnaryExpr(ctx.unary_expr(), symt).setRegister((TemporaryRegister) lhsReg);
            }
            Operand rhsReg = returnOperand;
            if (rhsReg instanceof Register) {
                instrList.add(new MoveInstr(lhsReg, rhsReg));
            } else {
                instrList.add(new LiInstr(lhsReg, rhsReg));
            }

            returnOperand = lhsReg;
        } else {
            instrList.addAll(ctx.expression().accept(this));
        }

        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitSHIFT(RzParser.SHIFTContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        instrList.addAll(ctx.expression(0).accept(this));
        Operand lhsReg = returnOperand;
        instrList.addAll(ctx.expression(1).accept(this));
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
                    instrList.add(new LiInstr(resultReg, lhsReg));
                    lhsReg = resultReg;
                }
                instrList.add(new SllInstr(resultReg, lhsReg, rhsReg));
                returnOperand = resultReg;
            }
        } else {
            if (lhsReg instanceof ImmediateValue && rhsReg instanceof ImmediateValue) {
                int combined = ((ImmediateValue) lhsReg).getValue() >> ((ImmediateValue) rhsReg).getValue();
                returnOperand = new ImmediateValue(combined);
            } else if (ctx.op.getText().equals(">>")) {
                Register resultReg = trg.generate();
                if (lhsReg instanceof ImmediateValue) {
                    instrList.add(new LiInstr(resultReg, lhsReg));
                    lhsReg = resultReg;
                }
                instrList.add(new SraInstr(resultReg, lhsReg, rhsReg));
                returnOperand = resultReg;
            }
        }

        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitAND(RzParser.ANDContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        instrList.addAll(ctx.expression(0).accept(this));
        Operand lhsReg = returnOperand;
        instrList.addAll(ctx.expression(1).accept(this));
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
                instrList.add(new AndInstr(resultReg, lhsReg, rhsReg));
                returnOperand = resultReg;
            }

        }

        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitINCLUSIVE_OR(RzParser.INCLUSIVE_ORContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        instrList.addAll(ctx.expression(0).accept(this));
        Operand lhsReg = returnOperand;
        instrList.addAll(ctx.expression(1).accept(this));
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
                instrList.add(new OrInstr(resultReg, lhsReg, rhsReg));
                returnOperand = resultReg;
            }
        }

        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitEXCLUSIVE_OR(RzParser.EXCLUSIVE_ORContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        instrList.addAll(ctx.expression(0).accept(this));
        Operand lhsReg = returnOperand;
        instrList.addAll(ctx.expression(1).accept(this));
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
                instrList.add(new XorInstr(resultReg, lhsReg, rhsReg));
                returnOperand = resultReg;
            }
        }

        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitADDITIVE(RzParser.ADDITIVEContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        instrList.addAll(ctx.expression(0).accept(this));
        Operand lhsReg = returnOperand;
        instrList.addAll(ctx.expression(1).accept(this));
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
                instrList.add(new AddInstr(resultReg, lhsReg, rhsReg));
                returnOperand = resultReg;
            }
        } else {
            if (lhsReg instanceof ImmediateValue && rhsReg instanceof ImmediateValue) {
                int combined = (((ImmediateValue) lhsReg).getValue() - ((ImmediateValue) rhsReg).getValue());
                returnOperand = new ImmediateValue(combined);
            } else {
                Register resultReg = trg.generate();
                if (lhsReg instanceof ImmediateValue) {
                    instrList.add(new LiInstr(resultReg, lhsReg));
                    lhsReg = resultReg;
                }
                instrList.add(new SubInstr(resultReg, lhsReg, rhsReg));
                returnOperand = resultReg;
            }
        }

        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitMULTI(RzParser.MULTIContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        instrList.addAll(ctx.expression(0).accept(this));
        Operand lhsReg = returnOperand;
        instrList.addAll(ctx.expression(1).accept(this));
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
                instrList.add(new MulInstr(resultReg, lhsReg, rhsReg));
                returnOperand = resultReg;
            }
        } else if (ctx.op.getText().equals("/")) {
            if (lhsReg instanceof ImmediateValue && rhsReg instanceof ImmediateValue) {
                int combined = ((ImmediateValue) lhsReg).getValue() / ((ImmediateValue) rhsReg).getValue();
                returnOperand = new ImmediateValue(combined);
            } else {
                Register resultReg = trg.generate();
                if (lhsReg instanceof ImmediateValue) {
                    instrList.add(new LiInstr(resultReg, lhsReg));
                    lhsReg = resultReg;
                }
                instrList.add(new DivInstr(resultReg, lhsReg, rhsReg));
                returnOperand = resultReg;
            }
        } else if (ctx.op.getText().equals("%")) {
            if (lhsReg instanceof ImmediateValue && rhsReg instanceof ImmediateValue) {
                int combined = ((ImmediateValue) lhsReg).getValue() % ((ImmediateValue) rhsReg).getValue();
                returnOperand = new ImmediateValue(combined);
            } else {
                Register resultReg = trg.generate();
                if (lhsReg instanceof ImmediateValue) {
                    instrList.add(new LiInstr(resultReg, lhsReg));
                    lhsReg = resultReg;
                }
                instrList.add(new RemInstr(resultReg, lhsReg, rhsReg));
                returnOperand = resultReg;
            }
        }

        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitRELATION(RzParser.RELATIONContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        instrList.addAll(ctx.expression(0).accept(this));
        Operand lhsReg = returnOperand;
        instrList.addAll(ctx.expression(1).accept(this));
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
                    instrList.add(new SgtInstr(resultReg, lhsReg, rhsReg));
                } else {
                    instrList.add(new SltInstr(resultReg, lhsReg, rhsReg));
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
                    instrList.add(new SltInstr(resultReg, lhsReg, rhsReg));
                } else {
                    instrList.add(new SgtInstr(resultReg, lhsReg, rhsReg));
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
                    instrList.add(new SgeInstr(resultReg, lhsReg, rhsReg));
                } else {
                    instrList.add(new SleInstr(resultReg, lhsReg, rhsReg));
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
                    instrList.add(new SleInstr(resultReg, lhsReg, rhsReg));
                } else {
                    instrList.add(new SgeInstr(resultReg, lhsReg, rhsReg));
                }
                returnOperand = resultReg;
            }
        }

        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitEQUALITY(RzParser.EQUALITYContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        instrList.addAll(ctx.expression(0).accept(this));
        Operand lhsReg = returnOperand;
        instrList.addAll(ctx.expression(1).accept(this));
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

                instrList.add(new SeqInstr(resultReg, lhsReg, rhsReg));

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

                instrList.add(new SneInstr(resultReg, lhsReg, rhsReg));

                returnOperand = resultReg;
            }
        }

        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitLOGIC_AND(RzParser.LOGIC_ANDContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        instrList.addAll(ctx.expression(0).accept(this));
        Operand lhsReg = returnOperand;
        Label isfalse = new Label();

        instrList.add(new BeqInstr(MipsRegister.$zero, lhsReg, isfalse));

        instrList.addAll(ctx.expression(1).accept(this));
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
            instrList.add(new AndInstr(resultReg, lhsReg, rhsReg));
            returnOperand = resultReg;
        }

        instrList.add(isfalse);

        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitLOGIC_OR(RzParser.LOGIC_ORContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        instrList.addAll(ctx.expression(0).accept(this));
        Operand lhsReg = returnOperand;
        Label istrue = new Label();

        instrList.add(new BneInstr(MipsRegister.$zero, lhsReg, istrue));

        instrList.addAll(ctx.expression(1).accept(this));
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
            instrList.add(new OrInstr(resultReg, lhsReg, rhsReg));
            returnOperand = resultReg;
        }

        instrList.add(istrue);

        return instrList;
    }


    @Override
    public Deque<PseudoInstruction> visitCREATION(RzParser.CREATIONContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        instrList.addAll(ctx.creation_expr().accept(this));
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitNEWTYPE(RzParser.NEWTYPEContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitNEWCLASSTYPE(RzParser.NEWCLASSTYPEContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitNEWARRAYTYPE(RzParser.NEWARRAYTYPEContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitUNARYEXPR(RzParser.UNARYEXPRContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        instrList.addAll(ctx.unary_expr().accept(this));
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitARR_MORE(RzParser.ARR_MOREContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitARR_FINAL_BASE(RzParser.ARR_FINAL_BASEContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitARR_FINAL_CLASS(RzParser.ARR_FINAL_CLASSContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitUnary_expr(RzParser.Unary_exprContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        if (ctx.getChildCount() == 1) {
            instrList.addAll(ctx.postfix_expr().accept(this));
        } else {
            if (ctx.getChild(0).getText().equals("++")) {
                instrList.addAll(ctx.unary_expr().accept(this));
                instrList.add(new AddInstr(returnOperand, returnOperand, new ImmediateValue(1)));
            } else if (ctx.getChild(0).getText().equals("--")) {
                instrList.addAll(ctx.unary_expr().accept(this));
                instrList.add(new SubInstr(returnOperand, returnOperand, new ImmediateValue(1)));
            } else if (ctx.getChild(0).getText().equals("~")) {
                instrList.addAll(ctx.unary_expr().accept(this));
                if (returnOperand instanceof ImmediateValue) {
                    int notvalue = ~((ImmediateValue) returnOperand).getValue();
                    returnOperand = new ImmediateValue(notvalue);
                } else {
                    instrList.add(new NotInstr(returnOperand, returnOperand));
                }
            } else if (ctx.getChild(0).getText().equals("-")) {
                instrList.addAll(ctx.unary_expr().accept(this));
                if (returnOperand instanceof ImmediateValue) {
                    int notvalue = -((ImmediateValue) returnOperand).getValue();
                    returnOperand = new ImmediateValue(notvalue);
                } else {
                    instrList.add(new NegInstr(returnOperand, returnOperand));
                }
            } else if (ctx.getChild(0).getText().equals("+")) {
                instrList.addAll(ctx.unary_expr().accept(this));
            } else if (ctx.getChild(0).getText().equals("!")) {
                instrList.addAll(ctx.unary_expr().accept(this));
                if (returnOperand instanceof ImmediateValue) {
                    boolean notvalue = (((ImmediateValue) returnOperand).getValue() == 0);
                    returnOperand = new ImmediateValue(notvalue);
                } else {
                    instrList.add(new SeqInstr(returnOperand, MipsRegister.$zero, returnOperand));
                }
            }

        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitPostfix_expr(RzParser.Postfix_exprContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        if (ctx.getChildCount() == 1) {
            instrList.addAll(ctx.primary_expr().accept(this));
        } else {
            if (ctx.postfix() instanceof RzParser.PlusPlusContext) {
                instrList.addAll(ctx.postfix_expr().accept(this));
                Register newplace = trg.generate();
                tpa.getIdentofPostExpr(ctx.postfix_expr(), symt).setRegister((TemporaryRegister) newplace);
                instrList.add(new AddInstr(newplace, returnOperand, new ImmediateValue(1)));
            }
            if (ctx.postfix() instanceof RzParser.MinusMinusContext) {
                instrList.addAll(ctx.postfix_expr().accept(this));
                Register newplace = trg.generate();
                tpa.getIdentofPostExpr(ctx.postfix_expr(), symt).setRegister((TemporaryRegister) newplace);
                instrList.add(new SubInstr(newplace, returnOperand, new ImmediateValue(1)));
            }
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitBuild_in_Funtion(RzParser.Build_in_FuntionContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitSubscript(RzParser.SubscriptContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitFunctionCall(RzParser.FunctionCallContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitMember(RzParser.MemberContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitPlusPlus(RzParser.PlusPlusContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitMinusMinus(RzParser.MinusMinusContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitArguments(RzParser.ArgumentsContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitPrimary_ident(RzParser.Primary_identContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        returnOperand = tpa.getIdentofPrimary(ctx, symt).getRegister();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitPrimary_const_int(RzParser.Primary_const_intContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        returnOperand = new ImmediateValue(Integer.parseInt(ctx.INT().getText()));
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitPrimary_const_bool(RzParser.Primary_const_boolContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        if (ctx.BOOLCONST().getText().equals("true")) {
            returnOperand = new ImmediateValue(1);
        } else {
            returnOperand = new ImmediateValue(0);
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitPrimary_const_string(RzParser.Primary_const_stringContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitPrimary_null(RzParser.Primary_nullContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitPrimary_PexprP(RzParser.Primary_PexprPContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        instrList.addAll(ctx.expr().accept(this));
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visit(ParseTree parseTree) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitChildren(RuleNode ruleNode) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitTerminal(TerminalNode terminalNode) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitErrorNode(ErrorNode errorNode) {
        return null;
    }
}
