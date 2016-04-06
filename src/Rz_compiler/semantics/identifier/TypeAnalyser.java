package Rz_compiler.semantics.identifier;

import Rz_compiler.semantics.SymbolTable;
import Rz_compiler.syntax.RzParser;
import Rz_compiler.errors.*;

import org.antlr.v4.runtime.tree.ParseTree;


/**
 * Created by YRZ on 3/30/16.
 */
public class TypeAnalyser {

    private FunctionType currentFunc;
    private boolean inFunc;

    public TypeAnalyser() {
        currentFunc = null;
        inFunc = true;
    }

    public void setCurrentFunc(FunctionType func) {
        this.currentFunc = func;
        inFunc = false;
    }

    public void setInFunc() {
        inFunc = true;
    }

    public boolean isInFunc() {
        return inFunc;
    }

    public FunctionType getCurrentFunc() {
        return currentFunc;
    }

    public Type getTypeofType(ParseTree ctx, SymbolTable symt) throws SemanticException {

        //baseType
        if (ctx instanceof RzParser.BASETYPEContext) {
            return getTypeofBaseType(ctx.getChild(0));
        }

        //classType
        if (ctx instanceof RzParser.CLASSTYPEContext) {
            Identifier ctype = symt.lookup(ctx.getChild(0).getText());
            if (ctype != null && ctype instanceof ClassType) {
                return (ClassType) ctype;
            }
            throw new SemanticException("Semantic Error: undefined class type '" + ctx.getChild(0).getText() + "'");
        }

        //arrayType
        if (ctx instanceof RzParser.TypeContext) {
            return new ArrayType(getTypeofType(ctx.getChild(0), symt));
        }

        throw new SemanticException("Semantic Error: Invalid type '" + ctx.getChild(0).getText() + "'");
    }

    public Type getTypeofBaseType(ParseTree ctx) throws SemanticException {

        //void
        if(ctx.getText().equals(new VoidType().toString())) {
            return new VoidType();
        }
        //int
        if(ctx.getText().equals(new IntType().toString())) {
            return new IntType();
        }
        //bool
        if (ctx.getText().equals(new BoolType().toString())) {
            return new BoolType();
        }
        //string
        if (ctx.getText().equals(new StringType().toString())) {
            return new StringType();
        }

        throw new SemanticException("Semantic Error: Invalid base type '" + ctx.getText() + "'");
    }

    public Type getTypeofIdent(String ident, SymbolTable symt) throws SemanticException {

        Identifier identType = symt.lookup(ident);
        //variable
        if (identType instanceof Variable) {
            return ((Variable) identType).getType();
        }
        //classtype
        if (identType instanceof Type) {
            return (Type) identType;
        }
        //function
        if (identType instanceof FunctionType) {
            return ((FunctionType) identType).getReturnType();
        }
        throw new SemanticException("Semantic Error: Unknown identifier '" + ident + "'");
    }

    public Type getTypeofExpression(ParseTree ctx, SymbolTable symt) throws SemanticException {

        if (ctx instanceof RzParser.CREATIONContext) {
            return getTypeofCreationExpr(ctx.getChild(0), symt);
        }

        if (ctx instanceof RzParser.MULTIContext) {
            Type type1 = getTypeofExpression(ctx.getChild(0), symt);
            Type type2 = getTypeofExpression(ctx.getChild(2), symt);
            if (type1.equals(type2)) {
                if ((ctx.getChild(1).getText().equals("/")
                        || ctx.getChild(1).getText().equals("%"))
                        && type2 instanceof IntType) {
                    return new IntType();
                } else if (ctx.getChild(1).getText().equals("*")) {
                    return new IntType();
                }
            }
            throw new SemanticException("Semantic Error: Invalid multiple expression '" + ctx.getText() + "'");
        }

        if (ctx instanceof RzParser.ADDITIVEContext) {
            Type type1 = getTypeofExpression(ctx.getChild(0), symt);
            Type type2 = getTypeofExpression(ctx.getChild(2), symt);
            if (type1.equals(type2)) {
                if ((ctx.getChild(1).getText().equals("+")
                        ||  ctx.getChild(1).getText().equals("-"))
                        && type1 instanceof IntType) {
                    return new IntType();
                } else if (ctx.getChild(1).getText().equals("+")
                        && type1 instanceof StringType) {
                    return new StringType();
                }
            }
            throw new SemanticException("Semantic Error: Invalid additive expression '" + ctx.getText() + "'");
        }

        if (ctx instanceof RzParser.SHIFTContext) {
            Type type1 = getTypeofExpression(ctx.getChild(0), symt);
            Type type2 = getTypeofExpression(ctx.getChild(2), symt);
            if (type1 instanceof IntType && type2 instanceof IntType) {
                return new IntType();
            }
            throw new SemanticException("Semantic Error: Invalid shift expression '" + ctx.getText() + "'");
        }

        if (ctx instanceof RzParser.RELATIONContext) {
            Type type1 = getTypeofExpression(ctx.getChild(0), symt);
            Type type2 = getTypeofExpression(ctx.getChild(2), symt);
            if (type1 instanceof IntType && type2 instanceof IntType) {
                return new BoolType();
            }
            if (type1 instanceof StringType && type2 instanceof StringType) {
                return new BoolType();
            }
            throw new SemanticException("Semantic Error: Invalid comparing expression '" + ctx.getText() + "'");
        }

        if (ctx instanceof RzParser.EQUALITYContext) {
            Type type1 = getTypeofExpression(ctx.getChild(0), symt);
            Type type2 = getTypeofExpression(ctx.getChild(2), symt);
            if (type1.equals(type2)
                    && !(type1 instanceof ArrayType)
                    && !(type1 instanceof ClassType)
                    && !(type1 instanceof VoidType)) {
                return new BoolType();
            }
            if ((type1 instanceof NullType
                    && (type2 instanceof ArrayType || type2 instanceof ClassType))
                    ||(type2 instanceof NullType
                    && (type1 instanceof ArrayType || type1 instanceof ClassType))) {
                return new BoolType();
            }
            throw new SemanticException("Semantic Error: Invalid comparing expression '" + ctx.getText() + "'");
        }

        if (ctx instanceof RzParser.ANDContext
                || ctx instanceof RzParser.EXCLUSIVE_ORContext
                || ctx instanceof RzParser.INCLUSIVE_ORContext
                || ctx instanceof RzParser.LOGIC_ANDContext
                || ctx instanceof RzParser.LOGIC_ORContext) {
            Type type1 = getTypeofExpression(ctx.getChild(0), symt);
            Type type2 = getTypeofExpression(ctx.getChild(2), symt);
            if (type1.equals(type2)
                    && !(type1 instanceof ClassType)
                    && !(type1 instanceof VoidType)
                    && !(type1 instanceof StringType)) {
                return type1;
            }
            throw new SemanticException("Semantic Error: Invalid logic or bit operation '" + ctx.getText() + "'");
        }
        throw new SemanticException("Semantic Error: Invalid type or not an expression '" + ctx.getText() + "'");
    }

    public Type getTypeofCreationExpr(ParseTree ctx, SymbolTable symt) throws SemanticException {

        if (ctx instanceof RzParser.NEWTYPEContext) {
            return getTypeofType(ctx.getChild(1), symt);
        }
        if (ctx instanceof RzParser.NEWCLASSTYPEContext) {
            return getTypeofIdent(ctx.getChild(1).getText(), symt);
        }
        if (ctx instanceof RzParser.NEWARRAYTYPEContext) {
            return new ArrayType(getTypeofArray(ctx.getChild(1), symt));
        }
        if (ctx instanceof RzParser.UNARYEXPRContext) {
            return getTypeofUnaryExpr(ctx.getChild(0), symt);
        }
        throw new SemanticException("Semantic Error: Invalid creation expression '" + ctx.getText() + "'");
    }

    public Type getTypeofArray(ParseTree ctx, SymbolTable symt) throws SemanticException {

        if (ctx instanceof RzParser.ARR_FINAL_BASEContext) {
            return getTypeofBaseType(ctx.getChild(0));
        }
        if (ctx instanceof RzParser.ARR_FINAL_CLASSContext) {
            if (symt.lookup(ctx.getChild(0).getText()) instanceof Type) {
                return (Type) symt.lookup(ctx.getChild(0).getText());
            }
        }
        if (ctx instanceof RzParser.ARR_MOREContext) {
            return new ArrayType(getTypeofArray(ctx.getChild(0), symt));
        }

        throw new SemanticException("Semantic Error: Invalid array type on right '" + ctx.getText() + "'");
    }

    public Type getTypeofUnaryExpr(ParseTree ctx, SymbolTable symt) throws SemanticException {

        if (ctx.getChild(0) instanceof RzParser.Postfix_exprContext) {
            return getTypeofPostExpr(ctx.getChild(0), symt);
        }
        if (ctx.getChild(1) instanceof RzParser.Unary_exprContext) {
            if (ctx.getChild(1) instanceof RzParser.Unary_exprContext) {
                Type utype = getTypeofUnaryExpr(ctx.getChild(1), symt);
                if (ctx.getChild(0).getText().equals("!") && utype instanceof BoolType) {
                    return utype;
                }
                if (ctx.getChild(0).getText().equals("++") || ctx.getChild(0).getText().equals("--")) {
                    if (!(getIdentofUnaryExpr(ctx.getChild(1), symt) instanceof Variable)) {
                        throw new SemanticException("Semantic Error: '++' or '--' cannot be apply to the '" + ctx.getChild(1).getText() + "'");
                    }
                }
                if ((!ctx.getChild(0).getText().equals("!")) &&
                        ((utype instanceof BoolType)
                        || (utype instanceof IntType))) {
                    return utype;
                }
                throw new SemanticException("Semantic Error: Unary operator cannot be apply to the '" + utype.toString() + "'");
            }
        }
        throw new SemanticException("Semantic Error: Invalid unary expression");
    }

    public Type getTypeofPostExpr(ParseTree ctx, SymbolTable symt) throws SemanticException {

        if (ctx.getChild(0) instanceof RzParser.Primary_exprContext) {
            return getTypeofPrimaryExpr(ctx.getChild(0), symt);
        }
        if (ctx.getChild(0) instanceof RzParser.Postfix_exprContext) {

            Identifier identPrimary = getIdentofPostExpr (ctx.getChild(0), symt);
            if (identPrimary instanceof Variable) {
                Type typePrimary = ((Variable) identPrimary).getType();

                if (typePrimary instanceof ArrayType
                        && ctx.getChild(1) instanceof RzParser.SubscriptContext) {
                    int nowdim = (new ArrayType()).countdim(typePrimary.toString());
                    if (nowdim >= 2) {
                        ArrayType typehere = new ArrayType(typePrimary);
                        typehere.decreasedim();
                        typehere.decreasedim();
                        return typehere;
                    } else if (nowdim == 1) {
                        return ((ArrayType) typePrimary).getBasedtype();
                    }
                    throw new SemanticException("Semantic Error: Invalid subscript '" +  ctx.getText() + "'");
                }

                if (typePrimary instanceof ClassType
                        && ctx.getChild(1) instanceof RzParser.MemberContext) {
                    String memname = ctx.getChild(1).getChild(1).getText();
                    if (((ClassType) typePrimary).getMembers().get(memname) != null) {
                        Type memtype = ((ClassType) typePrimary).getMembers().get(memname).getType();
                        if (memtype != null) {
                            return memtype;
                        }
                    }
                    throw new SemanticException("Semantic Error: Invalid class member '" + ctx.getText() + "'");
                }

                if (typePrimary instanceof IntType
                        &&  (ctx.getChild(1) instanceof RzParser.PlusPlusContext
                        || ctx.getChild(1) instanceof RzParser.MinusMinusContext)) {
                    return new IntType();
                }
                if (ctx.getChild(1) instanceof RzParser.Build_in_FuntionContext) {

                    //int size()
                    if (typePrimary instanceof ArrayType
                            && ((RzParser.Build_in_FuntionContext) ctx.getChild(1)).ident().getText().equals("size")
                            && (ctx.getChild(1)).getChildCount() == 4) {
                        return new IntType();
                    }

                    if (typePrimary instanceof StringType) {
                        //int length()
                        if (((RzParser.Build_in_FuntionContext) ctx.getChild(1)).ident().getText().equals("length")
                                && (ctx.getChild(1)).getChildCount() == 4) {
                            return new IntType();
                        }
                        //int parseInt()
                        if (((RzParser.Build_in_FuntionContext) ctx.getChild(1)).ident().getText().equals("parseInt")
                                && (ctx.getChild(1)).getChildCount() == 4) {
                            return new IntType();
                        }
                        //string substring(int left, int right)
                        if (((RzParser.Build_in_FuntionContext) ctx.getChild(1)).ident().getText().equals("substring")) {
                            if (ctx.getChild(1).getChildCount() > 4) {
                                RzParser.ArgumentsContext arg =
                                        ((RzParser.Build_in_FuntionContext) ctx.getChild(1)).arguments();
                                if (arg.assign_expr().size() == 2) {
                                    if ((getTypeofAssignExpr(arg.assign_expr(0), symt) instanceof IntType)
                                            && (getTypeofAssignExpr(arg.assign_expr(1), symt) instanceof IntType)) {
                                        return new StringType();
                                    } else {
                                        throw new SemanticException("Semantic Error: unmatched argument" +
                                                " in build-in function substring(int left, int right)");
                                    }
                                }
                            }
                            throw new SemanticException("Semantic Error: number of parameters is not equal " +
                                    "to which in build-in function substring(int left, int right)");
                        }
                        //int ord(int pos)
                        if (((RzParser.Build_in_FuntionContext) ctx.getChild(1)).ident().getText().equals("ord")) {
                            if (ctx.getChild(1).getChildCount() > 4) {
                                RzParser.ArgumentsContext arg =
                                        ((RzParser.Build_in_FuntionContext) ctx.getChild(1)).arguments();
                                if (arg.assign_expr().size() == 1) {
                                    if (getTypeofAssignExpr(arg.assign_expr(0), symt) instanceof IntType) {
                                        return new IntType();
                                    } else {
                                        throw new SemanticException("Semantic Error: unmatched argument in build-in " +
                                                "function ord(int pos)");
                                    }
                                }
                            }
                            throw new SemanticException("Semantic Error: unmatched argument in build-in " +
                                    "function ord(int pos)");
                        }
                    }
                }
            }

            if (identPrimary instanceof FunctionType
                    && ctx.getChild(1) instanceof RzParser.FunctionCallContext) {

                if (ctx.getChild(1).getChildCount() == 2 && ((FunctionType) identPrimary).getParamCount() == 0) {

                    return ((FunctionType) identPrimary).getReturnType();

                } else if (ctx.getChild(1).getChildCount() > 2 && ((FunctionType) identPrimary).getParamCount() > 0) {

                    if ((ctx.getChild(1).getChild(1).getChildCount() + 1) / 2
                            == ((FunctionType) identPrimary).getParamCount()) {

                        for (int i = 0; i < ((FunctionType) identPrimary).getParamCount(); ++i) {
                            if (ctx.getChild(1).getChild(1).getChild(2 * i) instanceof RzParser.Assign_exprContext) {

                                if (!getTypeofAssignExpr(ctx.getChild(1).getChild(1).getChild(2 * i), symt).equals(
                                        ((FunctionType) identPrimary).getParamList().get(i))) {
                                    throw new SemanticException("Semantic Error: unmatched parameter '"
                                            + ctx.getChild(1).getChild(1).getChild(2 * i).getText() + "' in '" + ctx.getChild(0).getText() + "'");
                                }
                            }
                        }

                        return ((FunctionType) identPrimary).getReturnType();
                    }
                    throw new SemanticException("Semantic Error: number of parameters is not equal to which " +
                            "in the function declaration '" + ctx.getChild(0).getText() + "'");
                }
                throw new SemanticException("Semantic Error: Invalid function call '" + ctx.getChild(0).getText() + "(...)'");
            }

            if (identPrimary instanceof ClassType
                    && ctx.getChild(1) instanceof RzParser.MemberContext) {
                String memname = ctx.getChild(1).getChild(1).getText();
                Type memtype = ((ClassType) identPrimary).getMembers().get(memname).getType();
                if (memtype != null) {
                    return memtype;
                }
                throw new SemanticException("Semantic Error: Invalid member '" + memname + "'");
            }

//            if (identPrimary instanceof IntType
//                    &&  (ctx.getChild(1) instanceof RzParser.PlusPlusContext
//                    || ctx.getChild(1) instanceof RzParser.MinusMinusContext)) {
//                return new IntType();
//            }

            // int size()
            if (identPrimary instanceof ArrayType) {
                if (ctx.getChild(1) instanceof RzParser.SubscriptContext) {
                    int nowdim = (new ArrayType()).countdim(identPrimary.toString());
                    if (nowdim >= 2) {
                        ArrayType typehere = new ArrayType((Type) identPrimary);
                        typehere.decreasedim();
                        typehere.decreasedim();
                        return typehere;
                    } else if (nowdim == 1) {
                        return ((ArrayType) identPrimary).getBasedtype();
                    }
                    throw new SemanticException("Semantic Error: Invalid subscript '" + ctx.getText() + "'");
                }

                if (((RzParser.Build_in_FuntionContext) ctx.getChild(1)).ident().getText().equals("size")
                        && ctx.getChild(1).getChildCount() == 4) {
                    return new IntType();
                }
            }

            if (identPrimary instanceof StringType) {
                //int length()
                if (((RzParser.Build_in_FuntionContext) ctx.getChild(1)).ident().getText().equals("length")
                        && ctx.getChild(1).getChildCount() == 4) {
                    return new IntType();
                }
                //int parseInt()
                if (((RzParser.Build_in_FuntionContext) ctx.getChild(1)).ident().getText().equals("parseInt")
                        && ctx.getChild(1).getChildCount() == 4) {
                    return new IntType();
                }
                //int substring(int left, int right)
                if (((RzParser.Build_in_FuntionContext) ctx.getChild(1)).ident().getText().equals("substring")) {
                    if (ctx.getChild(1).getChildCount() > 4) {
                        RzParser.ArgumentsContext arg =
                                ((RzParser.Build_in_FuntionContext) ctx.getChild(1)).arguments();
                        if (arg.assign_expr().size() == 2) {
                            if ((getTypeofAssignExpr(arg.assign_expr(0), symt) instanceof IntType)
                                    && (getTypeofAssignExpr(arg.assign_expr(1), symt) instanceof IntType)) {
                                return new StringType();
                            } else {
                                throw new SemanticException("Semantic Error: unmatched argument in " +
                                        "build-in function substring(int left, int right)");
                            }
                        }
                    }
                    throw new SemanticException("Semantic Error: number of parameters is not equal to which" +
                            " in build-in function substring(int left, int right)");
                }
                //int ord(int pos)
                if (((RzParser.Build_in_FuntionContext) ctx.getChild(1)).ident().getText().equals("ord")) {
                    if (ctx.getChild(1).getChildCount() > 4) {
                        RzParser.ArgumentsContext arg =
                                ((RzParser.Build_in_FuntionContext) ctx.getChild(1)).arguments();
                        if (arg.assign_expr().size() == 1) {
                            if (getTypeofAssignExpr(arg.assign_expr(0), symt) instanceof IntType) {
                                return new IntType();
                            } else {
                                throw new SemanticException("Semantic Error: unmatched argument in " +
                                        "build-in function ord(int pos)");
                            }
                        }
                    }
                    throw new SemanticException("Semantic Error: unmatched argument in " +
                            "build-in function ord(int pos)");
                }
            }
        }
        throw new SemanticException("Semantic Error: Invalid post_expression '" + ctx.getText() + "'");
    }

    public Type getTypeofPrimaryExpr(ParseTree ctx, SymbolTable symt) throws SemanticException {

        if (ctx instanceof RzParser.Primary_identContext) {
            return getTypeofIdent(ctx.getChild(0).getText(), symt);
        }
        if (ctx instanceof RzParser.Primary_const_intContext) {
            return new IntType();
        }
        if (ctx instanceof RzParser.Primary_const_boolContext) {
            return new BoolType();
        }
        if (ctx instanceof RzParser.Primary_const_stringContext) {
            return new StringType();
        }
        if (ctx instanceof RzParser.Primary_nullContext) {
            return new NullType();
        }
        if (ctx instanceof RzParser.Primary_PexprPContext) {
            return getTypeofExpr(ctx.getChild(1), symt);
        }
        throw new SemanticException("Semantic Error: Invalid primary expression '" + ctx.getText() + "'");
    }

    public Type getTypeofExpr(ParseTree ctx, SymbolTable symt) throws SemanticException {

        if (ctx.getChild(0) instanceof RzParser.Assign_exprContext) {
            return getTypeofAssignExpr(ctx.getChild(0), symt);
        }
        throw new SemanticException("Semantic Error: Invalid expr '" + ctx.getText() + "'");
    }

    public Type getTypeofAssignExpr(ParseTree ctx, SymbolTable symt) {

        if (ctx.getChild(0) instanceof RzParser.ExpressionContext) {
            return getTypeofExpression(ctx.getChild(0), symt);
        }
        if (ctx.getChild(0) instanceof RzParser.Unary_exprContext) {
            Identifier identL = getIdentofUnaryExpr(ctx.getChild(0), symt);
            Type typeL = getTypeofUnaryExpr(ctx.getChild(0), symt);
            Type typeR = getTypeofAssignExpr(ctx.getChild(2), symt);
            if (identL instanceof Variable && typeL.equals(typeR)) {
                return typeL;
            }
            if (identL instanceof Variable
                    && (typeL instanceof ClassType || typeL instanceof ArrayType)
                    && typeR instanceof NullType) {
                return typeR;
            }
        }
        throw new SemanticException("Semantic Error: Invalid assignment '" + ctx.getText() + "'");
    }

    public Identifier getIdentofExpr(ParseTree ctx, SymbolTable symt) throws SemanticException {

        if (ctx.getChild(0) instanceof RzParser.Assign_exprContext) {
            return getIdentofAssignExpr(ctx.getChild(0), symt);
        }
        throw new SemanticException("Semantic Error: Invalid expr '" + ctx.getText() + "'");
    }


    public Identifier getIdentofAssignExpr(ParseTree ctx, SymbolTable symt) throws SemanticException {
        if (ctx.getChild(0) instanceof RzParser.ExpressionContext) {
            return getIdentofExpression(ctx.getChild(0), symt);
        }
        if (ctx.getChild(0) instanceof RzParser.Unary_exprContext) {
            return getTypeofAssignExpr(ctx, symt);
        }
        throw new SemanticException("Semantic Error: Invalid assignment '" + ctx.getText() + "'");
    }

    public Identifier getIdentofExpression(ParseTree ctx, SymbolTable symt) throws SemanticException {

        if (ctx instanceof RzParser.CREATIONContext) {
            return getIdentofCreationExpr(ctx.getChild(0), symt);
        }

        if (ctx instanceof RzParser.MULTIContext
                || ctx instanceof RzParser.ADDITIVEContext
                || ctx instanceof RzParser.SHIFTContext
                || ctx instanceof RzParser.RELATIONContext
                || ctx instanceof RzParser.EQUALITYContext
                || ctx instanceof RzParser.ANDContext
                || ctx instanceof RzParser.EXCLUSIVE_ORContext
                || ctx instanceof RzParser.INCLUSIVE_ORContext
                || ctx instanceof RzParser.LOGIC_ANDContext
                || ctx instanceof RzParser.LOGIC_ORContext) {
            return getTypeofExpression(ctx, symt);
        }
        throw new SemanticException("Semantic Error: Invalid type or not an expression '" + ctx.getText() + "'");
    }

    public Identifier getIdentofCreationExpr(ParseTree ctx, SymbolTable symt) throws SemanticException {

        if (ctx instanceof RzParser.NEWTYPEContext
                || ctx instanceof RzParser.NEWCLASSTYPEContext
                || ctx instanceof RzParser.NEWARRAYTYPEContext) {
            return getTypeofType(ctx.getChild(1), symt);
        }

        if (ctx instanceof RzParser.UNARYEXPRContext) {
            return getIdentofUnaryExpr(ctx.getChild(0), symt);
        }
        throw new SemanticException("Semantic Error: Invalid creation expression '" + ctx.getText() + "'");
    }

    public Identifier getIdentofUnaryExpr(ParseTree ctx, SymbolTable symt) throws SemanticException {

        if (ctx.getChild(0) instanceof RzParser.Postfix_exprContext) {
            return getIdentofPostExpr(ctx.getChild(0), symt);
        }
        if (ctx.getChild(1) instanceof RzParser.Unary_exprContext) {
            Type utype = getTypeofUnaryExpr(ctx.getChild(1), symt);
            if (ctx.getChild(0).getText().equals("!") && utype instanceof BoolType) {
                return utype;
            }
            if (!ctx.getChild(0).getText().equals("!") &&
                    ((utype instanceof BoolType)
                    || (utype instanceof IntType))) {
                return utype;
            }
            throw new SemanticException("Semantic Error: Unary operator cannot be apply to a " + utype.toString());
        }
        throw new SemanticException("Semantic Error: Invalid unary expression");
    }

    public Identifier getIdentofPostExpr(ParseTree ctx, SymbolTable symt) throws SemanticException {
        if (ctx.getChild(0) instanceof RzParser.Primary_exprContext) {
            return getIdentofPrimary(ctx.getChild(0), symt);
        }
        if (ctx.getChild(0) instanceof RzParser.Postfix_exprContext) {

            Identifier identPrimary = getIdentofPostExpr (ctx.getChild(0), symt);


            if (identPrimary instanceof Variable) {
                Type typePrimary = ((Variable) identPrimary).getType();
                if (typePrimary instanceof ArrayType
                    && ctx.getChild(1) instanceof RzParser.SubscriptContext) {
                    int nowdim = (new ArrayType()).countdim(typePrimary.toString());
                    if (nowdim >= 2) {
                        ArrayType typehere = new ArrayType(typePrimary);
                        typehere.decreasedim();
                        typehere.decreasedim();
                        return new Variable(typehere);
                    } else if (nowdim == 1) {
                        return new Variable(((ArrayType) typePrimary).getBasedtype());
                    }
                    throw new SemanticException("Semantic Error: Invalid subscript '" + ctx.getText() + "'");
                }
                if (typePrimary instanceof ClassType
                        && ctx.getChild(1) instanceof RzParser.MemberContext) {
                    String memname = ctx.getChild(1).getChild(1).getText();
                    if (((ClassType) typePrimary).getMembers().get(memname) != null) {
                        Type memtype = ((ClassType) typePrimary).getMembers().get(memname).getType();
                        if (memtype != null) {
                            return new Variable(memtype);
                        }
                    }
                    throw new SemanticException("Semantic Error: Invalid member '" + ctx.getText() + "'");
                }
                if (typePrimary instanceof IntType
                        &&  (ctx.getChild(1) instanceof RzParser.PlusPlusContext
                        || ctx.getChild(1) instanceof RzParser.MinusMinusContext)) {
                    return new IntType();
                }
                if (ctx.getChild(1) instanceof RzParser.Build_in_FuntionContext) {

                    //int size()
                    if (typePrimary instanceof ArrayType
                            && ((RzParser.Build_in_FuntionContext) ctx.getChild(1)).ident().getText().equals("size")
                            && (ctx.getChild(1)).getChildCount() == 4) {
                        return new IntType();
                    }

                    if (typePrimary instanceof StringType) {
                        //int length()
                        if (((RzParser.Build_in_FuntionContext) ctx.getChild(1)).ident().getText().equals("length")
                                && (ctx.getChild(1)).getChildCount() == 4) {
                            return new IntType();
                        }
                        //int parseInt()
                        if (((RzParser.Build_in_FuntionContext) ctx.getChild(1)).ident().getText().equals("parseInt")
                                && (ctx.getChild(1)).getChildCount() == 4) {
                            return new IntType();
                        }
                        //string substring(int left, int right)
                        if (((RzParser.Build_in_FuntionContext) ctx.getChild(1)).ident().getText().equals("substring")) {
                            if (ctx.getChild(1).getChildCount() > 4) {
                                RzParser.ArgumentsContext arg =
                                        ((RzParser.Build_in_FuntionContext) ctx.getChild(1)).arguments();
                                if (arg.assign_expr().size() == 2) {
                                    if ((getTypeofAssignExpr(arg.assign_expr(0), symt) instanceof IntType)
                                            && (getTypeofAssignExpr(arg.assign_expr(1), symt) instanceof IntType)) {
                                        return new StringType();
                                    } else {
                                        throw new SemanticException("Semantic Error: unmatched argument in build-in" +
                                                " function substring(int left, int right)");
                                    }
                                }
                            }
                            throw new SemanticException("Semantic Error: number of parameters is not equal " +
                                    "to which in build-in function substring(int left, int right)");
                        }
                        //int ord(int pos)
                        if (((RzParser.Build_in_FuntionContext) ctx.getChild(1)).ident().getText().equals("ord")) {
                            if (ctx.getChild(1).getChildCount() > 4) {
                                RzParser.ArgumentsContext arg =
                                        ((RzParser.Build_in_FuntionContext) ctx.getChild(1)).arguments();
                                if (arg.assign_expr().size() == 1) {
                                    if (getTypeofAssignExpr(arg.assign_expr(0), symt) instanceof IntType) {
                                        return new IntType();
                                    } else {
                                        throw new SemanticException("Semantic Error: unmatched argument in" +
                                                " build-in function ord(int pos)");
                                    }
                                }
                            }
                            throw new SemanticException("Semantic Error: unmatched argument in build-in " +
                                    "function ord(int pos)");
                        }
                    }
                }
            }

            if (identPrimary instanceof FunctionType
                    && ctx.getChild(1) instanceof RzParser.FunctionCallContext) {

                if (ctx.getChild(1).getChildCount() == 2 && ((FunctionType) identPrimary).getParamCount() == 0) {

                    return ((FunctionType) identPrimary).getReturnType();

                } else if (ctx.getChild(1).getChildCount() > 2 && ((FunctionType) identPrimary).getParamCount() > 0) {

                    if ((ctx.getChild(1).getChild(1).getChildCount() + 1) / 2
                            == ((FunctionType) identPrimary).getParamCount()) {

                        for (int i = 0; i < ((FunctionType) identPrimary).getParamCount(); ++i) {
                            if (ctx.getChild(1).getChild(1).getChild(2 * i) instanceof RzParser.Assign_exprContext) {

                                if (!getTypeofAssignExpr(ctx.getChild(1).getChild(1).getChild(2 * i), symt).equals(
                                        ((FunctionType) identPrimary).getParamList().get(i))) {
                                    throw new SemanticException("Semantic Error: unmatched parameter '"
                                            + ctx.getChild(1).getChild(1).getChild(2 * i).getText() + "' in '" + ctx.getChild(0).getText() + "'");
                                }
                            }
                        }

                        return ((FunctionType) identPrimary).getReturnType();
                    }
                    throw new SemanticException("Semantic Error: number of parameters is not equal to which " +
                            "in the function declaration '" + ctx.getChild(0).getText() + "'");
                }
                throw new SemanticException("Semantic Error: Invalid function call '" + ctx.getChild(0).getText() + "(...)'");
            }

            if (identPrimary instanceof ClassType
                    && ctx.getChild(1) instanceof RzParser.MemberContext) {
                String memname = ctx.getChild(1).getChild(1).getText();
                Type memtype = ((ClassType) identPrimary).getMembers().get(memname).getType();
//                if (memtype != null) return new Variable(memtype);
                if (memtype != null) return memtype;
                throw new SemanticException("Semantic Error: Invalid member '" + ctx.getText() + "'");
            }

            if (identPrimary instanceof IntType
                    &&  (ctx.getChild(1) instanceof RzParser.PlusPlusContext
                    || ctx.getChild(1) instanceof RzParser.MinusMinusContext)) {
                return new IntType();
            }

            // int size()
            if (identPrimary instanceof ArrayType) {
                if (ctx.getChild(1) instanceof RzParser.SubscriptContext) {
                    int nowdim = (new ArrayType()).countdim(identPrimary.toString());
                    if (nowdim == 1) {
                        return ((ArrayType) identPrimary).getBasedtype();
                    } else if (nowdim >= 2) {
                        ArrayType typehere = new ArrayType((Type) identPrimary);
                        typehere.decreasedim();
                        typehere.decreasedim();
                        return typehere;
                    }
                    throw new SemanticException("Semantic Error: Invalid subscript '" + ctx.getText() + "'");
                }

                if (((RzParser.Build_in_FuntionContext) ctx.getChild(1)).ident().getText().equals("size")
                        && ctx.getChild(1).getChildCount() == 4) {
                    return new IntType();
                }
            }

            if (identPrimary instanceof StringType) {
                //int length()
                if (((RzParser.Build_in_FuntionContext) ctx.getChild(1)).ident().getText().equals("length")
                        && ctx.getChild(1).getChildCount() == 4) {
                    return new IntType();
                }
                //int parseInt()
                if (((RzParser.Build_in_FuntionContext) ctx.getChild(1)).ident().getText().equals("parseInt")
                        && ctx.getChild(1).getChildCount() == 4) {
                    return new IntType();
                }
                //int substring(int left, int right)
                if (((RzParser.Build_in_FuntionContext) ctx.getChild(1)).ident().getText().equals("substring")) {
                    if (ctx.getChild(1).getChildCount() > 4) {
                        RzParser.ArgumentsContext arg =
                                ((RzParser.Build_in_FuntionContext) ctx.getChild(1)).arguments();
                        if (arg.assign_expr().size() == 2) {
                            if ((getTypeofAssignExpr(arg.assign_expr(0), symt) instanceof IntType)
                                    && (getTypeofAssignExpr(arg.assign_expr(1), symt) instanceof IntType)) {
                                return new StringType();
                            } else {
                                throw new SemanticException("Semantic Error: unmatched argument in" +
                                        " build-in function substring(int left, int right)");
                            }
                        }
                    }
                    throw new SemanticException("Semantic Error: number of parameters is not equal to which" +
                            " in build-in function substring(int left, int right)");
                }
                //int ord(int pos)
                if (((RzParser.Build_in_FuntionContext) ctx.getChild(1)).ident().getText().equals("ord")) {
                    if (ctx.getChild(1).getChildCount() > 4) {
                        RzParser.ArgumentsContext arg =
                                ((RzParser.Build_in_FuntionContext) ctx.getChild(1)).arguments();
                        if (arg.assign_expr().size() == 1) {
                            if (getTypeofAssignExpr(arg.assign_expr(0), symt) instanceof IntType) {
                                return new IntType();
                            } else {
                                throw new SemanticException("Semantic Error: unmatched argument in build-in" +
                                        " function ord(int pos)");
                            }
                        }
                    }
                    throw new SemanticException("Semantic Error: unmatched argument in " +
                            "build-in function ord(int pos)");
                }
            }
        }
        throw new SemanticException("Semantic Error: Invalid post_expression '" + ctx.getText() + "'");
    }

    public Identifier getIdentofPrimary(ParseTree ctx, SymbolTable symt) throws SemanticException {

        if (ctx instanceof RzParser.Primary_identContext) {
            Identifier identPrimary = symt.lookup(ctx.getChild(0).getText());
            if (identPrimary != null) {
                return identPrimary;
            }
            throw new SemanticException("Semantic Error: Unknown identifier '" + ctx.getText() + "'");
        }
        if (ctx instanceof RzParser.Primary_const_intContext) {
            return new IntType();
        }
        if (ctx instanceof RzParser.Primary_const_boolContext) {
            return new BoolType();
        }
        if (ctx instanceof RzParser.Primary_const_stringContext) {
            return new StringType();
        }
        if (ctx instanceof RzParser.Primary_nullContext) {
            return new NullType();
        }
        if (ctx instanceof RzParser.Primary_PexprPContext) {
            return getIdentofExpr(ctx.getChild(1), symt);
        }
        throw new SemanticException("Semantic Error: Invalid primary expression '" + ctx.getText() + "'");
    }
}
