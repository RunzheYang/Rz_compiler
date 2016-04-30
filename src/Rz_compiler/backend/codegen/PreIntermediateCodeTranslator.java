package Rz_compiler.backend.codegen;

import Rz_compiler.backend.allocation.TemporaryRegisterGenerator;
import Rz_compiler.backend.instructions.AssemblerDirective;
import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.backend.instructions.load_store_move.LiInstr;
import Rz_compiler.backend.instructions.load_store_move.MoveInstr;
import Rz_compiler.backend.instructions.load_store_move.SwInstr;
import Rz_compiler.backend.operands.*;
import Rz_compiler.frontend.semantics.SymbolTable;
import Rz_compiler.frontend.semantics.TypeAnalyser;
import Rz_compiler.frontend.semantics.identifier.BoolType;
import Rz_compiler.frontend.semantics.identifier.IntType;
import Rz_compiler.frontend.semantics.identifier.Type;
import Rz_compiler.frontend.semantics.identifier.Variable;
import Rz_compiler.frontend.syntax.RzParser;
import Rz_compiler.frontend.syntax.RzVisitor;
import org.antlr.v4.runtime.misc.Pair;
import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.RuleNode;
import org.antlr.v4.runtime.tree.TerminalNode;

import java.util.Deque;
import java.util.LinkedList;

/**
 * Created by YRZ on 4/30/16.
 */
public class PreIntermediateCodeTranslator implements RzVisitor<Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>>> {

    private final int WORD_SIZE = 4;

    private TypeAnalyser tpa;
    private SymbolTable symt;

    private TemporaryRegisterGenerator trg = new TemporaryRegisterGenerator();

    private Operand returnOperand = null;
    private Register returnOperandAddress = null;

    public PreIntermediateCodeTranslator(SymbolTable symt) {
        this.symt = symt;
        tpa = new TypeAnalyser();
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
        Variable var = new Variable(vartype);
        symt.add(varname, var);
        Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> next
                = ctx.init_declarator().accept(this);
        preList.a.addAll(next.a);
        preList.b.addAll(next.b);

        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitClass_decl(RzParser.Class_declContext ctx) {
        return null;
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

        } else {
            if (symt.lookup(ctx.ident().getText()) instanceof Variable) {
                if (((Variable) symt.lookup(ctx.ident().getText())).getType() instanceof IntType
                        || ((Variable) symt.lookup(ctx.ident().getText())).getType() instanceof BoolType) {
                    preList.a.add(new AssemblerDirective(ctx.ident().getText() + ":\t.word\t" + 0));
                } else {
                }
            }
        }

        return preList;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitInitializer(RzParser.InitializerContext ctx) {
        return null;
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
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitAssign_expr(RzParser.Assign_exprContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitNEWTYPE(RzParser.NEWTYPEContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitNEWCLASSTYPE(RzParser.NEWCLASSTYPEContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitNEWARRAYTYPE(RzParser.NEWARRAYTYPEContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitUNARYEXPR(RzParser.UNARYEXPRContext ctx) {
        return null;
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
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitUnary_expr(RzParser.Unary_exprContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitLOGIC_AND(RzParser.LOGIC_ANDContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitSHIFT(RzParser.SHIFTContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitINCLUSIVE_OR(RzParser.INCLUSIVE_ORContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitEXCLUSIVE_OR(RzParser.EXCLUSIVE_ORContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitADDITIVE(RzParser.ADDITIVEContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitRELATION(RzParser.RELATIONContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitLOGIC_OR(RzParser.LOGIC_ORContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitEQUALITY(RzParser.EQUALITYContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitAND(RzParser.ANDContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitCREATION(RzParser.CREATIONContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitMULTI(RzParser.MULTIContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitPostfix_expr(RzParser.Postfix_exprContext ctx) {
        return null;
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
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitPrimary_const_int(RzParser.Primary_const_intContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitPrimary_const_bool(RzParser.Primary_const_boolContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitPrimary_const_string(RzParser.Primary_const_stringContext ctx) {
        return null;
    }

    @Override
    public Pair<Deque<PseudoInstruction>, Deque<PseudoInstruction>> visitPrimary_null(RzParser.Primary_nullContext ctx) {
        return null;
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
}
