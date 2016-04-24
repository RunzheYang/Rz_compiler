package Rz_compiler.frontend.semantics;

import Rz_compiler.errors.SemanticException;
import Rz_compiler.frontend.semantics.identifier.*;
import Rz_compiler.frontend.syntax.RzBaseVisitor;
import Rz_compiler.frontend.syntax.RzParser;

/**
 * Created by YRZ on 4/2/16.
 */
public class SemanticCheck extends RzBaseVisitor<Void> {

    private TypeAnalyser tpa;
    private SymbolTable symt;
    private boolean hasReturn;
    private int inLoop;
    private boolean visble;

    public SemanticCheck(SymbolTable symt, boolean _visble) {
        tpa = new TypeAnalyser();
        this.symt = symt;
        hasReturn = false;
        inLoop = 0;
        this.visble = _visble;
        if (visble) System.out.println("----------Semantic Check Stage 3------------");
    }

    public SymbolTable getSymt() {
        return symt;
    }

    @Override
    public Void visitProg(RzParser.ProgContext ctx) throws SemanticException {

//        if (symt.lookup("main") == null || !(symt.lookup("main") instanceof FunctionType)) {
//            throw new SemanticException("Semantic Error: No 'main()' function");
//        }

        if (!(((FunctionType) symt.lookup("main")).getReturnType() instanceof IntType)) {
            throw new SemanticException("Semantic Error: 'main()' function should be 'int' type");
        }
        visitChildren(ctx);
        return null;
    }


    @Override
    public Void visitVar_decl(RzParser.Var_declContext ctx) throws SemanticException {

        String filePos = "line " +  ctx.start.getLine()
                + ":" + ctx.start.getCharPositionInLine() + " -> ";

        String varname = ctx.init_declarator().ident().getText();
        if (symt.scope_lookup(varname) == null) {
            Type vartype = tpa.getTypeofType(ctx.type(), symt);
            if (vartype instanceof VoidType) {
                throw new SemanticException(filePos + "Semantic Error: Cannot assign a variable as 'void' type");
            }

            if (/**symt.lookup(varname) instanceof FunctionType ||*/ symt.lookup(varname) instanceof ClassType) {
                throw new SemanticException("Semantic Error: '" + varname + "' cannot be a variable because it is already a function or class");
            }

            if (visble) System.out.println("\t<Variable> " + vartype.toString() + " " + varname);
            Variable var = new Variable(vartype);
            symt.add(varname, var);

            if (ctx.init_declarator().getChildCount() > 1) {
                Type typeR =  tpa.getTypeofExpr(ctx.init_declarator().initializer().expr(), symt);
                if (!vartype.equals(typeR)
                        && !(!(vartype instanceof IntType || vartype instanceof BoolType || vartype instanceof StringType)
                        && typeR instanceof NullType)) {
                    throw new SemanticException(filePos + "Semantic Error: '"
                            + ctx.init_declarator().initializer().getText() + "' cannot assign to '"
                            + vartype.toString() + " " + varname  + "'");
                }
            }

        } else {
            throw new SemanticException(filePos + "Semantic Error: Repeated definition of the variable '" + varname +"'");
        }
        return null;
    }

    @Override
    public Void visitFunc_def(RzParser.Func_defContext ctx) throws SemanticException {
        //renew the outer symbol table of the function
        tpa.setCurrentFunc((FunctionType) symt.lookup(ctx.ident().getText()));
        tpa.getCurrentFunc().renewOuterSymt(symt);
        symt.add(ctx.ident().getText(), tpa.getCurrentFunc());
        tpa.setCurrentFunc((FunctionType) symt.lookup(ctx.ident().getText()));
        hasReturn = tpa.getCurrentFunc().getReturnType() instanceof VoidType;
        if (visble) System.out.println("<In Func>" + ctx.type().getText() + " " + ctx.ident().getText() + "(" + ")");
        visitChildren(ctx);
//        if (!hasReturn && !ctx.ident().getText().equals("main")) {
//            throw new SemanticException("Semantic Error: No return in function '" + ctx.ident().getText() + "'");
//        }
        return null;
    }

    @Override
    public Void visitEnter_scope(RzParser.Enter_scopeContext ctx) throws SemanticException {
        if (tpa.isInFunc()) {
            SymbolTable symbolTable = new SymbolTable(symt);
            this.symt = symbolTable;
        } else {
            tpa.setInFunc();
            SymbolTable symbolTable = tpa.getCurrentFunc().getSymTable();
            this.symt = symbolTable;
        }
        return null;
    }

    @Override
    public Void visitExit_scope(RzParser.Exit_scopeContext ctx) {
        SymbolTable symbolTable = symt.getParent();
        this.symt = symbolTable;
        return null;
    }

    @Override
    public Void visitExpr_stmt(RzParser.Expr_stmtContext ctx) {
        if (ctx.getChildCount() > 1) {
            if (visble) System.out.println("\t\t\t<expr_stmt> " + ctx.getText());
            tpa.getTypeofAssignExpr(ctx.assign_expr(), symt);
        }
        return null;
    }

    @Override
    public Void visitExpr(RzParser.ExprContext ctx) {
        tpa.getTypeofExpr(ctx, symt);
        return null;
    }

    @Override
    public Void visitReturn_jump(RzParser.Return_jumpContext ctx) throws SemanticException {

        String filePos = "line " +  ctx.start.getLine()
                + ":" + ctx.start.getCharPositionInLine() + " -> ";

        if (visble) System.out.println("<RETRUN> return " + (ctx.getChildCount() > 2 ?  ctx.expr().getText() : ""));
        if (tpa.getCurrentFunc().getReturnType() instanceof VoidType && ctx.getChildCount() == 2) {
            hasReturn = true;
        } else if (!(tpa.getCurrentFunc().getReturnType() instanceof VoidType) && ctx.getChildCount() > 2) {
            if (tpa.getCurrentFunc().getReturnType().equals(tpa.getTypeofExpr(ctx.expr(), symt))) {
                hasReturn = true;
            } else {
                throw new SemanticException(filePos + "Semantic Error: return type should be a '"
                        + tpa.getCurrentFunc().getReturnType().toString() + "' here");
            }
        }
        return null;
    }

    @Override
    public Void visitSelec_stmt(RzParser.Selec_stmtContext ctx) throws SemanticException {

        String filePos = "line " +  ctx.start.getLine()
                + ":" + ctx.start.getCharPositionInLine() + " -> ";

        if (visble) System.out.println("\t\t<Selec_Stmt>");
        if (!tpa.getTypeofExpr(ctx.expr(), symt).equals(new BoolType())) {
            throw new SemanticException(filePos + "Semantic Error: expression in if () statement should return bool");
        }

        if (ctx.getChild(4) instanceof RzParser.StmtContext) {
            visitStmt((RzParser.StmtContext) ctx.getChild(4));
        } else if (ctx.getChild(4) instanceof RzParser.Var_declContext) {
            SymbolTable symbolTable = new SymbolTable(symt);
            this.symt = symbolTable;
            visitVar_decl((RzParser.Var_declContext) ctx.getChild(4));
            symbolTable = symt.getParent();
            this.symt = symbolTable;
        }
        if (ctx.getChildCount() > 5) {
            if (ctx.getChild(6) instanceof RzParser.StmtContext) {
                visitStmt((RzParser.StmtContext) ctx.getChild(6));
            } else if (ctx.getChild(6) instanceof RzParser.Var_declContext) {
                SymbolTable symbolTable = new SymbolTable(symt);
                this.symt = symbolTable;
                visitVar_decl((RzParser.Var_declContext) ctx.getChild(6));
                symbolTable = symt.getParent();
                this.symt = symbolTable;
            }
        }
        return null;
    }

    @Override
    public Void visitIteration_stmt(RzParser.Iteration_stmtContext ctx) throws SemanticException {

        String filePos = "line " +  ctx.start.getLine()
                + ":" + ctx.start.getCharPositionInLine() + " -> ";

        if (visble) System.out.println("\t\t<Iteration_Stmt> " + ctx.getText());

        for (int i = 0; i < ctx.expr().size(); ++i) {
            tpa.getTypeofExpr(ctx.expr(i), symt);
        }

        if (ctx.getChild(0).getText().equals("for")) {
            if (ctx.getChild(2).getText().equals(";")) {
                if (!ctx.getChild(3).getText().equals(";")) {
                    if (!tpa.getTypeofExpr(ctx.getChild(3), symt).equals(new BoolType())) {
                        throw new SemanticException(filePos + "Semantic Error: Middle expression in for(_;_expr_;_) {} should be a bool");
                    }
                }
            } else {
                if (!ctx.getChild(4).getText().equals(";")) {
                    if (!tpa.getTypeofExpr(ctx.getChild(4), symt).equals(new BoolType())) {
                        throw new SemanticException(filePos + "Semantic Error: Middle expression in for(_;_expr_;_) {} should be a bool");
                    }
                }
            }
            int toStmtInd = 5 + ctx.expr().size();
            if (ctx.getChild(toStmtInd) instanceof RzParser.StmtContext) {
                inLoop += 1;
                visitStmt((RzParser.StmtContext) ctx.getChild(toStmtInd));
                inLoop -= 1;
            } else if (ctx.getChild(toStmtInd) instanceof RzParser.Var_declContext) {
                inLoop += 1;
                SymbolTable symbolTable = new SymbolTable(symt);
                this.symt = symbolTable;
                visitVar_decl((RzParser.Var_declContext) ctx.getChild(toStmtInd));
                symbolTable = symt.getParent();
                this.symt = symbolTable;
                inLoop -= 1;
            }
        }

        if (ctx.getChild(0).getText().equals("while")) {
            if (!(tpa.getTypeofExpr(ctx.expr(0), symt).equals(new BoolType()))) {
                throw new SemanticException(filePos + "Semantic Error: Expression in while(_expr_) {} statement should be bool");
            }
            if (ctx.getChild(4) instanceof RzParser.StmtContext) {
                inLoop += 1;
                visitStmt((RzParser.StmtContext) ctx.getChild(4));
                inLoop -= 1;
            } else if (ctx.getChild(4) instanceof RzParser.Var_declContext) {
                inLoop += 1;
                SymbolTable symbolTable = new SymbolTable(symt);
                this.symt = symbolTable;
                visitVar_decl((RzParser.Var_declContext) ctx.getChild(4));
                symbolTable = symt.getParent();
                this.symt = symbolTable;
                inLoop -= 1;
            }
        }

        return null;
    }

    @Override
    public Void visitContinue_jump(RzParser.Continue_jumpContext ctx) throws SemanticException {

        String filePos = "line " +  ctx.start.getLine()
                + ":" + ctx.start.getCharPositionInLine() + " -> ";

        if (inLoop == 0) {
            throw new SemanticException(filePos + "Semantic Error: 'continue' is not in a loop");
        }
        return null;
    }

    @Override
    public Void visitBreak_jump(RzParser.Break_jumpContext ctx) {

        String filePos = "line " +  ctx.start.getLine()
                + ":" + ctx.start.getCharPositionInLine() + " -> ";

        if (inLoop == 0) {
            throw new SemanticException(filePos + "Semantic Error: 'break' is not in a loop");
        }
        return null;
    }
}
