package Rz_compiler.semantics;

import Rz_compiler.errors.SemanticException;
import Rz_compiler.semantics.identifier.*;
import Rz_compiler.syntax.RzBaseVisitor;
import Rz_compiler.syntax.RzParser;

import java.util.ArrayList;

/**
 * Created by YRZ on 3/30/16.
 */
public class GetFuncAndClassMem extends RzBaseVisitor<Void> {

    private TypeAnalyser tpa;
    private SymbolTable symt;
    private boolean visble;

    public GetFuncAndClassMem(SymbolTable symt, boolean _visble) {
        tpa = new TypeAnalyser();
        this.symt = symt;
        this.visble = _visble;
        if (visble) System.out.println("----------Semantic Check Stage 2------------");
    }

    public SymbolTable getSymt() {
        return symt;
    }

    @Override
    public Void visitFunc_def(RzParser.Func_defContext ctx) throws SemanticException {
        String funcname = ctx.ident().getText();
        if (symt.lookup(funcname) == null) {
            FunctionType functype = new FunctionType(tpa.getTypeofType(ctx.type(), symt));
            functype.addSymbolTable(symt);
            if (ctx.getChildCount() > 5) {
                if (funcname.equals("main")) {
                    throw new SemanticException("Semantic Error: function 'main()' can not have any argument");
                }
                ArrayList<String> param_names =  new ArrayList<String>();
                for (int i = 0; i < (ctx.param_list().getChildCount() + 1) / 3; ++i) {
                    String paramname = ctx.param_list().ident(i).getText();
                    if (param_names.contains(paramname)) {
                        throw new SemanticException("Semantic Error: Repeated function parameter name '" + paramname + "'");
                    } else {
                        param_names.add(paramname);
                        functype.addParameter(paramname, tpa.getTypeofType(ctx.param_list().type(i), symt));
                    }
                }
            }
            if (visble) System.out.println("<Function Declaration> " + funcname
                    + " \t <return type> (" + functype.getReturnType().toString() + ")");
            symt.add(funcname, functype);
        } else {
            throw new SemanticException("Semantic Error: Repeated or conflict function declaration for '" + funcname + "'");
        }
        return null;
    }

    @Override
    public Void visitClass_decl(RzParser.Class_declContext ctx) throws SemanticException {
        String classname = ctx.ident().getText();
        ClassType classtype = (ClassType) symt.lookup(classname);
        if (ctx.member_decl_list().getChildCount() != 0) {
            for (int i = 0; i < ctx.member_decl_list().getChildCount() / 3; ++i) {
                String memname = ctx.member_decl_list().ident(i).getText();
                if (classtype.getMembers().containsKey(memname)) {
                    throw new SemanticException("Semantic Error: Repeated class member '" + memname + "'");
                } else {
                    Variable memvariable = new Variable(tpa.getTypeofType(ctx.member_decl_list().type(i), symt));
                    classtype.addMember(memname, memvariable);
                    if (visble) System.out.println("<Class> " + classname
                            + "\t <member> " + memvariable.getType().toString() + " " +  memname);
                }
            }
            symt.rewrite(classname, classtype);
        }
        return null;
    }
}
