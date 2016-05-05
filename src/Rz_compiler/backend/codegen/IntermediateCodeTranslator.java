package Rz_compiler.backend.codegen;

import Rz_compiler.backend.allocation.TemporaryRegisterGenerator;
import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.instructions.Syscall;
import Rz_compiler.backend.instructions.arithmetic_logic.*;
import Rz_compiler.backend.instructions.branch_jump.*;
import Rz_compiler.backend.instructions.comparison.*;
import Rz_compiler.backend.instructions.load_store_move.*;
import Rz_compiler.backend.operands.*;
import Rz_compiler.errors.SemanticException;
import Rz_compiler.frontend.semantics.SymbolTable;
import Rz_compiler.frontend.semantics.TypeAnalyser;
import Rz_compiler.frontend.semantics.identifier.*;
import Rz_compiler.frontend.syntax.RzParser;
import Rz_compiler.frontend.syntax.RzVisitor;
import com.sun.deploy.security.ValidationState;
import org.antlr.v4.runtime.tree.*;

import java.util.*;

/**
 * Created by YRZ on 4/21/16.
 */
public class IntermediateCodeTranslator implements RzVisitor<Deque<PseudoInstruction>> {

    private final int WORD_SIZE = 4;

    private TypeAnalyser tpa;
    private SymbolTable symt;
    private Map<String, String> stringDic;

    private TemporaryRegisterGenerator trg = new TemporaryRegisterGenerator();

    private Label loopBodyLabel = null;
    private Label loopOutLabel = null;

    private Operand returnOperand = null;
    private Operand returnOperandAddress = null;

    public IntermediateCodeTranslator(SymbolTable symt, Map<String, String> stringDic) {
        this.symt = symt;
        this.stringDic = stringDic;
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

        String funcname = ctx.ident().getText();
        FunctionType functype = new FunctionType(tpa.getTypeofType(ctx.type(), symt));
        functype.addSymbolTable(symt);
        if (ctx.getChildCount() > 5) {
            ArrayList<String> param_names =  new ArrayList<String>();
            for (int i = 0; i < (ctx.param_list().getChildCount() + 1) / 3; ++i) {
                String paramname = ctx.param_list().ident(i).getText();
                param_names.add(paramname);
                functype.addParameter(paramname, tpa.getTypeofType(ctx.param_list().type(i), symt));
            }
        }
        symt.add(funcname, functype);

        tpa.setCurrentFunc((FunctionType) symt.lookup(ctx.ident().getText()));
        tpa.getCurrentFunc().renewOuterSymt(symt);
        symt.add(ctx.ident().getText(), tpa.getCurrentFunc());
        tpa.setCurrentFunc((FunctionType) symt.lookup(ctx.ident().getText()));

        // prologue
        instrList.add(new SubInstr(MipsRegister.$sp, MipsRegister.$sp, new ImmediateValue(4)));
        instrList.add(new SwInstr(MipsRegister.$ra, new MemAddress(MipsRegister.$sp, 0)));

        // body part
        if (ctx.getChildCount() > 5) {
            instrList.addAll(ctx.param_list().accept(this));
        }

        instrList.addAll(ctx.compound_stmt().accept(this));

        if (functype.getReturnType().toString().equals("void") || true) {
            instrList.add(new LwInstr(MipsRegister.$ra, new MemAddress(MipsRegister.$sp, 0)));
            instrList.add(new AddInstr(MipsRegister.$sp, MipsRegister.$sp, new ImmediateValue(4)));
            instrList.add(new JrInstr(MipsRegister.$ra));
        }

        if (funcname.equals("main")) {
            if (!(instrList.getLast() instanceof JrInstr
                    && ((JrInstr) instrList.getLast()).getrSrc().toString().equals("$ra"))) {
                instrList.add(new LwInstr(MipsRegister.$ra, new MemAddress(MipsRegister.$sp, 0)));
                instrList.add(new AddInstr(MipsRegister.$sp, MipsRegister.$sp, new ImmediateValue(4)));
                instrList.add(new JrInstr(MipsRegister.$ra));
            }
            Label returnhere = new Label("main_end");
            instrList.add(new BInstr(returnhere));
            instrList.add(returnhere);
            instrList.add(new MoveInstr(MipsRegister.$a0, MipsRegister.$v0));
            instrList.add(new LiInstr(MipsRegister.$v0, new ImmediateValue(1)));
            instrList.add(new Syscall());
            instrList.add(new LiInstr(MipsRegister.$v0, new ImmediateValue(10)));
            instrList.add(new Syscall());
        }

        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitParam_list(RzParser.Param_listContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        for (int i = 0; i < ctx.ident().size(); ++i) {
            String varname = ctx.ident(i).getText();
            Type vartype = tpa.getTypeofType(ctx.type(i), symt);
            Register varReg;
            if (vartype.equals(new IntType())) {
                varReg = trg.generate();
            } else {
                varReg = trg.generate().setMem();
            }
            tpa.getCurrentFunc().getSymTable().lookup(varname).setRegister((TemporaryRegister) varReg);
            instrList.add(new MoveInstr(varReg, getArgReg(i)));
            returnOperand = varReg;
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitVar_decl(RzParser.Var_declContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();

        String varname = ctx.init_declarator().ident().getText();
        Type vartype = tpa.getTypeofType(ctx.type(), symt);
        Variable var = new Variable(vartype);
        if (symt.scope_lookup(varname) != null) throw new  RuntimeException("multi-thread conflict");
        symt.add(varname, var);
        instrList.addAll(ctx.init_declarator().accept(this));

        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitInit_declarator(RzParser.Init_declaratorContext ctx) {

        Deque<PseudoInstruction> instrList = new LinkedList<>();
        if (ctx.getChildCount() > 1) {
            instrList.addAll(ctx.initializer().accept(this));
            Operand rhsReg = returnOperand;
            Register varReg = symt.lookup(ctx.ident().getText()).getRegister();

            // !!
            returnOperandAddress = null;

            if (varReg == null) {
                if (symt.lookup(ctx.ident().getText()) instanceof Variable) {
                    if (((Variable) symt.lookup(ctx.ident().getText())).getType() instanceof IntType
                            || ((Variable) symt.lookup(ctx.ident().getText())).getType() instanceof BoolType) {
                        varReg = trg.generate();
                    } else {
                        varReg = trg.generate().setMem();
                    }
                }

                symt.lookup(ctx.ident().getText()).setRegister((TemporaryRegister) varReg);
            }

            if (rhsReg instanceof Register) {
                assert varReg != null;
                if (varReg.isContainValue() == ((Register) rhsReg).isContainValue()) {
                    instrList.add(new MoveInstr(varReg, rhsReg));
                } else if (varReg.isContainValue()) {
                    throw new RuntimeException("Runtime Error: Assign memory address to value or vise");
                }
            } else {
                assert varReg != null;
                if (varReg.isContainValue()) {
                    instrList.add(new LiInstr(varReg, rhsReg));
                } else {
                    if (rhsReg instanceof ImmediateValue && ((ImmediateValue) rhsReg).getValue() == 0) {
                        instrList.add(new LiInstr(varReg, rhsReg));
                        ((TemporaryRegister) varReg).setMem();
                    } else if (rhsReg instanceof Label) {
                        instrList.add(new LaInstr(varReg, rhsReg));
                        ((TemporaryRegister) varReg).setMem();
                    }
                }
            }

            if (returnOperandAddress != null) {
                if (returnOperandAddress instanceof Register) {
                    instrList.add(new SwInstr(varReg, new MemAddress((Register) returnOperandAddress, 0)));
                } else if (returnOperandAddress instanceof Label) {
                    instrList.add(new SwInstr(varReg, returnOperandAddress));
                }
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
        if (ctx.getChildCount() > 1)
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
        Label endif = new Label();

        if (condReg instanceof Register && !((Register) condReg).isContainValue()) {
            Operand tempReg = trg.generate();
            instrList.add(new LwInstr(tempReg, condReg));
        }

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

        instrList.add(new BInstr(endif));
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

        instrList.add(endif);

        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitIteration_stmt(RzParser.Iteration_stmtContext ctx) {

        Label outerLoopBodyLabel =  loopBodyLabel;
        Label outerLoopOutLabel = loopOutLabel;

        Deque<PseudoInstruction> instrList = new LinkedList<>();
        if (ctx.getChild(0).getText().equals("while")) {
            Label inwhile = new Label();
            loopBodyLabel = inwhile;
            instrList.add(inwhile);
            instrList.addAll(ctx.expr(0).accept(this));
            Operand condReg = returnOperand;
            Label notwhile = new Label();
            loopOutLabel = notwhile;
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
            instrList.add(new BInstr(inwhile));
            loopBodyLabel = outerLoopBodyLabel;
            loopOutLabel = outerLoopOutLabel;
            instrList.add(notwhile);
        } else {
            // for statement
            Label infor = null;
            Label forItStmt;
            Label notfor = null;
            if (ctx.getChild(2).getText().equals(";")) {
                if (!ctx.getChild(3).getText().equals(";")) {
                    infor = new Label();
                    loopBodyLabel = infor;
                    instrList.add(infor);
                    instrList.addAll(ctx.getChild(3).accept(this));
                    Operand condReg = returnOperand;
                    notfor = new Label();
                    loopOutLabel = notfor;
                    instrList.add(new BeqInstr(MipsRegister.$zero, condReg, notfor));
                } else {
                    infor = new Label();
                    loopBodyLabel = infor;
                    instrList.add(infor);
                    notfor = new Label();
                    loopOutLabel = notfor;
                }
            } else {
                if (!ctx.getChild(4).getText().equals(";")) {
                    instrList.addAll(ctx.getChild(2).accept(this));
                    infor = new Label();
                    loopBodyLabel = infor;
                    instrList.add(infor);
                    instrList.addAll(ctx.getChild(4).accept(this));
                    Operand condReg = returnOperand;
                    notfor = new Label();
                    loopOutLabel = notfor;
                    instrList.add(new BeqInstr(MipsRegister.$zero, condReg, notfor));
                } else {
                    instrList.addAll(ctx.getChild(2).accept(this));
                    infor = new Label();
                    loopBodyLabel = infor;
                    instrList.add(infor);
                    notfor = new Label();
                    loopOutLabel = notfor;
                }
            }
            int toStmtInd = 5 + ctx.expr().size();
            if (ctx.getChild(toStmtInd) instanceof RzParser.StmtContext) {
                forItStmt = new Label();
                loopBodyLabel = forItStmt;
                instrList.addAll(ctx.getChild(toStmtInd).accept(this));
                // Will declaring the same variable cause problem? - Of course not.
                instrList.add(forItStmt);
                if (ctx.getChild(2).getText().equals(";")) {
                    if (!ctx.getChild(3).getText().equals(";")) {
                        if (!ctx.getChild(5).getText().equals(")")) {
                            instrList.addAll(ctx.getChild(5).accept(this));
                        }
                    } else if (!ctx.getChild(4).getText().equals(")")) {
                        instrList.addAll(ctx.getChild(4).accept(this));
                    }
                } else {
                    if (!ctx.getChild(4).getText().equals(";")) {
                        if (!ctx.getChild(6).getText().equals(";")) {
                            instrList.addAll(ctx.getChild(6).accept(this));
                        }
                    } else if (!ctx.getChild(5).getText().equals(")")) {
                        instrList.addAll(ctx.getChild(5).accept(this));
                    }
                }
                instrList.add(new BInstr(infor));
                loopBodyLabel = outerLoopBodyLabel;
                loopOutLabel = outerLoopOutLabel;
                instrList.add(notfor);
            } else if (ctx.getChild(toStmtInd) instanceof RzParser.Var_declContext) {
                SymbolTable symbolTable = new SymbolTable(symt);
                this.symt = symbolTable;
                forItStmt = new Label();
                loopBodyLabel = forItStmt;
                instrList.addAll(ctx.getChild(toStmtInd).accept(this));
                instrList.add(forItStmt);
                if (ctx.getChild(2).getText().equals(";")) {
                    if (!ctx.getChild(3).getText().equals(";")) {
                        if (!ctx.getChild(5).getText().equals(";")) {
                            instrList.addAll(ctx.getChild(5).accept(this));
                        }
                    } else if (!ctx.getChild(4).getText().equals(")")) {
                        instrList.addAll(ctx.getChild(4).accept(this));
                    }
                } else {
                    if (!ctx.getChild(4).getText().equals(";")) {
                        if (!ctx.getChild(6).getText().equals(";")) {
                            instrList.addAll(ctx.getChild(6).accept(this));
                        }
                    } else if (!ctx.getChild(5).getText().equals(")")) {
                        instrList.addAll(ctx.getChild(5).accept(this));
                    }
                }
                instrList.add(new BInstr(infor));
                loopBodyLabel = outerLoopBodyLabel;
                loopOutLabel = outerLoopOutLabel;
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
        instrList.add(new BInstr(loopBodyLabel));
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitBreak_jump(RzParser.Break_jumpContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        instrList.add(new BInstr(loopOutLabel));
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
            } else if (tempReg instanceof Register) {
                instrList.add(new MoveInstr(MipsRegister.$v0, tempReg));
            } else if (tempReg instanceof Label) {
                instrList.add(new LaInstr(MipsRegister.$v0, tempReg));
            }
            Type type = tpa.getTypeofExpr(ctx.expr(), symt);
            if (type.equals(new IntType())) {
                MipsRegister.$v0.setValue();
            } else {
                MipsRegister.$v0.setMem();
            }
        }
        instrList.add(new LwInstr(MipsRegister.$ra, new MemAddress(MipsRegister.$sp, 0)));
        instrList.add(new AddInstr(MipsRegister.$sp, MipsRegister.$sp, new ImmediateValue(4)));
        instrList.add(new JrInstr(MipsRegister.$ra));
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
            Operand rhsReg = returnOperand;

            instrList.addAll(ctx.unary_expr().accept(this));
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
                instrList.add(new MoveInstr(lhsReg, rhsReg));
            } else {
                if (((Register) lhsReg).isContainValue()) {
                    instrList.add(new LiInstr(lhsReg, rhsReg));
                } else {
                    if (rhsReg instanceof ImmediateValue && ((ImmediateValue) rhsReg).getValue() == 0) {
                        instrList.add(new LiInstr(lhsReg, rhsReg));
                        ((TemporaryRegister) lhsReg).setMem();
                    } else if (rhsReg instanceof Label) {
                        instrList.add(new LaInstr(lhsReg, rhsReg));
                        ((TemporaryRegister) lhsReg).setMem();
                    }
                }
            }

            if (returnOperandAddress != null) {
                if (returnOperandAddress instanceof Register) {
                    instrList.add(new SwInstr(lhsReg, new MemAddress((Register) returnOperandAddress, 0)));
                } else if (returnOperandAddress instanceof Label) {
                    instrList.add(new SwInstr(lhsReg, returnOperandAddress));
                }
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
            } else if ((rhsReg instanceof Register && ((Register) rhsReg).isContainValue())
                    || (lhsReg instanceof Register && ((Register) lhsReg).isContainValue())) {
                Register resultReg = trg.generate();
                if (lhsReg instanceof ImmediateValue) {
                    Operand swap = lhsReg;
                    lhsReg = rhsReg;
                    rhsReg = swap;
                }
                instrList.add(new AddInstr(resultReg, lhsReg, rhsReg));
                returnOperand = resultReg;
            } else {
                if (lhsReg instanceof Register) {
                    instrList.add(new MoveInstr(MipsRegister.$a0, lhsReg));
                } else if (lhsReg instanceof Label) {
                    instrList.add(new LaInstr(MipsRegister.$a0, lhsReg));
                }

                if (rhsReg instanceof Register) {
                    instrList.add(new MoveInstr(MipsRegister.$a1, rhsReg));
                } else if (rhsReg instanceof Label) {
                    instrList.add(new LaInstr(MipsRegister.$a1, rhsReg));
                }
                CodeGenerator.hasStringAdd = true;
                CodeGenerator.hasLabelStringCopy = true;
                instrList.add(new JalInstr(new Label("f_str.stringConcatenate")));
                Register result = trg.generate().setMem();
                instrList.add(new MoveInstr(result, MipsRegister.$v0.setMem()));
                returnOperand = result;
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
        Type classType =  tpa.getTypeofIdent(ctx.ident().getText(), symt);
        instrList.add(new LiInstr(MipsRegister.$a0, new ImmediateValue(((ClassType) classType).getOffSet())));
        instrList.add(new LiInstr(MipsRegister.$v0, new ImmediateValue(9)));
        instrList.add(new Syscall());
        MipsRegister.$v0.setMem();
        returnOperand = MipsRegister.$v0;
        returnOperandAddress = null;
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitNEWARRAYTYPE(RzParser.NEWARRAYTYPEContext ctx) throws RuntimeException {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        RzParser.ArrayContext tempCtx = ctx.array();
        while (tempCtx instanceof RzParser.ARR_MOREContext) {
            tempCtx = ((RzParser.ARR_MOREContext) tempCtx).array();
        }
        instrList.addAll(tempCtx.getChild(2).accept(this));
        Operand expReg = returnOperand;

        if (expReg instanceof ImmediateValue) {
            int combined = ((ImmediateValue) expReg).getValue() * WORD_SIZE + WORD_SIZE;
            instrList.add(new LiInstr(MipsRegister.$a0, new ImmediateValue(combined)));
        } else {
            Operand tempReg = trg.generate();
            instrList.add(new MulInstr(tempReg, expReg, new ImmediateValue(WORD_SIZE)));
            instrList.add(new AddInstr(tempReg, tempReg, new ImmediateValue(WORD_SIZE)));
            instrList.add(new AddInstr(MipsRegister.$a0, MipsRegister.$zero, tempReg));
        }
        instrList.add(new LiInstr(MipsRegister.$v0, new ImmediateValue(9)));
        instrList.add(new Syscall());

        MipsRegister.$v0.setMem();

        if (expReg instanceof ImmediateValue) {
            Register sizeTemp = trg.generate().setValue();
            instrList.add(new LiInstr(sizeTemp, expReg));
            instrList.add(new SwInstr(sizeTemp, new MemAddress(MipsRegister.$v0, 0)));
        } else {
            Register sizeTemp = trg.generate().setValue();
            instrList.add(new MoveInstr(sizeTemp, expReg));
            instrList.add(new SwInstr(sizeTemp, new MemAddress(MipsRegister.$v0, 0)));
        }

        Register start = trg.generate().setMem();
        instrList.add(new AddInstr(start, MipsRegister.$v0, new ImmediateValue(WORD_SIZE)));

        returnOperand = start;
        returnOperandAddress = null;

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
                if (returnOperandAddress != null) {
                    if (returnOperandAddress instanceof Register) {
                        instrList.add(new SwInstr(returnOperand, new MemAddress((Register) returnOperandAddress, 0)));
                    } else if (returnOperandAddress instanceof Label) {
                        instrList.add(new SwInstr(returnOperand, returnOperandAddress));
                    }
                }
            } else if (ctx.getChild(0).getText().equals("--")) {
                instrList.addAll(ctx.unary_expr().accept(this));
                instrList.add(new SubInstr(returnOperand, returnOperand, new ImmediateValue(1)));
                if (returnOperandAddress != null) {
                    if (returnOperandAddress instanceof Register) {
                        instrList.add(new SwInstr(returnOperand, new MemAddress((Register) returnOperandAddress, 0)));
                    } else if (returnOperandAddress instanceof Label) {
                        instrList.add(new SwInstr(returnOperand, returnOperandAddress));
                    }
                }
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
                instrList.add(new MoveInstr(newplace, returnOperand));
                instrList.add(new AddInstr(returnOperand, returnOperand, new ImmediateValue(1)));
                if (returnOperandAddress != null) {
                    if (returnOperandAddress instanceof Register) {
                        instrList.add(new SwInstr(returnOperand, new MemAddress((Register) returnOperandAddress, 0)));
                    } else if (returnOperandAddress instanceof Label) {
                        instrList.add(new SwInstr(returnOperand, returnOperandAddress));
                    }
                }
                returnOperand = newplace;
            }
            if (ctx.postfix() instanceof RzParser.MinusMinusContext) {
                instrList.addAll(ctx.postfix_expr().accept(this));
                Register newplace = trg.generate();
                instrList.add(new MoveInstr(newplace, returnOperand));
                instrList.add(new SubInstr(returnOperand, returnOperand, new ImmediateValue(1)));
                if (returnOperandAddress != null) {
                    if (returnOperandAddress instanceof Register) {
                        instrList.add(new SwInstr(returnOperand, new MemAddress((Register) returnOperandAddress, 0)));
                    } else if (returnOperandAddress instanceof Label) {
                        instrList.add(new SwInstr(returnOperand, returnOperandAddress));
                    }
                }
                returnOperand = newplace;
            }

            if (ctx.postfix() instanceof RzParser.SubscriptContext) {
                instrList.addAll(ctx.postfix_expr().accept(this));
                Operand startAddress = returnOperand;
                instrList.addAll(((RzParser.SubscriptContext) ctx.postfix()).expr().accept(this));
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
                    instrList.add(new MulInstr(tempReg, offSetReg, new ImmediateValue(WORD_SIZE)));
                    offSetReg = tempReg;
                    instrList.add(new AddInstr(resultAddress, startAddress, offSetReg));
                } else if (offSetReg instanceof ImmediateValue) {
                    offSetReg = new ImmediateValue(((ImmediateValue) offSetReg).getValue() * WORD_SIZE);
                    instrList.add(new LaInstr(resultAddress,
                            new MemAddress((Register) startAddress, ((ImmediateValue) offSetReg).getValue())));
                }

                returnOperandAddress = (Register) resultAddress;

                Operand resultReg = trg.generate();

                instrList.add(new LwInstr(resultReg, new MemAddress((Register) resultAddress, 0)));

                if (!tpa.getTypeofPostExpr(ctx, symt).equals(new IntType())) {
                    ((TemporaryRegister) resultReg).setMem();
                }

                returnOperand = resultReg;
            }

            if (ctx.postfix() instanceof RzParser.MemberContext) {
                instrList.addAll(ctx.postfix_expr().accept(this));
                Operand startAddress = returnOperand;
                // TODO
                ClassType classType = (ClassType) tpa.getTypeofPostExpr(ctx.postfix_expr(), symt);
                int offset = classType.getMemberOffsets().get(((RzParser.MemberContext) ctx.postfix()).ident().getText());
                Operand resultAddress = trg.generate().setMem();
                instrList.add(new LaInstr(resultAddress, new MemAddress((Register) startAddress, offset)));

                returnOperandAddress = (Register) resultAddress;

                Operand resultReg = trg.generate();
                instrList.add(new LwInstr(resultReg, new MemAddress((Register) resultAddress, 0)));

                if (!classType.getMembers().get(
                        ((RzParser.MemberContext) ctx.postfix()).ident().getText()).getType().equals(new IntType())) {
                    ((TemporaryRegister) resultReg).setMem();
                }

                returnOperand = resultReg;
            }

            if (ctx.postfix() instanceof RzParser.FunctionCallContext) {
                String funcname = ctx.postfix_expr().getText();
                if (funcname.equals("print")) {
                    instrList.addAll(((RzParser.FunctionCallContext) ctx.postfix()).arguments().accept(this));
                    if (returnOperand instanceof Register) {
                        instrList.add(new MoveInstr(MipsRegister.$a0, returnOperand));
                        instrList.add(new LiInstr(MipsRegister.$v0, new ImmediateValue(4)));
                        instrList.add(new Syscall());
                    } else if (returnOperand instanceof Label) {
                        instrList.add(new LaInstr(MipsRegister.$a0, returnOperand));
                        instrList.add(new LiInstr(MipsRegister.$v0, new ImmediateValue(4)));
                        instrList.add(new Syscall());
                    }
                } else if (funcname.equals("println")) {
                    instrList.addAll(((RzParser.FunctionCallContext) ctx.postfix()).arguments().accept(this));
                    if (returnOperand instanceof Register) {
                        instrList.add(new MoveInstr(MipsRegister.$a0, returnOperand));
                        instrList.add(new LiInstr(MipsRegister.$v0, new ImmediateValue(4)));
                        instrList.add(new Syscall());
                    } else if (returnOperand instanceof Label) {
                        instrList.add(new LaInstr(MipsRegister.$a0, returnOperand));
                        instrList.add(new LiInstr(MipsRegister.$v0, new ImmediateValue(4)));
                        instrList.add(new Syscall());
                    }
                    String msg = stringDic.get("\"\\n\"");
                    instrList.add(new LaInstr(MipsRegister.$a0, new Label(msg)));
                    instrList.add(new LiInstr(MipsRegister.$v0, new ImmediateValue(4)));
                    instrList.add(new Syscall());

                } else if (funcname.equals("getInt")) {
                    instrList.add(new LiInstr(MipsRegister.$v0, new ImmediateValue(5)));
                    instrList.add(new Syscall());
                    Register result = trg.generate().setValue();
                    instrList.add(new MoveInstr(result, MipsRegister.$v0.setValue()));
                    returnOperand = result;
                } else {

                    int argCnt = 0;

                    if (funcname.equals("toString"))
                        CodeGenerator.hasToString = true;

                    RzParser.ArgumentsContext argumentsContext =
                            ((RzParser.FunctionCallContext) ctx.postfix()).arguments();
                    List<Register> tempRegs = new LinkedList<>();

                    if (argumentsContext != null) {

                        for (RzParser.Assign_exprContext arg
                                : argumentsContext.assign_expr()) {
                            instrList.addAll(arg.accept(this));
                            Register temp;
                            if (returnOperand instanceof Register) {
                                temp = (Register) returnOperand;
                                tempRegs.add(temp);
                            } else if (returnOperand instanceof ImmediateValue) {
                                temp = trg.generate().setValue();
                                instrList.add(new LiInstr(temp, returnOperand));
                                tempRegs.add(temp);
                            } else if (returnOperand instanceof Label) {
                                temp = trg.generate().setMem();
                                instrList.add(new LaInstr(temp, returnOperand));
                                tempRegs.add(temp);
                            }
                        }

                        for (Register temp : tempRegs) {
                            instrList.add(new MoveInstr(getArgReg(argCnt++), temp));
                        }

                    }

                    instrList.add(new JalInstr(new Label("f_" + funcname)));
                }
                if (((FunctionType)symt.lookup(funcname)).getReturnType().equals(new IntType())) {
                    Register result = trg.generate().setValue();
                    instrList.add(new MoveInstr(result, MipsRegister.$v0.setValue()));
                    returnOperand = result;
                } else {
                    Register result = trg.generate().setMem();
                    instrList.add(new MoveInstr(result, MipsRegister.$v0.setMem()));
                    returnOperand = result;
                }
            }

            if (ctx.postfix() instanceof RzParser.Build_in_FuntionContext) {
                if (((RzParser.Build_in_FuntionContext) ctx.postfix()).ident().getText().equals("size")) {
                    instrList.addAll(ctx.postfix_expr().accept(this));
                    Register result = trg.generate().setValue();
                    instrList.add(new LwInstr(result, new MemAddress((Register) returnOperand, -4)));
                    returnOperand = result;
                }
                if (((RzParser.Build_in_FuntionContext) ctx.postfix()).ident().getText().equals("length")) {
                    instrList.addAll(ctx.postfix_expr().accept(this));
                    Register result = trg.generate().setValue();
                    if (returnOperand instanceof Label) {
                        Register addr = trg.generate().setMem();
                        instrList.add(new LaInstr(addr, returnOperand));
                        instrList.add(new LwInstr(result, new MemAddress(addr, -4)));
                    } else {
                        instrList.add(new LwInstr(result, new MemAddress((Register) returnOperand, -4)));
                    }
                    returnOperand = result;
                }

                if (((RzParser.Build_in_FuntionContext) ctx.postfix()).ident().getText().equals("substring")
                        || ((RzParser.Build_in_FuntionContext) ctx.postfix()).ident().getText().equals("parseInt")
                        ||((RzParser.Build_in_FuntionContext) ctx.postfix()).ident().getText().equals("ord")) {

                    String funcname = ((RzParser.Build_in_FuntionContext) ctx.postfix()).ident().getText();

                    if (funcname.equals("substring")) {
                        CodeGenerator.hasLabelStringCopy = true;
                        CodeGenerator.hasSubString = true;
                    } else if (funcname.equals("parseInt")) {
                        CodeGenerator.hasParseInt = true;
                    } else if (funcname.equals("ord")) {
                        CodeGenerator.hasOrd = true;
                    }


                    instrList.addAll(ctx.postfix_expr().accept(this));
                    Operand lhs = returnOperand;

                    int argCnt = 0;

                    RzParser.ArgumentsContext argumentsContext =
                            ((RzParser.Build_in_FuntionContext) ctx.postfix()).arguments();

                    List<Register> tempRegs = new LinkedList<>();

                    if (lhs instanceof Register) {
                        tempRegs.add((Register) lhs);
                    } else if (lhs instanceof ImmediateValue) {
                        Register temp = trg.generate().setValue();
                        instrList.add(new LiInstr(temp, lhs));
                        tempRegs.add(temp);
                    } else if (lhs instanceof Label) {
                        Register temp = trg.generate().setMem();
                        instrList.add(new LaInstr(temp, lhs));
                        tempRegs.add(temp);
                    }

                    if (argumentsContext != null) {
                        for (RzParser.Assign_exprContext arg
                                : argumentsContext.assign_expr()) {
                            instrList.addAll(arg.accept(this));
                            Register temp;
                            if (returnOperand instanceof Register) {
                                temp = (Register) returnOperand;
                                tempRegs.add(temp);
                            } else if (returnOperand instanceof ImmediateValue) {
                                temp = trg.generate().setValue();
                                instrList.add(new LiInstr(temp, returnOperand));
                                tempRegs.add(temp);
                            } else if (returnOperand instanceof Label) {
                                temp = trg.generate().setMem();
                                instrList.add(new LaInstr(temp, returnOperand));
                                tempRegs.add(temp);
                            }
                        }
                    }

                    for (Register temp : tempRegs) {
                        instrList.add(new MoveInstr(getArgReg(argCnt++), temp));
                    }

                    instrList.add(new JalInstr(new Label("f_str."  + funcname)));

                    if (funcname.equals("substring")) {
                        Register result = trg.generate().setMem();
                        instrList.add(new MoveInstr(result, MipsRegister.$v0.setMem()));
                        returnOperand = result;
                    } else {
                        Register result = trg.generate().setValue();
                        instrList.add(new MoveInstr(result, MipsRegister.$v0.setValue()));
                        returnOperand = result;
                    }

                }

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
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        for (int i = 0; i < ctx.getChildCount(); ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }


    //Special! FOR VARIABLES IN THE EXPRESSION
    @Override
    public Deque<PseudoInstruction> visitPrimary_ident(RzParser.Primary_identContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();

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
            instrList.add(new LwInstr(var.getRegister(), new Label(var.getName())));

            returnOperand = var.getRegister();
            Label label = new Label(var.getName());
            returnOperandAddress = label;
            ((TemporaryRegister) reg).setGlobalMem(label);
        } else {
            returnOperand = var.getRegister();
            returnOperandAddress = null;
        }
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
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        String msg = stringDic.get(ctx.STRING().getText());
        returnOperand = new Label(msg);
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitPrimary_null(RzParser.Primary_nullContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        returnOperand = new ImmediateValue(0);
        return instrList;
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
