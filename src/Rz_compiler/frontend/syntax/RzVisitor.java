// Generated from /Users/YRZ/Rz_compiler/src/Rz.g4 by ANTLR 4.5.1
package Rz_compiler.frontend.syntax;
import org.antlr.v4.runtime.tree.ParseTreeVisitor;

/**
 * This interface defines a complete generic visitor for a parse tree produced
 * by {@link RzParser}.
 *
 * @param <T> The return type of the visit operation. Use {@link Void} for
 * operations with no return type.
 */
public interface RzVisitor<T> extends ParseTreeVisitor<T> {
	/**
	 * Visit a parse tree produced by {@link RzParser#prog}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitProg(RzParser.ProgContext ctx);
	/**
	 * Visit a parse tree produced by {@link RzParser#func_def}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunc_def(RzParser.Func_defContext ctx);
	/**
	 * Visit a parse tree produced by {@link RzParser#var_decl}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitVar_decl(RzParser.Var_declContext ctx);
	/**
	 * Visit a parse tree produced by {@link RzParser#class_decl}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitClass_decl(RzParser.Class_declContext ctx);
	/**
	 * Visit a parse tree produced by {@link RzParser#param_list}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitParam_list(RzParser.Param_listContext ctx);
	/**
	 * Visit a parse tree produced by {@link RzParser#member_decl_list}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMember_decl_list(RzParser.Member_decl_listContext ctx);
	/**
	 * Visit a parse tree produced by {@link RzParser#init_declarator}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInit_declarator(RzParser.Init_declaratorContext ctx);
	/**
	 * Visit a parse tree produced by {@link RzParser#initializer}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitInitializer(RzParser.InitializerContext ctx);
	/**
	 * Visit a parse tree produced by the {@code CLASSTYPE}
	 * labeled alternative in {@link RzParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCLASSTYPE(RzParser.CLASSTYPEContext ctx);
	/**
	 * Visit a parse tree produced by the {@code BASETYPE}
	 * labeled alternative in {@link RzParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBASETYPE(RzParser.BASETYPEContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ARRAYTYPE}
	 * labeled alternative in {@link RzParser#type}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitARRAYTYPE(RzParser.ARRAYTYPEContext ctx);
	/**
	 * Visit a parse tree produced by {@link RzParser#ident}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIdent(RzParser.IdentContext ctx);
	/**
	 * Visit a parse tree produced by {@link RzParser#enter_scope}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEnter_scope(RzParser.Enter_scopeContext ctx);
	/**
	 * Visit a parse tree produced by {@link RzParser#exit_scope}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExit_scope(RzParser.Exit_scopeContext ctx);
	/**
	 * Visit a parse tree produced by {@link RzParser#stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitStmt(RzParser.StmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link RzParser#expr_stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpr_stmt(RzParser.Expr_stmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link RzParser#compound_stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCompound_stmt(RzParser.Compound_stmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link RzParser#selec_stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSelec_stmt(RzParser.Selec_stmtContext ctx);
	/**
	 * Visit a parse tree produced by {@link RzParser#iteration_stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitIteration_stmt(RzParser.Iteration_stmtContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Continue_jump}
	 * labeled alternative in {@link RzParser#jump_stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitContinue_jump(RzParser.Continue_jumpContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Break_jump}
	 * labeled alternative in {@link RzParser#jump_stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBreak_jump(RzParser.Break_jumpContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Return_jump}
	 * labeled alternative in {@link RzParser#jump_stmt}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitReturn_jump(RzParser.Return_jumpContext ctx);
	/**
	 * Visit a parse tree produced by {@link RzParser#expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitExpr(RzParser.ExprContext ctx);
	/**
	 * Visit a parse tree produced by {@link RzParser#assign_expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAssign_expr(RzParser.Assign_exprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code NEWTYPE}
	 * labeled alternative in {@link RzParser#creation_expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNEWTYPE(RzParser.NEWTYPEContext ctx);
	/**
	 * Visit a parse tree produced by the {@code NEWCLASSTYPE}
	 * labeled alternative in {@link RzParser#creation_expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNEWCLASSTYPE(RzParser.NEWCLASSTYPEContext ctx);
	/**
	 * Visit a parse tree produced by the {@code NEWARRAYTYPE}
	 * labeled alternative in {@link RzParser#creation_expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitNEWARRAYTYPE(RzParser.NEWARRAYTYPEContext ctx);
	/**
	 * Visit a parse tree produced by the {@code UNARYEXPR}
	 * labeled alternative in {@link RzParser#creation_expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitUNARYEXPR(RzParser.UNARYEXPRContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ARR_MORE}
	 * labeled alternative in {@link RzParser#array}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitARR_MORE(RzParser.ARR_MOREContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ARR_FINAL_BASE}
	 * labeled alternative in {@link RzParser#array}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitARR_FINAL_BASE(RzParser.ARR_FINAL_BASEContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ARR_FINAL_CLASS}
	 * labeled alternative in {@link RzParser#array}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitARR_FINAL_CLASS(RzParser.ARR_FINAL_CLASSContext ctx);
	/**
	 * Visit a parse tree produced by {@link RzParser#unary_expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitUnary_expr(RzParser.Unary_exprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code LOGIC_AND}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLOGIC_AND(RzParser.LOGIC_ANDContext ctx);
	/**
	 * Visit a parse tree produced by the {@code SHIFT}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSHIFT(RzParser.SHIFTContext ctx);
	/**
	 * Visit a parse tree produced by the {@code INCLUSIVE_OR}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitINCLUSIVE_OR(RzParser.INCLUSIVE_ORContext ctx);
	/**
	 * Visit a parse tree produced by the {@code EXCLUSIVE_OR}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEXCLUSIVE_OR(RzParser.EXCLUSIVE_ORContext ctx);
	/**
	 * Visit a parse tree produced by the {@code ADDITIVE}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitADDITIVE(RzParser.ADDITIVEContext ctx);
	/**
	 * Visit a parse tree produced by the {@code RELATION}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitRELATION(RzParser.RELATIONContext ctx);
	/**
	 * Visit a parse tree produced by the {@code LOGIC_OR}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitLOGIC_OR(RzParser.LOGIC_ORContext ctx);
	/**
	 * Visit a parse tree produced by the {@code EQUALITY}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitEQUALITY(RzParser.EQUALITYContext ctx);
	/**
	 * Visit a parse tree produced by the {@code AND}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitAND(RzParser.ANDContext ctx);
	/**
	 * Visit a parse tree produced by the {@code CREATION}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitCREATION(RzParser.CREATIONContext ctx);
	/**
	 * Visit a parse tree produced by the {@code MULTI}
	 * labeled alternative in {@link RzParser#expression}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMULTI(RzParser.MULTIContext ctx);
	/**
	 * Visit a parse tree produced by {@link RzParser#postfix_expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPostfix_expr(RzParser.Postfix_exprContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Build_in_Funtion}
	 * labeled alternative in {@link RzParser#postfix}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitBuild_in_Funtion(RzParser.Build_in_FuntionContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Subscript}
	 * labeled alternative in {@link RzParser#postfix}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitSubscript(RzParser.SubscriptContext ctx);
	/**
	 * Visit a parse tree produced by the {@code FunctionCall}
	 * labeled alternative in {@link RzParser#postfix}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitFunctionCall(RzParser.FunctionCallContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Member}
	 * labeled alternative in {@link RzParser#postfix}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMember(RzParser.MemberContext ctx);
	/**
	 * Visit a parse tree produced by the {@code PlusPlus}
	 * labeled alternative in {@link RzParser#postfix}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPlusPlus(RzParser.PlusPlusContext ctx);
	/**
	 * Visit a parse tree produced by the {@code MinusMinus}
	 * labeled alternative in {@link RzParser#postfix}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitMinusMinus(RzParser.MinusMinusContext ctx);
	/**
	 * Visit a parse tree produced by {@link RzParser#arguments}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitArguments(RzParser.ArgumentsContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Primary_ident}
	 * labeled alternative in {@link RzParser#primary_expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrimary_ident(RzParser.Primary_identContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Primary_const_int}
	 * labeled alternative in {@link RzParser#primary_expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrimary_const_int(RzParser.Primary_const_intContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Primary_const_bool}
	 * labeled alternative in {@link RzParser#primary_expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrimary_const_bool(RzParser.Primary_const_boolContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Primary_const_string}
	 * labeled alternative in {@link RzParser#primary_expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrimary_const_string(RzParser.Primary_const_stringContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Primary_null}
	 * labeled alternative in {@link RzParser#primary_expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrimary_null(RzParser.Primary_nullContext ctx);
	/**
	 * Visit a parse tree produced by the {@code Primary_PexprP}
	 * labeled alternative in {@link RzParser#primary_expr}.
	 * @param ctx the parse tree
	 * @return the visitor result
	 */
	T visitPrimary_PexprP(RzParser.Primary_PexprPContext ctx);
}