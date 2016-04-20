package Rz_compiler.semantics;

import Rz_compiler.syntax.RzBaseVisitor;
import Rz_compiler.syntax.RzParser;

/**
 * Created by YRZ on 4/4/16.
 */
public class PrettyPrint extends RzBaseVisitor<Void> {

    private int scopeCnt;
    private String tabIndent;

    public PrettyPrint() {
        scopeCnt = 0;
        tabIndent = "";
    }

    public void enterScope() {
        scopeCnt++;
        tabIndent += "\t";
    }

    public void exitScope() {
        scopeCnt--;
        tabIndent = tabIndent.substring(1);
    }

    @Override
    public Void visitProg(RzParser.ProgContext ctx) {
        System.out.println("//******* PRETTY PRINT *******//\n");
        System.out.println("//******* CLASS DECLARATION *******//\n");
        for (int i = 0; i < ctx.class_decl().size(); ++i) {
            visitClass_decl(ctx.class_decl(i));
        }
        System.out.println("\n//******* GLOBAL VARIABLE *******//\n");
        for (int i = 0; i < ctx.var_decl().size(); ++i) {
            visitVar_decl(ctx.var_decl(i));
        }
        System.out.println("\n//******* FUNCTION DECLARATION *******//\n");
        int selectmain = 0;
        for (int i = 0; i < ctx.func_def().size(); ++i) {
            if (!ctx.func_def(i).ident().getText().equals("main")) {
                visitFunc_def(ctx.func_def(i));
            } else {
                selectmain = i;
            }
        }
        System.out.println("\n//******* MAIN *******//\n");
        visitFunc_def(ctx.func_def(selectmain));
        return null;
    }

    @Override
    public Void visitFunc_def(RzParser.Func_defContext ctx) {
        System.out.print(ctx.type().getText() + " " + ctx.ident().getText() + "(");
        if (ctx.getChildCount() > 5) {
            visitParam_list(ctx.param_list());
        }
        System.out.print(") ");
        visitCompound_stmt(ctx.compound_stmt());
        return null;
    }

    @Override
    public Void visitParam_list(RzParser.Param_listContext ctx) {
        for (int i = 0; i < ctx.ident().size(); ++i) {
            System.out.print(ctx.type(i).getText() + " " + ctx.ident(i).getText());
            if (i != ctx.ident().size() - 1) {
                System.out.print(", ");
            }
        }
        return null;
    }

    @Override
    public Void visitClass_decl(RzParser.Class_declContext ctx) {
        System.out.print("class " + ctx.ident().getText() + " ");
        visitEnter_scope(ctx.enter_scope());
        visitMember_decl_list(ctx.member_decl_list());
        visitExit_scope(ctx.exit_scope());
        return null;
    }

    @Override
    public Void visitMember_decl_list(RzParser.Member_decl_listContext ctx) {
        for (int i = 0; i < ctx.ident().size(); ++i) {
            System.out.print(ctx.type(i).getText() + " " + ctx.ident(i).getText() + ";");
//            if (i != ctx.ident().size() -1) {
                System.out.print("\n" + tabIndent);
//            }
        }
        return null;
    }

    @Override
    public Void visitVar_decl(RzParser.Var_declContext ctx) {
        System.out.print(ctx.type().getText() + " ");
        visitInit_declarator(ctx.init_declarator());
        System.out.print(";\n" + tabIndent);
        return null;
    }

    @Override
    public Void visitInit_declarator(RzParser.Init_declaratorContext ctx) {
        System.out.print(ctx.ident().getText());
        if (ctx.getChildCount() == 3) {
            System.out.print(" = ");
            visitExpr(ctx.initializer().expr());
        }
        return null;
    }

    @Override
    public Void visitCompound_stmt(RzParser.Compound_stmtContext ctx) {
        visitChildren(ctx);
        return null;
    }

    @Override
    public Void visitEnter_scope(RzParser.Enter_scopeContext ctx) {
        System.out.println("{\n");
        enterScope();
        System.out.print(tabIndent);
        return null;
    }

    @Override
    public Void visitExit_scope(RzParser.Exit_scopeContext ctx) {
        exitScope();
        System.out.println("\n" +  tabIndent + "}\n");
        System.out.print(tabIndent);
        return null;
    }

    @Override
    public Void visitAssign_expr(RzParser.Assign_exprContext ctx) {
        if (ctx.getChildCount() == 1) {
            visitChildren(ctx);
        } else {
            visitUnary_expr(ctx.unary_expr());
            System.out.print(" = ");
            visitAssign_expr(ctx.assign_expr());
        }
        return null;
    }

    @Override
    public Void visitUnary_expr(RzParser.Unary_exprContext ctx) {
        if (ctx.getChildCount() > 1) {
            System.out.print(ctx.getChild(0).getText());
            visitUnary_expr(ctx.unary_expr());
        } else {
            visitPostfix_expr(ctx.postfix_expr());
        }
        return null;
    }

    @Override
    public Void visitPrimary_ident(RzParser.Primary_identContext ctx) {
        System.out.print(ctx.ident().getText());
        return null;
    }

    @Override
    public Void visitPrimary_const_int(RzParser.Primary_const_intContext ctx) {
        System.out.print(ctx.getText());
        return null;
    }

    @Override
    public Void visitPrimary_const_bool(RzParser.Primary_const_boolContext ctx) {
        System.out.print(ctx.getText());
        return null;
    }

    @Override
    public Void visitPrimary_const_string(RzParser.Primary_const_stringContext ctx) {
        System.out.print(ctx.getText());
        return null;
    }

    @Override
    public Void visitPrimary_null(RzParser.Primary_nullContext ctx) {
        System.out.print(ctx.getText());
        return null;
    }

    @Override
    public Void visitPrimary_PexprP(RzParser.Primary_PexprPContext ctx) {
        System.out.print("(");
        visitExpr(ctx.expr());
        System.out.print(")");
        return null;
    }

    @Override
    public Void visitSelec_stmt(RzParser.Selec_stmtContext ctx) {
        System.out.print("if (");
        visitExpr(ctx.expr());
        System.out.print(") ");
        visitStmt((RzParser.StmtContext) ctx.getChild(4));
        if (ctx.getChildCount() > 5) {
            System.out.print("else ");
            visitStmt((RzParser.StmtContext) ctx.getChild(6));
        }
        return null;
    }

    @Override
    public Void visitIteration_stmt(RzParser.Iteration_stmtContext ctx) {
        if (ctx.getChild(0).getText().equals("while")) {
            System.out.print("while (");
            visitExpr(ctx.expr(0));
            System.out.print(") ");
            visitStmt(ctx.stmt());
        } else {
            System.out.print("for (");
            for (int i = 2; i < ctx.getChildCount() - 2; ++i) {
                if (ctx.getChild(i).getText().equals(";")) {
                    System.out.print("; ");
                } else {
                    visitExpr((RzParser.ExprContext) ctx.getChild(i));
                }
            }
            System.out.print(") ");
            visitStmt(ctx.stmt());
        }
        return null;
    }

    @Override
    public Void visitContinue_jump(RzParser.Continue_jumpContext ctx) {
        System.out.print("continue;\n" + tabIndent);
        return null;
    }

    @Override
    public Void visitBreak_jump(RzParser.Break_jumpContext ctx) {
        System.out.print("break;\n" + tabIndent);
        return null;
    }

    @Override
    public Void visitReturn_jump(RzParser.Return_jumpContext ctx) {
        System.out.print("return");
        if (ctx.getChildCount() > 1) {
            System.out.print(" ");
            visitExpr(ctx.expr());
            System.out.print(";\n" + tabIndent);
        } else {
            System.out.print(";\n" + tabIndent);
        }
        return null;
    }

    @Override
    public Void visitExpr_stmt(RzParser.Expr_stmtContext ctx) {
        if (ctx.getChildCount() > 1) {
            visitAssign_expr(ctx.assign_expr());
        }
        System.out.print(";\n" + tabIndent);
        return null;
    }

    @Override
    public Void visitNEWTYPE(RzParser.NEWTYPEContext ctx) {
        System.out.print("new " + ctx.getChild(1).getText());
        return null;
    }

    @Override
    public Void visitNEWCLASSTYPE(RzParser.NEWCLASSTYPEContext ctx) {
        System.out.print("new " + ctx.getChild(1).getText());
        return null;
    }

    @Override
    public Void visitNEWARRAYTYPE(RzParser.NEWARRAYTYPEContext ctx) {
        System.out.print("new " + ctx.getChild(1).getText());
        return null;
    }

    @Override
    public Void visitUNARYEXPR(RzParser.UNARYEXPRContext ctx) {
        visitUnary_expr(ctx.unary_expr());
        return null;
    }

    @Override
    public Void visitSubscript(RzParser.SubscriptContext ctx) {
        System.out.print("[");
        visitExpr(ctx.expr());
        System.out.print("]");
        return null;
    }

    @Override
    public Void visitBuild_in_Funtion(RzParser.Build_in_FuntionContext ctx) {
        System.out.print("." + ctx.ident().getText()+"(");
        if (ctx.getChildCount() > 4) visitArguments(ctx.arguments());
        System.out.print(")");
        return null;
    }

    @Override
    public Void visitArguments(RzParser.ArgumentsContext ctx) {
        for (int i = 0; i < ctx.assign_expr().size(); ++i) {
            visitAssign_expr(ctx.assign_expr(i));
            if (i != ctx.assign_expr().size() - 1) System.out.print(", ");
        }
        return null;
    }

    @Override
    public Void visitFunctionCall(RzParser.FunctionCallContext ctx) {
        System.out.print("(");
        if (ctx.getChildCount() > 2) {
            visitArguments(ctx.arguments());
        }
        System.out.print(")");
        return null;
    }

    @Override
    public Void visitMember(RzParser.MemberContext ctx) {
        System.out.print("." + ctx.ident().getText());
        return null;
    }

    @Override
    public Void visitPlusPlus(RzParser.PlusPlusContext ctx) {
        System.out.print("++");
        return null;
    }

    @Override
    public Void visitMinusMinus(RzParser.MinusMinusContext ctx) {
        System.out.print("--");
        return null;
    }

    @Override
    public Void visitMULTI(RzParser.MULTIContext ctx) {
        visit(ctx.getChild(0));
        System.out.print(" " + ctx.op.getText() + " ");
        visit(ctx.getChild(2));
        return null;
    }

    @Override
    public Void visitLOGIC_AND(RzParser.LOGIC_ANDContext ctx) {
        visit(ctx.getChild(0));
        System.out.print(" " + ctx.op.getText() + " ");
        visit(ctx.getChild(2));
        return null;
    }

    @Override
    public Void visitSHIFT(RzParser.SHIFTContext ctx) {
        visit(ctx.getChild(0));
        System.out.print(" " + ctx.op.getText() + " ");
        visit(ctx.getChild(2));
        return null;
    }

    @Override
    public Void visitINCLUSIVE_OR(RzParser.INCLUSIVE_ORContext ctx) {
        visit(ctx.getChild(0));
        System.out.print(" " + ctx.op.getText() + " ");
        visit(ctx.getChild(2));
        return null;
    }

    @Override
    public Void visitEXCLUSIVE_OR(RzParser.EXCLUSIVE_ORContext ctx) {
        visit(ctx.getChild(0));
        System.out.print(" " + ctx.op.getText() + " ");
        visit(ctx.getChild(2));
        return null;
    }

    @Override
    public Void visitADDITIVE(RzParser.ADDITIVEContext ctx) {
        visit(ctx.getChild(0));
        System.out.print(" " + ctx.op.getText() + " ");
        visit(ctx.getChild(2));
        return null;
    }

    @Override
    public Void visitRELATION(RzParser.RELATIONContext ctx) {
        visit(ctx.getChild(0));
        System.out.print(" " + ctx.op.getText() + " ");
        visit(ctx.getChild(2));
        return null;
    }

    @Override
    public Void visitLOGIC_OR(RzParser.LOGIC_ORContext ctx) {
        visit(ctx.getChild(0));
        System.out.print(" " + ctx.op.getText() + " ");
        visit(ctx.getChild(2));
        return null;
    }

    @Override
    public Void visitEQUALITY(RzParser.EQUALITYContext ctx) {
        visit(ctx.getChild(0));
        System.out.print(" " + ctx.op.getText() + " ");
        visit(ctx.getChild(2));
        return null;
    }

    @Override
    public Void visitAND(RzParser.ANDContext ctx) {
        visit(ctx.getChild(0));
        System.out.print(" " + ctx.op.getText() + " ");
        visit(ctx.getChild(2));
        return null;
    }
}
