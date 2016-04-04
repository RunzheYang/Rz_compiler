// Generated from /Users/YRZ/Desktop/Rz_compiler/src/Rz.g4 by ANTLR 4.5.1
package Rz_compiler.syntax;
import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link RzParser}.
 */
public interface RzListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link RzParser#prog}.
	 * @param ctx the parse tree
	 */
	void enterProg(RzParser.ProgContext ctx);
	/**
	 * Exit a parse tree produced by {@link RzParser#prog}.
	 * @param ctx the parse tree
	 */
	void exitProg(RzParser.ProgContext ctx);
	/**
	 * Enter a parse tree produced by {@link RzParser#func_def}.
	 * @param ctx the parse tree
	 */
	void enterFunc_def(RzParser.Func_defContext ctx);
	/**
	 * Exit a parse tree produced by {@link RzParser#func_def}.
	 * @param ctx the parse tree
	 */
	void exitFunc_def(RzParser.Func_defContext ctx);
	/**
	 * Enter a parse tree produced by {@link RzParser#var_decl}.
	 * @param ctx the parse tree
	 */
	void enterVar_decl(RzParser.Var_declContext ctx);
	/**
	 * Exit a parse tree produced by {@link RzParser#var_decl}.
	 * @param ctx the parse tree
	 */
	void exitVar_decl(RzParser.Var_declContext ctx);
	/**
	 * Enter a parse tree produced by {@link RzParser#class_decl}.
	 * @param ctx the parse tree
	 */
	void enterClass_decl(RzParser.Class_declContext ctx);
	/**
	 * Exit a parse tree produced by {@link RzParser#class_decl}.
	 * @param ctx the parse tree
	 */
	void exitClass_decl(RzParser.Class_declContext ctx);
	/**
	 * Enter a parse tree produced by {@link RzParser#param_list}.
	 * @param ctx the parse tree
	 */
	void enterParam_list(RzParser.Param_listContext ctx);
	/**
	 * Exit a parse tree produced by {@link RzParser#param_list}.
	 * @param ctx the parse tree
	 */
	void exitParam_list(RzParser.Param_listContext ctx);
	/**
	 * Enter a parse tree produced by {@link RzParser#member_decl_list}.
	 * @param ctx the parse tree
	 */
	void enterMember_decl_list(RzParser.Member_decl_listContext ctx);
	/**
	 * Exit a parse tree produced by {@link RzParser#member_decl_list}.
	 * @param ctx the parse tree
	 */
	void exitMember_decl_list(RzParser.Member_decl_listContext ctx);
	/**
	 * Enter a parse tree produced by {@link RzParser#init_declarator}.
	 * @param ctx the parse tree
	 */
	void enterInit_declarator(RzParser.Init_declaratorContext ctx);
	/**
	 * Exit a parse tree produced by {@link RzParser#init_declarator}.
	 * @param ctx the parse tree
	 */
	void exitInit_declarator(RzParser.Init_declaratorContext ctx);
	/**
	 * Enter a parse tree produced by {@link RzParser#initializer}.
	 * @param ctx the parse tree
	 */
	void enterInitializer(RzParser.InitializerContext ctx);
	/**
	 * Exit a parse tree produced by {@link RzParser#initializer}.
	 * @param ctx the parse tree
	 */
	void exitInitializer(RzParser.InitializerContext ctx);
	/**
	 * Enter a parse tree produced by the {@code CLASSTYPE}
	 * labeled alternative in {@link RzParser#type}.
	 * @param ctx the parse tree
	 */
	void enterCLASSTYPE(RzParser.CLASSTYPEContext ctx);
	/**
	 * Exit a parse tree produced by the {@code CLASSTYPE}
	 * labeled alternative in {@link RzParser#type}.
	 * @param ctx the parse tree
	 */
	void exitCLASSTYPE(RzParser.CLASSTYPEContext ctx);
	/**
	 * Enter a parse tree produced by the {@code BASETYPE}
	 * labeled alternative in {@link RzParser#type}.
	 * @param ctx the parse tree
	 */
	void enterBASETYPE(RzParser.BASETYPEContext ctx);
	/**
	 * Exit a parse tree produced by the {@code BASETYPE}
	 * labeled alternative in {@link RzParser#type}.
	 * @param ctx the parse tree
	 */
	void exitBASETYPE(RzParser.BASETYPEContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ARRAYTYPE}
	 * labeled alternative in {@link RzParser#type}.
	 * @param ctx the parse tree
	 */
	void enterARRAYTYPE(RzParser.ARRAYTYPEContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ARRAYTYPE}
	 * labeled alternative in {@link RzParser#type}.
	 * @param ctx the parse tree
	 */
	void exitARRAYTYPE(RzParser.ARRAYTYPEContext ctx);
	/**
	 * Enter a parse tree produced by {@link RzParser#ident}.
	 * @param ctx the parse tree
	 */
	void enterIdent(RzParser.IdentContext ctx);
	/**
	 * Exit a parse tree produced by {@link RzParser#ident}.
	 * @param ctx the parse tree
	 */
	void exitIdent(RzParser.IdentContext ctx);
	/**
	 * Enter a parse tree produced by {@link RzParser#enter_scope}.
	 * @param ctx the parse tree
	 */
	void enterEnter_scope(RzParser.Enter_scopeContext ctx);
	/**
	 * Exit a parse tree produced by {@link RzParser#enter_scope}.
	 * @param ctx the parse tree
	 */
	void exitEnter_scope(RzParser.Enter_scopeContext ctx);
	/**
	 * Enter a parse tree produced by {@link RzParser#exit_scope}.
	 * @param ctx the parse tree
	 */
	void enterExit_scope(RzParser.Exit_scopeContext ctx);
	/**
	 * Exit a parse tree produced by {@link RzParser#exit_scope}.
	 * @param ctx the parse tree
	 */
	void exitExit_scope(RzParser.Exit_scopeContext ctx);
	/**
	 * Enter a parse tree produced by {@link RzParser#stmt}.
	 * @param ctx the parse tree
	 */
	void enterStmt(RzParser.StmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link RzParser#stmt}.
	 * @param ctx the parse tree
	 */
	void exitStmt(RzParser.StmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link RzParser#expr_stmt}.
	 * @param ctx the parse tree
	 */
	void enterExpr_stmt(RzParser.Expr_stmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link RzParser#expr_stmt}.
	 * @param ctx the parse tree
	 */
	void exitExpr_stmt(RzParser.Expr_stmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link RzParser#compound_stmt}.
	 * @param ctx the parse tree
	 */
	void enterCompound_stmt(RzParser.Compound_stmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link RzParser#compound_stmt}.
	 * @param ctx the parse tree
	 */
	void exitCompound_stmt(RzParser.Compound_stmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link RzParser#selec_stmt}.
	 * @param ctx the parse tree
	 */
	void enterSelec_stmt(RzParser.Selec_stmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link RzParser#selec_stmt}.
	 * @param ctx the parse tree
	 */
	void exitSelec_stmt(RzParser.Selec_stmtContext ctx);
	/**
	 * Enter a parse tree produced by {@link RzParser#iteration_stmt}.
	 * @param ctx the parse tree
	 */
	void enterIteration_stmt(RzParser.Iteration_stmtContext ctx);
	/**
	 * Exit a parse tree produced by {@link RzParser#iteration_stmt}.
	 * @param ctx the parse tree
	 */
	void exitIteration_stmt(RzParser.Iteration_stmtContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Continue_jump}
	 * labeled alternative in {@link RzParser#jump_stmt}.
	 * @param ctx the parse tree
	 */
	void enterContinue_jump(RzParser.Continue_jumpContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Continue_jump}
	 * labeled alternative in {@link RzParser#jump_stmt}.
	 * @param ctx the parse tree
	 */
	void exitContinue_jump(RzParser.Continue_jumpContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Break_jump}
	 * labeled alternative in {@link RzParser#jump_stmt}.
	 * @param ctx the parse tree
	 */
	void enterBreak_jump(RzParser.Break_jumpContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Break_jump}
	 * labeled alternative in {@link RzParser#jump_stmt}.
	 * @param ctx the parse tree
	 */
	void exitBreak_jump(RzParser.Break_jumpContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Return_jump}
	 * labeled alternative in {@link RzParser#jump_stmt}.
	 * @param ctx the parse tree
	 */
	void enterReturn_jump(RzParser.Return_jumpContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Return_jump}
	 * labeled alternative in {@link RzParser#jump_stmt}.
	 * @param ctx the parse tree
	 */
	void exitReturn_jump(RzParser.Return_jumpContext ctx);
	/**
	 * Enter a parse tree produced by {@link RzParser#expr}.
	 * @param ctx the parse tree
	 */
	void enterExpr(RzParser.ExprContext ctx);
	/**
	 * Exit a parse tree produced by {@link RzParser#expr}.
	 * @param ctx the parse tree
	 */
	void exitExpr(RzParser.ExprContext ctx);
	/**
	 * Enter a parse tree produced by {@link RzParser#assign_expr}.
	 * @param ctx the parse tree
	 */
	void enterAssign_expr(RzParser.Assign_exprContext ctx);
	/**
	 * Exit a parse tree produced by {@link RzParser#assign_expr}.
	 * @param ctx the parse tree
	 */
	void exitAssign_expr(RzParser.Assign_exprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code NEWTYPE}
	 * labeled alternative in {@link RzParser#creation_expr}.
	 * @param ctx the parse tree
	 */
	void enterNEWTYPE(RzParser.NEWTYPEContext ctx);
	/**
	 * Exit a parse tree produced by the {@code NEWTYPE}
	 * labeled alternative in {@link RzParser#creation_expr}.
	 * @param ctx the parse tree
	 */
	void exitNEWTYPE(RzParser.NEWTYPEContext ctx);
	/**
	 * Enter a parse tree produced by the {@code NEWCLASSTYPE}
	 * labeled alternative in {@link RzParser#creation_expr}.
	 * @param ctx the parse tree
	 */
	void enterNEWCLASSTYPE(RzParser.NEWCLASSTYPEContext ctx);
	/**
	 * Exit a parse tree produced by the {@code NEWCLASSTYPE}
	 * labeled alternative in {@link RzParser#creation_expr}.
	 * @param ctx the parse tree
	 */
	void exitNEWCLASSTYPE(RzParser.NEWCLASSTYPEContext ctx);
	/**
	 * Enter a parse tree produced by the {@code NEWARRAYTYPE}
	 * labeled alternative in {@link RzParser#creation_expr}.
	 * @param ctx the parse tree
	 */
	void enterNEWARRAYTYPE(RzParser.NEWARRAYTYPEContext ctx);
	/**
	 * Exit a parse tree produced by the {@code NEWARRAYTYPE}
	 * labeled alternative in {@link RzParser#creation_expr}.
	 * @param ctx the parse tree
	 */
	void exitNEWARRAYTYPE(RzParser.NEWARRAYTYPEContext ctx);
	/**
	 * Enter a parse tree produced by the {@code UNARYEXPR}
	 * labeled alternative in {@link RzParser#creation_expr}.
	 * @param ctx the parse tree
	 */
	void enterUNARYEXPR(RzParser.UNARYEXPRContext ctx);
	/**
	 * Exit a parse tree produced by the {@code UNARYEXPR}
	 * labeled alternative in {@link RzParser#creation_expr}.
	 * @param ctx the parse tree
	 */
	void exitUNARYEXPR(RzParser.UNARYEXPRContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ARR_MORE}
	 * labeled alternative in {@link RzParser#array}.
	 * @param ctx the parse tree
	 */
	void enterARR_MORE(RzParser.ARR_MOREContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ARR_MORE}
	 * labeled alternative in {@link RzParser#array}.
	 * @param ctx the parse tree
	 */
	void exitARR_MORE(RzParser.ARR_MOREContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ARR_FINAL_BASE}
	 * labeled alternative in {@link RzParser#array}.
	 * @param ctx the parse tree
	 */
	void enterARR_FINAL_BASE(RzParser.ARR_FINAL_BASEContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ARR_FINAL_BASE}
	 * labeled alternative in {@link RzParser#array}.
	 * @param ctx the parse tree
	 */
	void exitARR_FINAL_BASE(RzParser.ARR_FINAL_BASEContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ARR_FINAL_CLASS}
	 * labeled alternative in {@link RzParser#array}.
	 * @param ctx the parse tree
	 */
	void enterARR_FINAL_CLASS(RzParser.ARR_FINAL_CLASSContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ARR_FINAL_CLASS}
	 * labeled alternative in {@link RzParser#array}.
	 * @param ctx the parse tree
	 */
	void exitARR_FINAL_CLASS(RzParser.ARR_FINAL_CLASSContext ctx);
	/**
	 * Enter a parse tree produced by {@link RzParser#unary_expr}.
	 * @param ctx the parse tree
	 */
	void enterUnary_expr(RzParser.Unary_exprContext ctx);
	/**
	 * Exit a parse tree produced by {@link RzParser#unary_expr}.
	 * @param ctx the parse tree
	 */
	void exitUnary_expr(RzParser.Unary_exprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code LOGIC_AND}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterLOGIC_AND(RzParser.LOGIC_ANDContext ctx);
	/**
	 * Exit a parse tree produced by the {@code LOGIC_AND}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitLOGIC_AND(RzParser.LOGIC_ANDContext ctx);
	/**
	 * Enter a parse tree produced by the {@code SHIFT}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterSHIFT(RzParser.SHIFTContext ctx);
	/**
	 * Exit a parse tree produced by the {@code SHIFT}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitSHIFT(RzParser.SHIFTContext ctx);
	/**
	 * Enter a parse tree produced by the {@code INCLUSIVE_OR}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterINCLUSIVE_OR(RzParser.INCLUSIVE_ORContext ctx);
	/**
	 * Exit a parse tree produced by the {@code INCLUSIVE_OR}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitINCLUSIVE_OR(RzParser.INCLUSIVE_ORContext ctx);
	/**
	 * Enter a parse tree produced by the {@code EXCLUSIVE_OR}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterEXCLUSIVE_OR(RzParser.EXCLUSIVE_ORContext ctx);
	/**
	 * Exit a parse tree produced by the {@code EXCLUSIVE_OR}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitEXCLUSIVE_OR(RzParser.EXCLUSIVE_ORContext ctx);
	/**
	 * Enter a parse tree produced by the {@code ADDITIVE}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterADDITIVE(RzParser.ADDITIVEContext ctx);
	/**
	 * Exit a parse tree produced by the {@code ADDITIVE}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitADDITIVE(RzParser.ADDITIVEContext ctx);
	/**
	 * Enter a parse tree produced by the {@code RELATION}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterRELATION(RzParser.RELATIONContext ctx);
	/**
	 * Exit a parse tree produced by the {@code RELATION}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitRELATION(RzParser.RELATIONContext ctx);
	/**
	 * Enter a parse tree produced by the {@code LOGIC_OR}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterLOGIC_OR(RzParser.LOGIC_ORContext ctx);
	/**
	 * Exit a parse tree produced by the {@code LOGIC_OR}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitLOGIC_OR(RzParser.LOGIC_ORContext ctx);
	/**
	 * Enter a parse tree produced by the {@code EQUALITY}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterEQUALITY(RzParser.EQUALITYContext ctx);
	/**
	 * Exit a parse tree produced by the {@code EQUALITY}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitEQUALITY(RzParser.EQUALITYContext ctx);
	/**
	 * Enter a parse tree produced by the {@code AND}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterAND(RzParser.ANDContext ctx);
	/**
	 * Exit a parse tree produced by the {@code AND}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitAND(RzParser.ANDContext ctx);
	/**
	 * Enter a parse tree produced by the {@code CREATION}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterCREATION(RzParser.CREATIONContext ctx);
	/**
	 * Exit a parse tree produced by the {@code CREATION}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitCREATION(RzParser.CREATIONContext ctx);
	/**
	 * Enter a parse tree produced by the {@code MULTI}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 */
	void enterMULTI(RzParser.MULTIContext ctx);
	/**
	 * Exit a parse tree produced by the {@code MULTI}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 */
	void exitMULTI(RzParser.MULTIContext ctx);
	/**
	 * Enter a parse tree produced by {@link RzParser#postfix_expr}.
	 * @param ctx the parse tree
	 */
	void enterPostfix_expr(RzParser.Postfix_exprContext ctx);
	/**
	 * Exit a parse tree produced by {@link RzParser#postfix_expr}.
	 * @param ctx the parse tree
	 */
	void exitPostfix_expr(RzParser.Postfix_exprContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Build_in_Funtion}
	 * labeled alternative in {@link RzParser#postfix}.
	 * @param ctx the parse tree
	 */
	void enterBuild_in_Funtion(RzParser.Build_in_FuntionContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Build_in_Funtion}
	 * labeled alternative in {@link RzParser#postfix}.
	 * @param ctx the parse tree
	 */
	void exitBuild_in_Funtion(RzParser.Build_in_FuntionContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Subscript}
	 * labeled alternative in {@link RzParser#postfix}.
	 * @param ctx the parse tree
	 */
	void enterSubscript(RzParser.SubscriptContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Subscript}
	 * labeled alternative in {@link RzParser#postfix}.
	 * @param ctx the parse tree
	 */
	void exitSubscript(RzParser.SubscriptContext ctx);
	/**
	 * Enter a parse tree produced by the {@code FunctionCall}
	 * labeled alternative in {@link RzParser#postfix}.
	 * @param ctx the parse tree
	 */
	void enterFunctionCall(RzParser.FunctionCallContext ctx);
	/**
	 * Exit a parse tree produced by the {@code FunctionCall}
	 * labeled alternative in {@link RzParser#postfix}.
	 * @param ctx the parse tree
	 */
	void exitFunctionCall(RzParser.FunctionCallContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Member}
	 * labeled alternative in {@link RzParser#postfix}.
	 * @param ctx the parse tree
	 */
	void enterMember(RzParser.MemberContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Member}
	 * labeled alternative in {@link RzParser#postfix}.
	 * @param ctx the parse tree
	 */
	void exitMember(RzParser.MemberContext ctx);
	/**
	 * Enter a parse tree produced by the {@code PlusPlus}
	 * labeled alternative in {@link RzParser#postfix}.
	 * @param ctx the parse tree
	 */
	void enterPlusPlus(RzParser.PlusPlusContext ctx);
	/**
	 * Exit a parse tree produced by the {@code PlusPlus}
	 * labeled alternative in {@link RzParser#postfix}.
	 * @param ctx the parse tree
	 */
	void exitPlusPlus(RzParser.PlusPlusContext ctx);
	/**
	 * Enter a parse tree produced by the {@code MinusMinus}
	 * labeled alternative in {@link RzParser#postfix}.
	 * @param ctx the parse tree
	 */
	void enterMinusMinus(RzParser.MinusMinusContext ctx);
	/**
	 * Exit a parse tree produced by the {@code MinusMinus}
	 * labeled alternative in {@link RzParser#postfix}.
	 * @param ctx the parse tree
	 */
	void exitMinusMinus(RzParser.MinusMinusContext ctx);
	/**
	 * Enter a parse tree produced by {@link RzParser#arguments}.
	 * @param ctx the parse tree
	 */
	void enterArguments(RzParser.ArgumentsContext ctx);
	/**
	 * Exit a parse tree produced by {@link RzParser#arguments}.
	 * @param ctx the parse tree
	 */
	void exitArguments(RzParser.ArgumentsContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Primary_ident}
	 * labeled alternative in {@link RzParser#primary_expr}.
	 * @param ctx the parse tree
	 */
	void enterPrimary_ident(RzParser.Primary_identContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Primary_ident}
	 * labeled alternative in {@link RzParser#primary_expr}.
	 * @param ctx the parse tree
	 */
	void exitPrimary_ident(RzParser.Primary_identContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Primary_const_int}
	 * labeled alternative in {@link RzParser#primary_expr}.
	 * @param ctx the parse tree
	 */
	void enterPrimary_const_int(RzParser.Primary_const_intContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Primary_const_int}
	 * labeled alternative in {@link RzParser#primary_expr}.
	 * @param ctx the parse tree
	 */
	void exitPrimary_const_int(RzParser.Primary_const_intContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Primary_const_bool}
	 * labeled alternative in {@link RzParser#primary_expr}.
	 * @param ctx the parse tree
	 */
	void enterPrimary_const_bool(RzParser.Primary_const_boolContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Primary_const_bool}
	 * labeled alternative in {@link RzParser#primary_expr}.
	 * @param ctx the parse tree
	 */
	void exitPrimary_const_bool(RzParser.Primary_const_boolContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Primary_const_string}
	 * labeled alternative in {@link RzParser#primary_expr}.
	 * @param ctx the parse tree
	 */
	void enterPrimary_const_string(RzParser.Primary_const_stringContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Primary_const_string}
	 * labeled alternative in {@link RzParser#primary_expr}.
	 * @param ctx the parse tree
	 */
	void exitPrimary_const_string(RzParser.Primary_const_stringContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Primary_null}
	 * labeled alternative in {@link RzParser#primary_expr}.
	 * @param ctx the parse tree
	 */
	void enterPrimary_null(RzParser.Primary_nullContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Primary_null}
	 * labeled alternative in {@link RzParser#primary_expr}.
	 * @param ctx the parse tree
	 */
	void exitPrimary_null(RzParser.Primary_nullContext ctx);
	/**
	 * Enter a parse tree produced by the {@code Primary_PexprP}
	 * labeled alternative in {@link RzParser#primary_expr}.
	 * @param ctx the parse tree
	 */
	void enterPrimary_PexprP(RzParser.Primary_PexprPContext ctx);
	/**
	 * Exit a parse tree produced by the {@code Primary_PexprP}
	 * labeled alternative in {@link RzParser#primary_expr}.
	 * @param ctx the parse tree
	 */
	void exitPrimary_PexprP(RzParser.Primary_PexprPContext ctx);
}