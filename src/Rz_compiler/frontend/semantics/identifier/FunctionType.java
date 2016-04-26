package Rz_compiler.frontend.semantics.identifier;

import Rz_compiler.frontend.semantics.SymbolTable;

import java.util.ArrayList;

/**
 * Created by YRZ on 3/30/16.
 */
public class FunctionType extends Identifier {

    private Type returnType;
    private ArrayList<Type> parameters;
    private SymbolTable symt;

    public FunctionType() {
        returnType = null;
        parameters = null;
        symt = null;
    }

    public FunctionType(Type returnType) {
        this.returnType = returnType;
        parameters = new ArrayList<Type>();
        symt = new SymbolTable();
    }

    public void addSymbolTable(SymbolTable symt) {
        this.symt = new SymbolTable(symt);
    }

    public void renewOuterSymt(SymbolTable symbolTable) {
        this.symt.repalceParent(symbolTable);
    }

    public void addParameter(String name, Type tp) {
        parameters.add(tp);
        symt.add(name, new Variable(tp));
    }

    public Type getReturnType() {
        return returnType;
    }

    public ArrayList<Type> getParamList() {
        return parameters;
    }

    public SymbolTable getSymTable() {
        return symt;
    }

    public int getParamCount() {
        return parameters.size();
    }

    @Override
    public String toString() {
        return "function";
    }

    @Override
    public Object clone() throws CloneNotSupportedException {
        FunctionType o = (FunctionType) super.clone();
        o.returnType =null;
        if (returnType != null) {
            o.returnType = (Type) returnType.clone();
        }
        o.symt = new SymbolTable();
        o.parameters = new ArrayList<>();
        if (parameters.size() > 0) {
            for (Type para : parameters) {
                Type newpara = (Type) para.clone();
                o.parameters.add(newpara);
            }
        }

        return o;
    }
}
