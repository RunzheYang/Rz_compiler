package Rz_compiler.backend.codegen;

import Rz_compiler.backend.instructions.AssemblerDirective;
import Rz_compiler.backend.instructions.PseudoInstruction;
import Rz_compiler.frontend.syntax.RzParser;
import Rz_compiler.frontend.syntax.RzVisitor;
import org.antlr.v4.runtime.tree.ErrorNode;
import org.antlr.v4.runtime.tree.ParseTree;
import org.antlr.v4.runtime.tree.RuleNode;
import org.antlr.v4.runtime.tree.TerminalNode;

import java.util.Deque;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

/**
 * Created by YRZ on 5/1/16.
 */
public class StringConstGetter implements RzVisitor<Deque<PseudoInstruction>> {

    private int cnt = 0;

    private String string_generate() {
        return "msg_" + (cnt++);
    }

    private Map<String, String> stringConsts = new HashMap<String, String>();

    public Map<String, String> getStringConsts() {
        return stringConsts;
    }

    @Override
    public Deque<PseudoInstruction> visitProg(RzParser.ProgContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        for (int i = 0; i < ctx.getChildCount(); ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitFunc_def(RzParser.Func_defContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        instrList.addAll(ctx.compound_stmt().accept(this));
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitVar_decl(RzParser.Var_declContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        instrList.addAll(ctx.init_declarator().accept(this));
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitClass_decl(RzParser.Class_declContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitParam_list(RzParser.Param_listContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitMember_decl_list(RzParser.Member_decl_listContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitInit_declarator(RzParser.Init_declaratorContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        if (ctx.getChildCount() > 1)
            instrList.addAll(ctx.initializer().accept(this));
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
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitBASETYPE(RzParser.BASETYPEContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitARRAYTYPE(RzParser.ARRAYTYPEContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitIdent(RzParser.IdentContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitEnter_scope(RzParser.Enter_scopeContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitExit_scope(RzParser.Exit_scopeContext ctx) {
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
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitIteration_stmt(RzParser.Iteration_stmtContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
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
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitExpr(RzParser.ExprContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitAssign_expr(RzParser.Assign_exprContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
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
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitARR_MORE(RzParser.ARR_MOREContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitARR_FINAL_BASE(RzParser.ARR_FINAL_BASEContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitARR_FINAL_CLASS(RzParser.ARR_FINAL_CLASSContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitUnary_expr(RzParser.Unary_exprContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitLOGIC_AND(RzParser.LOGIC_ANDContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitSHIFT(RzParser.SHIFTContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitINCLUSIVE_OR(RzParser.INCLUSIVE_ORContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitEXCLUSIVE_OR(RzParser.EXCLUSIVE_ORContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitADDITIVE(RzParser.ADDITIVEContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitRELATION(RzParser.RELATIONContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitLOGIC_OR(RzParser.LOGIC_ORContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitEQUALITY(RzParser.EQUALITYContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitAND(RzParser.ANDContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitCREATION(RzParser.CREATIONContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitMULTI(RzParser.MULTIContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitPostfix_expr(RzParser.Postfix_exprContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitBuild_in_Funtion(RzParser.Build_in_FuntionContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitSubscript(RzParser.SubscriptContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitFunctionCall(RzParser.FunctionCallContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        if (((RzParser.Postfix_exprContext) ctx.parent).postfix_expr().getText().equals("println")) {
            if (!stringConsts.containsKey("\"\\n\"")) {
                String varname = string_generate();
                instrList.add(new AssemblerDirective(varname + ":\t.asciiz\t" + "\"\\n\""));
                stringConsts.put("\"\\n\"", varname);
            }
        }
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitMember(RzParser.MemberContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitPlusPlus(RzParser.PlusPlusContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitMinusMinus(RzParser.MinusMinusContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitArguments(RzParser.ArgumentsContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitPrimary_ident(RzParser.Primary_identContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitPrimary_const_int(RzParser.Primary_const_intContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitPrimary_const_bool(RzParser.Primary_const_boolContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitPrimary_const_string(RzParser.Primary_const_stringContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();


        if (!stringConsts.containsKey(ctx.STRING().getText())) {
            String varname = string_generate();
            instrList.add(new AssemblerDirective(varname + ":\t.asciiz\t" + ctx.STRING().getText()));
            stringConsts.put(ctx.STRING().getText(), varname);
        }

        //TODO



        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitPrimary_null(RzParser.Primary_nullContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitPrimary_PexprP(RzParser.Primary_PexprPContext ctx) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        int statementCnt = ctx.getChildCount();
        for (int i = 0; i < statementCnt; ++i) {
            instrList.addAll(ctx.getChild(i).accept(this));
        }
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visit(ParseTree parseTree) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitChildren(RuleNode ruleNode) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitTerminal(TerminalNode terminalNode) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }

    @Override
    public Deque<PseudoInstruction> visitErrorNode(ErrorNode errorNode) {
        Deque<PseudoInstruction> instrList = new LinkedList<>();
        return instrList;
    }
}
