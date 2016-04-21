package Rz_compiler.backend.codegen;

import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.frontend.syntax.RzParser;
import Rz_compiler.frontend.syntax.RzVisitor;
import org.antlr.v4.runtime.tree.*;

import java.util.Deque;

/**
 * Created by YRZ on 4/21/16.
 */
public class IntermediateCodeGenerator implements RzVisitor<Deque<PseudoInstruction>> {

    @Override
    public Deque<PseudoInstruction> visitProg(RzParser.ProgContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitFunc_def(RzParser.Func_defContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitVar_decl(RzParser.Var_declContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitClass_decl(RzParser.Class_declContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitParam_list(RzParser.Param_listContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitMember_decl_list(RzParser.Member_decl_listContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitInit_declarator(RzParser.Init_declaratorContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitInitializer(RzParser.InitializerContext ctx) {
        return null;
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
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitExit_scope(RzParser.Exit_scopeContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitStmt(RzParser.StmtContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitExpr_stmt(RzParser.Expr_stmtContext ctx) {
        return null;
    }

    @Override
    public Deque<PseudoInstruction> visitCompound_stmt(RzParser.Compound_stmtContext ctx) {
        return null;
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
        return null;
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
