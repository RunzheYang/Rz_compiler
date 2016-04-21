package Rz_compiler.frontend.semantics;

import Rz_compiler.errors.SemanticException;
import Rz_compiler.frontend.semantics.identifier.*;
import Rz_compiler.frontend.syntax.RzBaseVisitor;
import Rz_compiler.frontend.syntax.RzParser;

/**
 * Created by YRZ on 4/2/16.
 */
public class GetClass extends RzBaseVisitor<Void> {

    private SymbolTable symt;
    private boolean visble;

    public GetClass(boolean _visble) {
        symt = new SymbolTable();
        initializeSymt();
        this.visble = _visble;
        if (visble) System.out.println("----------Semantic Check Stage 1------------");
    }

    public SymbolTable getSymt() {
        return symt;
    }

    private void initializeSymt() {
        FunctionType printFunc =  new FunctionType(new VoidType());
        printFunc.addParameter("str", new StringType());
        symt.add("print", printFunc);
        symt.add("println", printFunc);

        FunctionType toStringFunc = new FunctionType(new StringType());
        toStringFunc.addParameter("i", new IntType());
        symt.add("toString", toStringFunc);

        FunctionType getStringFunc = new FunctionType(new StringType());
        symt.add("getString", getStringFunc);

        FunctionType getIntFunc = new FunctionType(new IntType());
        symt.add("getInt", getIntFunc);
    }

    @Override
    public Void visitClass_decl(RzParser.Class_declContext ctx) throws SemanticException {
        String classname =  ctx.ident().getText();
        if (symt.lookup(classname) == null) {
            symt.add(classname, new ClassType(classname));
            if (visble) System.out.println("<Class Definition> " + classname);
        } else {
            throw new SemanticException("Semantic Error: Repeated or conflict class declaration for '" + classname + "'");
        }
        return null;
    }
}
