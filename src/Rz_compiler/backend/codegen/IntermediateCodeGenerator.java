package Rz_compiler.backend.codegen;

import Rz_compiler.backend.allocation.TemporaryRegisterGenerator;
import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.instructions.load_store_move.LwInstr;
import Rz_compiler.backend.operands.MemAddress;
import Rz_compiler.backend.operands.MipsRegister;
import Rz_compiler.backend.operands.Register;
import Rz_compiler.backend.operands.TemporaryRegister;
import Rz_compiler.frontend.semantics.SymbolTable;
import Rz_compiler.frontend.semantics.TypeAnalyser;
import Rz_compiler.frontend.semantics.identifier.FunctionType;
import Rz_compiler.frontend.semantics.identifier.Type;
import Rz_compiler.frontend.semantics.identifier.Variable;
import Rz_compiler.frontend.syntax.RzParser;
import Rz_compiler.frontend.syntax.RzVisitor;
import org.antlr.v4.runtime.tree.*;
import sun.print.PeekGraphics;

import java.util.Deque;
import java.util.LinkedList;

/**
 * Created by YRZ on 4/21/16.
 */
public class IntermediateCodeGenerator implements RzVisitor<Deque<PseudoInstruction>> {

    private TypeAnalyser tpa;
    private SymbolTable symt;

    private TemporaryRegisterGenerator trg = new TemporaryRegisterGenerator();

    private Register returnRegister = null;

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
            for (RzParser.IdentContext para: ctx.param_list().ident()) {
                temporary = trg.generate();
                instrList.add(new LwInstr(temporary, new MemAddress(MipsRegister.$sp,
                        frameOffset * 4)));
                //TODO: p.getScope().lookup(p.getIdent()).setTemporaryRegister(temporary);
                frameOffset++;
            }
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
    public Deque<PseudoInstruction> visitInit_declarator(RzParser.Init_declaratorContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        if (ctx.getChildCount() > 1) {
            instrList.addAll(ctx.initializer().accept(this));
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
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitExpr_stmt(RzParser.Expr_stmtContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitCompound_stmt(RzParser.Compound_stmtContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        instrList.addAll(ctx.enter_scope().accept(this));
        int statementCnt = ctx.getChildCount() - 2;
        for (int i = 1; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        instrList.addAll(ctx.exit_scope().accept(this));
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitSelec_stmt(RzParser.Selec_stmtContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitIteration_stmt(RzParser.Iteration_stmtContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitContinue_jump(RzParser.Continue_jumpContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitBreak_jump(RzParser.Break_jumpContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitReturn_jump(RzParser.Return_jumpContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitExpr(RzParser.ExprContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitAssign_expr(RzParser.Assign_exprContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitNEWTYPE(RzParser.NEWTYPEContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitNEWCLASSTYPE(RzParser.NEWCLASSTYPEContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitNEWARRAYTYPE(RzParser.NEWARRAYTYPEContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitUNARYEXPR(RzParser.UNARYEXPRContext ctx) {
        return null;
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
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitLOGIC_AND(RzParser.LOGIC_ANDContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitSHIFT(RzParser.SHIFTContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitINCLUSIVE_OR(RzParser.INCLUSIVE_ORContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitEXCLUSIVE_OR(RzParser.EXCLUSIVE_ORContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitADDITIVE(RzParser.ADDITIVEContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitRELATION(RzParser.RELATIONContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitLOGIC_OR(RzParser.LOGIC_ORContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitEQUALITY(RzParser.EQUALITYContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitAND(RzParser.ANDContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitCREATION(RzParser.CREATIONContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitMULTI(RzParser.MULTIContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitPostfix_expr(RzParser.Postfix_exprContext ctx) {
        return null;
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
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitMinusMinus(RzParser.MinusMinusContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitArguments(RzParser.ArgumentsContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitPrimary_ident(RzParser.Primary_identContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitPrimary_const_int(RzParser.Primary_const_intContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitPrimary_const_bool(RzParser.Primary_const_boolContext ctx) {
        return null;
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
        return null;
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
