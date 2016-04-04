// Generated from /Users/YRZ/Rz_compiler/src/Rz.g4 by ANTLR 4.5.1
package Rz_compiler.syntax;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class RzParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.5.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, T__22=23, T__23=24, 
		T__24=25, T__25=26, T__26=27, T__27=28, T__28=29, T__29=30, T__30=31, 
		T__31=32, T__32=33, T__33=34, T__34=35, T__35=36, T__36=37, T__37=38, 
		STRING=39, L_BRAKET=40, R_BRAKET=41, TYPE=42, NULL=43, BOOLCONST=44, ID=45, 
		ASSIGN_OP=46, INT=47, ANNO=48, WS=49;
	public static final int
		RULE_prog = 0, RULE_func_def = 1, RULE_var_decl = 2, RULE_class_decl = 3, 
		RULE_param_list = 4, RULE_member_decl_list = 5, RULE_init_declarator = 6, 
		RULE_initializer = 7, RULE_type = 8, RULE_ident = 9, RULE_enter_scope = 10, 
		RULE_exit_scope = 11, RULE_stmt = 12, RULE_expr_stmt = 13, RULE_compound_stmt = 14, 
		RULE_selec_stmt = 15, RULE_iteration_stmt = 16, RULE_jump_stmt = 17, RULE_expr = 18, 
		RULE_assign_expr = 19, RULE_creation_expr = 20, RULE_array = 21, RULE_unary_expr = 22, 
		RULE_expression = 23, RULE_postfix_expr = 24, RULE_postfix = 25, RULE_arguments = 26, 
		RULE_primary_expr = 27;
	public static final String[] ruleNames = {
		"prog", "func_def", "var_decl", "class_decl", "param_list", "member_decl_list", 
		"init_declarator", "initializer", "type", "ident", "enter_scope", "exit_scope", 
		"stmt", "expr_stmt", "compound_stmt", "selec_stmt", "iteration_stmt", 
		"jump_stmt", "expr", "assign_expr", "creation_expr", "array", "unary_expr", 
		"expression", "postfix_expr", "postfix", "arguments", "primary_expr"
	};

	private static final String[] _LITERAL_NAMES = {
		null, "'('", "')'", "';'", "'class'", "','", "'['", "']'", "'if'", "'else'", 
		"'while'", "'for'", "'continue'", "'break'", "'return'", "'new'", "'++'", 
		"'--'", "'~'", "'!'", "'+'", "'-'", "'*'", "'/'", "'%'", "'<<'", "'>>'", 
		"'<'", "'>'", "'<='", "'>='", "'=='", "'!='", "'&'", "'^'", "'|'", "'&&'", 
		"'||'", "'.'", null, "'{'", "'}'", null, "'null'", null, null, "'='"
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, "STRING", "L_BRAKET", "R_BRAKET", "TYPE", "NULL", "BOOLCONST", 
		"ID", "ASSIGN_OP", "INT", "ANNO", "WS"
	};
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Rz.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public RzParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}
	public static class ProgContext extends ParserRuleContext {
		public List<Func_defContext> func_def() {
			return getRuleContexts(Func_defContext.class);
		}
		public Func_defContext func_def(int i) {
			return getRuleContext(Func_defContext.class,i);
		}
		public List<Var_declContext> var_decl() {
			return getRuleContexts(Var_declContext.class);
		}
		public Var_declContext var_decl(int i) {
			return getRuleContext(Var_declContext.class,i);
		}
		public List<Class_declContext> class_decl() {
			return getRuleContexts(Class_declContext.class);
		}
		public Class_declContext class_decl(int i) {
			return getRuleContext(Class_declContext.class,i);
		}
		public ProgContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_prog; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterProg(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitProg(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitProg(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ProgContext prog() throws RecognitionException {
		ProgContext _localctx = new ProgContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_prog);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(61);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__3) | (1L << TYPE) | (1L << ID))) != 0)) {
				{
				setState(59);
				switch ( getInterpreter().adaptivePredict(_input,0,_ctx) ) {
				case 1:
					{
					setState(56);
					func_def();
					}
					break;
				case 2:
					{
					setState(57);
					var_decl();
					}
					break;
				case 3:
					{
					setState(58);
					class_decl();
					}
					break;
				}
				}
				setState(63);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Func_defContext extends ParserRuleContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public IdentContext ident() {
			return getRuleContext(IdentContext.class,0);
		}
		public Compound_stmtContext compound_stmt() {
			return getRuleContext(Compound_stmtContext.class,0);
		}
		public Param_listContext param_list() {
			return getRuleContext(Param_listContext.class,0);
		}
		public Func_defContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_func_def; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterFunc_def(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitFunc_def(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitFunc_def(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Func_defContext func_def() throws RecognitionException {
		Func_defContext _localctx = new Func_defContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_func_def);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(64);
			type(0);
			setState(65);
			ident();
			setState(66);
			match(T__0);
			setState(68);
			_la = _input.LA(1);
			if (_la==TYPE || _la==ID) {
				{
				setState(67);
				param_list();
				}
			}

			setState(70);
			match(T__1);
			setState(71);
			compound_stmt();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Var_declContext extends ParserRuleContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public Init_declaratorContext init_declarator() {
			return getRuleContext(Init_declaratorContext.class,0);
		}
		public Var_declContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_var_decl; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterVar_decl(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitVar_decl(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitVar_decl(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Var_declContext var_decl() throws RecognitionException {
		Var_declContext _localctx = new Var_declContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_var_decl);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(73);
			type(0);
			setState(74);
			init_declarator();
			setState(75);
			match(T__2);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Class_declContext extends ParserRuleContext {
		public IdentContext ident() {
			return getRuleContext(IdentContext.class,0);
		}
		public Enter_scopeContext enter_scope() {
			return getRuleContext(Enter_scopeContext.class,0);
		}
		public Member_decl_listContext member_decl_list() {
			return getRuleContext(Member_decl_listContext.class,0);
		}
		public Exit_scopeContext exit_scope() {
			return getRuleContext(Exit_scopeContext.class,0);
		}
		public Class_declContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_class_decl; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterClass_decl(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitClass_decl(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitClass_decl(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Class_declContext class_decl() throws RecognitionException {
		Class_declContext _localctx = new Class_declContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_class_decl);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(77);
			match(T__3);
			setState(78);
			ident();
			setState(79);
			enter_scope();
			setState(80);
			member_decl_list();
			setState(81);
			exit_scope();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Param_listContext extends ParserRuleContext {
		public List<TypeContext> type() {
			return getRuleContexts(TypeContext.class);
		}
		public TypeContext type(int i) {
			return getRuleContext(TypeContext.class,i);
		}
		public List<IdentContext> ident() {
			return getRuleContexts(IdentContext.class);
		}
		public IdentContext ident(int i) {
			return getRuleContext(IdentContext.class,i);
		}
		public Param_listContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_param_list; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterParam_list(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitParam_list(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitParam_list(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Param_listContext param_list() throws RecognitionException {
		Param_listContext _localctx = new Param_listContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_param_list);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(83);
			type(0);
			setState(84);
			ident();
			setState(91);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__4) {
				{
				{
				setState(85);
				match(T__4);
				setState(86);
				type(0);
				setState(87);
				ident();
				}
				}
				setState(93);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Member_decl_listContext extends ParserRuleContext {
		public List<TypeContext> type() {
			return getRuleContexts(TypeContext.class);
		}
		public TypeContext type(int i) {
			return getRuleContext(TypeContext.class,i);
		}
		public List<IdentContext> ident() {
			return getRuleContexts(IdentContext.class);
		}
		public IdentContext ident(int i) {
			return getRuleContext(IdentContext.class,i);
		}
		public Member_decl_listContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_member_decl_list; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterMember_decl_list(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitMember_decl_list(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitMember_decl_list(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Member_decl_listContext member_decl_list() throws RecognitionException {
		Member_decl_listContext _localctx = new Member_decl_listContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_member_decl_list);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(100);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==TYPE || _la==ID) {
				{
				{
				setState(94);
				type(0);
				setState(95);
				ident();
				setState(96);
				match(T__2);
				}
				}
				setState(102);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Init_declaratorContext extends ParserRuleContext {
		public IdentContext ident() {
			return getRuleContext(IdentContext.class,0);
		}
		public TerminalNode ASSIGN_OP() { return getToken(RzParser.ASSIGN_OP, 0); }
		public InitializerContext initializer() {
			return getRuleContext(InitializerContext.class,0);
		}
		public Init_declaratorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_init_declarator; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterInit_declarator(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitInit_declarator(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitInit_declarator(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Init_declaratorContext init_declarator() throws RecognitionException {
		Init_declaratorContext _localctx = new Init_declaratorContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_init_declarator);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(103);
			ident();
			setState(106);
			_la = _input.LA(1);
			if (_la==ASSIGN_OP) {
				{
				setState(104);
				match(ASSIGN_OP);
				setState(105);
				initializer();
				}
			}

			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class InitializerContext extends ParserRuleContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public InitializerContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_initializer; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterInitializer(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitInitializer(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitInitializer(this);
			else return visitor.visitChildren(this);
		}
	}

	public final InitializerContext initializer() throws RecognitionException {
		InitializerContext _localctx = new InitializerContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_initializer);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(108);
			expr();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TypeContext extends ParserRuleContext {
		public TypeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_type; }
	 
		public TypeContext() { }
		public void copyFrom(TypeContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class CLASSTYPEContext extends TypeContext {
		public IdentContext ident() {
			return getRuleContext(IdentContext.class,0);
		}
		public CLASSTYPEContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterCLASSTYPE(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitCLASSTYPE(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitCLASSTYPE(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class BASETYPEContext extends TypeContext {
		public TerminalNode TYPE() { return getToken(RzParser.TYPE, 0); }
		public BASETYPEContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterBASETYPE(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitBASETYPE(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitBASETYPE(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ARRAYTYPEContext extends TypeContext {
		public TypeContext type() {
			return getRuleContext(TypeContext.class,0);
		}
		public ARRAYTYPEContext(TypeContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterARRAYTYPE(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitARRAYTYPE(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitARRAYTYPE(this);
			else return visitor.visitChildren(this);
		}
	}

	public final TypeContext type() throws RecognitionException {
		return type(0);
	}

	private TypeContext type(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		TypeContext _localctx = new TypeContext(_ctx, _parentState);
		TypeContext _prevctx = _localctx;
		int _startState = 16;
		enterRecursionRule(_localctx, 16, RULE_type, _p);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(113);
			switch (_input.LA(1)) {
			case TYPE:
				{
				_localctx = new BASETYPEContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(111);
				match(TYPE);
				}
				break;
			case ID:
				{
				_localctx = new CLASSTYPEContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(112);
				ident();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(120);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,7,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					{
					_localctx = new ARRAYTYPEContext(new TypeContext(_parentctx, _parentState));
					pushNewRecursionContext(_localctx, _startState, RULE_type);
					setState(115);
					if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
					setState(116);
					match(T__5);
					setState(117);
					match(T__6);
					}
					} 
				}
				setState(122);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,7,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class IdentContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(RzParser.ID, 0); }
		public IdentContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_ident; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterIdent(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitIdent(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitIdent(this);
			else return visitor.visitChildren(this);
		}
	}

	public final IdentContext ident() throws RecognitionException {
		IdentContext _localctx = new IdentContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_ident);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(123);
			match(ID);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Enter_scopeContext extends ParserRuleContext {
		public TerminalNode L_BRAKET() { return getToken(RzParser.L_BRAKET, 0); }
		public Enter_scopeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_enter_scope; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterEnter_scope(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitEnter_scope(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitEnter_scope(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Enter_scopeContext enter_scope() throws RecognitionException {
		Enter_scopeContext _localctx = new Enter_scopeContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_enter_scope);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(125);
			match(L_BRAKET);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Exit_scopeContext extends ParserRuleContext {
		public TerminalNode R_BRAKET() { return getToken(RzParser.R_BRAKET, 0); }
		public Exit_scopeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_exit_scope; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterExit_scope(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitExit_scope(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitExit_scope(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Exit_scopeContext exit_scope() throws RecognitionException {
		Exit_scopeContext _localctx = new Exit_scopeContext(_ctx, getState());
		enterRule(_localctx, 22, RULE_exit_scope);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(127);
			match(R_BRAKET);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StmtContext extends ParserRuleContext {
		public Expr_stmtContext expr_stmt() {
			return getRuleContext(Expr_stmtContext.class,0);
		}
		public Compound_stmtContext compound_stmt() {
			return getRuleContext(Compound_stmtContext.class,0);
		}
		public Selec_stmtContext selec_stmt() {
			return getRuleContext(Selec_stmtContext.class,0);
		}
		public Iteration_stmtContext iteration_stmt() {
			return getRuleContext(Iteration_stmtContext.class,0);
		}
		public Jump_stmtContext jump_stmt() {
			return getRuleContext(Jump_stmtContext.class,0);
		}
		public StmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_stmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterStmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitStmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitStmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final StmtContext stmt() throws RecognitionException {
		StmtContext _localctx = new StmtContext(_ctx, getState());
		enterRule(_localctx, 24, RULE_stmt);
		try {
			setState(134);
			switch (_input.LA(1)) {
			case T__0:
			case T__2:
			case T__14:
			case T__15:
			case T__16:
			case T__17:
			case T__18:
			case T__19:
			case T__20:
			case STRING:
			case NULL:
			case BOOLCONST:
			case ID:
			case INT:
				enterOuterAlt(_localctx, 1);
				{
				setState(129);
				expr_stmt();
				}
				break;
			case L_BRAKET:
				enterOuterAlt(_localctx, 2);
				{
				setState(130);
				compound_stmt();
				}
				break;
			case T__7:
				enterOuterAlt(_localctx, 3);
				{
				setState(131);
				selec_stmt();
				}
				break;
			case T__9:
			case T__10:
				enterOuterAlt(_localctx, 4);
				{
				setState(132);
				iteration_stmt();
				}
				break;
			case T__11:
			case T__12:
			case T__13:
				enterOuterAlt(_localctx, 5);
				{
				setState(133);
				jump_stmt();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Expr_stmtContext extends ParserRuleContext {
		public Assign_exprContext assign_expr() {
			return getRuleContext(Assign_exprContext.class,0);
		}
		public Expr_stmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expr_stmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterExpr_stmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitExpr_stmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitExpr_stmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Expr_stmtContext expr_stmt() throws RecognitionException {
		Expr_stmtContext _localctx = new Expr_stmtContext(_ctx, getState());
		enterRule(_localctx, 26, RULE_expr_stmt);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(137);
			_la = _input.LA(1);
			if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__14) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << T__19) | (1L << T__20) | (1L << STRING) | (1L << NULL) | (1L << BOOLCONST) | (1L << ID) | (1L << INT))) != 0)) {
				{
				setState(136);
				assign_expr();
				}
			}

			setState(139);
			match(T__2);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Compound_stmtContext extends ParserRuleContext {
		public Enter_scopeContext enter_scope() {
			return getRuleContext(Enter_scopeContext.class,0);
		}
		public Exit_scopeContext exit_scope() {
			return getRuleContext(Exit_scopeContext.class,0);
		}
		public List<Var_declContext> var_decl() {
			return getRuleContexts(Var_declContext.class);
		}
		public Var_declContext var_decl(int i) {
			return getRuleContext(Var_declContext.class,i);
		}
		public List<StmtContext> stmt() {
			return getRuleContexts(StmtContext.class);
		}
		public StmtContext stmt(int i) {
			return getRuleContext(StmtContext.class,i);
		}
		public Compound_stmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_compound_stmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterCompound_stmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitCompound_stmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitCompound_stmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Compound_stmtContext compound_stmt() throws RecognitionException {
		Compound_stmtContext _localctx = new Compound_stmtContext(_ctx, getState());
		enterRule(_localctx, 28, RULE_compound_stmt);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(141);
			enter_scope();
			setState(146);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__2) | (1L << T__7) | (1L << T__9) | (1L << T__10) | (1L << T__11) | (1L << T__12) | (1L << T__13) | (1L << T__14) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << T__19) | (1L << T__20) | (1L << STRING) | (1L << L_BRAKET) | (1L << TYPE) | (1L << NULL) | (1L << BOOLCONST) | (1L << ID) | (1L << INT))) != 0)) {
				{
				setState(144);
				switch ( getInterpreter().adaptivePredict(_input,10,_ctx) ) {
				case 1:
					{
					setState(142);
					var_decl();
					}
					break;
				case 2:
					{
					setState(143);
					stmt();
					}
					break;
				}
				}
				setState(148);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(149);
			exit_scope();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Selec_stmtContext extends ParserRuleContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public List<StmtContext> stmt() {
			return getRuleContexts(StmtContext.class);
		}
		public StmtContext stmt(int i) {
			return getRuleContext(StmtContext.class,i);
		}
		public Selec_stmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_selec_stmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterSelec_stmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitSelec_stmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitSelec_stmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Selec_stmtContext selec_stmt() throws RecognitionException {
		Selec_stmtContext _localctx = new Selec_stmtContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_selec_stmt);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(151);
			match(T__7);
			setState(152);
			match(T__0);
			setState(153);
			expr();
			setState(154);
			match(T__1);
			setState(155);
			stmt();
			setState(158);
			switch ( getInterpreter().adaptivePredict(_input,12,_ctx) ) {
			case 1:
				{
				setState(156);
				match(T__8);
				setState(157);
				stmt();
				}
				break;
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Iteration_stmtContext extends ParserRuleContext {
		public List<ExprContext> expr() {
			return getRuleContexts(ExprContext.class);
		}
		public ExprContext expr(int i) {
			return getRuleContext(ExprContext.class,i);
		}
		public StmtContext stmt() {
			return getRuleContext(StmtContext.class,0);
		}
		public Iteration_stmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_iteration_stmt; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterIteration_stmt(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitIteration_stmt(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitIteration_stmt(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Iteration_stmtContext iteration_stmt() throws RecognitionException {
		Iteration_stmtContext _localctx = new Iteration_stmtContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_iteration_stmt);
		int _la;
		try {
			setState(181);
			switch (_input.LA(1)) {
			case T__9:
				enterOuterAlt(_localctx, 1);
				{
				setState(160);
				match(T__9);
				setState(161);
				match(T__0);
				setState(162);
				expr();
				setState(163);
				match(T__1);
				setState(164);
				stmt();
				}
				break;
			case T__10:
				enterOuterAlt(_localctx, 2);
				{
				setState(166);
				match(T__10);
				setState(167);
				match(T__0);
				setState(169);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__14) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << T__19) | (1L << T__20) | (1L << STRING) | (1L << NULL) | (1L << BOOLCONST) | (1L << ID) | (1L << INT))) != 0)) {
					{
					setState(168);
					expr();
					}
				}

				setState(171);
				match(T__2);
				setState(173);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__14) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << T__19) | (1L << T__20) | (1L << STRING) | (1L << NULL) | (1L << BOOLCONST) | (1L << ID) | (1L << INT))) != 0)) {
					{
					setState(172);
					expr();
					}
				}

				setState(175);
				match(T__2);
				setState(177);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__14) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << T__19) | (1L << T__20) | (1L << STRING) | (1L << NULL) | (1L << BOOLCONST) | (1L << ID) | (1L << INT))) != 0)) {
					{
					setState(176);
					expr();
					}
				}

				setState(179);
				match(T__1);
				setState(180);
				stmt();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Jump_stmtContext extends ParserRuleContext {
		public Jump_stmtContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_jump_stmt; }
	 
		public Jump_stmtContext() { }
		public void copyFrom(Jump_stmtContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class Break_jumpContext extends Jump_stmtContext {
		public Break_jumpContext(Jump_stmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterBreak_jump(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitBreak_jump(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitBreak_jump(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Return_jumpContext extends Jump_stmtContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public Return_jumpContext(Jump_stmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterReturn_jump(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitReturn_jump(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitReturn_jump(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Continue_jumpContext extends Jump_stmtContext {
		public Continue_jumpContext(Jump_stmtContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterContinue_jump(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitContinue_jump(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitContinue_jump(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Jump_stmtContext jump_stmt() throws RecognitionException {
		Jump_stmtContext _localctx = new Jump_stmtContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_jump_stmt);
		int _la;
		try {
			setState(192);
			switch (_input.LA(1)) {
			case T__11:
				_localctx = new Continue_jumpContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(183);
				match(T__11);
				setState(184);
				match(T__2);
				}
				break;
			case T__12:
				_localctx = new Break_jumpContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(185);
				match(T__12);
				setState(186);
				match(T__2);
				}
				break;
			case T__13:
				_localctx = new Return_jumpContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(187);
				match(T__13);
				setState(189);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__14) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << T__19) | (1L << T__20) | (1L << STRING) | (1L << NULL) | (1L << BOOLCONST) | (1L << ID) | (1L << INT))) != 0)) {
					{
					setState(188);
					expr();
					}
				}

				setState(191);
				match(T__2);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExprContext extends ParserRuleContext {
		public Assign_exprContext assign_expr() {
			return getRuleContext(Assign_exprContext.class,0);
		}
		public ExprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expr; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterExpr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitExpr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitExpr(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExprContext expr() throws RecognitionException {
		ExprContext _localctx = new ExprContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_expr);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(194);
			assign_expr();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Assign_exprContext extends ParserRuleContext {
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public Unary_exprContext unary_expr() {
			return getRuleContext(Unary_exprContext.class,0);
		}
		public TerminalNode ASSIGN_OP() { return getToken(RzParser.ASSIGN_OP, 0); }
		public Assign_exprContext assign_expr() {
			return getRuleContext(Assign_exprContext.class,0);
		}
		public Assign_exprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_assign_expr; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterAssign_expr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitAssign_expr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitAssign_expr(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Assign_exprContext assign_expr() throws RecognitionException {
		Assign_exprContext _localctx = new Assign_exprContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_assign_expr);
		try {
			setState(201);
			switch ( getInterpreter().adaptivePredict(_input,19,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(196);
				expression(0);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(197);
				unary_expr();
				setState(198);
				match(ASSIGN_OP);
				setState(199);
				assign_expr();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Creation_exprContext extends ParserRuleContext {
		public Creation_exprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_creation_expr; }
	 
		public Creation_exprContext() { }
		public void copyFrom(Creation_exprContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class NEWARRAYTYPEContext extends Creation_exprContext {
		public ArrayContext array() {
			return getRuleContext(ArrayContext.class,0);
		}
		public NEWARRAYTYPEContext(Creation_exprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterNEWARRAYTYPE(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitNEWARRAYTYPE(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitNEWARRAYTYPE(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class UNARYEXPRContext extends Creation_exprContext {
		public Unary_exprContext unary_expr() {
			return getRuleContext(Unary_exprContext.class,0);
		}
		public UNARYEXPRContext(Creation_exprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterUNARYEXPR(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitUNARYEXPR(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitUNARYEXPR(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class NEWCLASSTYPEContext extends Creation_exprContext {
		public IdentContext ident() {
			return getRuleContext(IdentContext.class,0);
		}
		public NEWCLASSTYPEContext(Creation_exprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterNEWCLASSTYPE(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitNEWCLASSTYPE(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitNEWCLASSTYPE(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class NEWTYPEContext extends Creation_exprContext {
		public TerminalNode TYPE() { return getToken(RzParser.TYPE, 0); }
		public NEWTYPEContext(Creation_exprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterNEWTYPE(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitNEWTYPE(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitNEWTYPE(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Creation_exprContext creation_expr() throws RecognitionException {
		Creation_exprContext _localctx = new Creation_exprContext(_ctx, getState());
		enterRule(_localctx, 40, RULE_creation_expr);
		try {
			setState(210);
			switch ( getInterpreter().adaptivePredict(_input,20,_ctx) ) {
			case 1:
				_localctx = new NEWTYPEContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(203);
				match(T__14);
				setState(204);
				match(TYPE);
				}
				break;
			case 2:
				_localctx = new NEWCLASSTYPEContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(205);
				match(T__14);
				setState(206);
				ident();
				}
				break;
			case 3:
				_localctx = new NEWARRAYTYPEContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(207);
				match(T__14);
				setState(208);
				array(0);
				}
				break;
			case 4:
				_localctx = new UNARYEXPRContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(209);
				unary_expr();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ArrayContext extends ParserRuleContext {
		public ArrayContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_array; }
	 
		public ArrayContext() { }
		public void copyFrom(ArrayContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class ARR_MOREContext extends ArrayContext {
		public ArrayContext array() {
			return getRuleContext(ArrayContext.class,0);
		}
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ARR_MOREContext(ArrayContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterARR_MORE(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitARR_MORE(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitARR_MORE(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ARR_FINAL_BASEContext extends ArrayContext {
		public TerminalNode TYPE() { return getToken(RzParser.TYPE, 0); }
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ARR_FINAL_BASEContext(ArrayContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterARR_FINAL_BASE(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitARR_FINAL_BASE(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitARR_FINAL_BASE(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ARR_FINAL_CLASSContext extends ArrayContext {
		public IdentContext ident() {
			return getRuleContext(IdentContext.class,0);
		}
		public ExpressionContext expression() {
			return getRuleContext(ExpressionContext.class,0);
		}
		public ARR_FINAL_CLASSContext(ArrayContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterARR_FINAL_CLASS(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitARR_FINAL_CLASS(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitARR_FINAL_CLASS(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ArrayContext array() throws RecognitionException {
		return array(0);
	}

	private ArrayContext array(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ArrayContext _localctx = new ArrayContext(_ctx, _parentState);
		ArrayContext _prevctx = _localctx;
		int _startState = 42;
		enterRecursionRule(_localctx, 42, RULE_array, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			setState(226);
			switch (_input.LA(1)) {
			case TYPE:
				{
				_localctx = new ARR_FINAL_BASEContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;

				setState(213);
				match(TYPE);
				setState(214);
				match(T__5);
				setState(216);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__14) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << T__19) | (1L << T__20) | (1L << STRING) | (1L << NULL) | (1L << BOOLCONST) | (1L << ID) | (1L << INT))) != 0)) {
					{
					setState(215);
					expression(0);
					}
				}

				setState(218);
				match(T__6);
				}
				break;
			case ID:
				{
				_localctx = new ARR_FINAL_CLASSContext(_localctx);
				_ctx = _localctx;
				_prevctx = _localctx;
				setState(219);
				ident();
				setState(220);
				match(T__5);
				setState(222);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__14) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << T__19) | (1L << T__20) | (1L << STRING) | (1L << NULL) | (1L << BOOLCONST) | (1L << ID) | (1L << INT))) != 0)) {
					{
					setState(221);
					expression(0);
					}
				}

				setState(224);
				match(T__6);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			_ctx.stop = _input.LT(-1);
			setState(236);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,25,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					{
					_localctx = new ARR_MOREContext(new ArrayContext(_parentctx, _parentState));
					pushNewRecursionContext(_localctx, _startState, RULE_array);
					setState(228);
					if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
					setState(229);
					match(T__5);
					setState(231);
					_la = _input.LA(1);
					if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__14) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << T__19) | (1L << T__20) | (1L << STRING) | (1L << NULL) | (1L << BOOLCONST) | (1L << ID) | (1L << INT))) != 0)) {
						{
						setState(230);
						expression(0);
						}
					}

					setState(233);
					match(T__6);
					}
					} 
				}
				setState(238);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,25,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class Unary_exprContext extends ParserRuleContext {
		public Postfix_exprContext postfix_expr() {
			return getRuleContext(Postfix_exprContext.class,0);
		}
		public Unary_exprContext unary_expr() {
			return getRuleContext(Unary_exprContext.class,0);
		}
		public Unary_exprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_unary_expr; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterUnary_expr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitUnary_expr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitUnary_expr(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Unary_exprContext unary_expr() throws RecognitionException {
		Unary_exprContext _localctx = new Unary_exprContext(_ctx, getState());
		enterRule(_localctx, 44, RULE_unary_expr);
		int _la;
		try {
			setState(246);
			switch (_input.LA(1)) {
			case T__0:
			case STRING:
			case NULL:
			case BOOLCONST:
			case ID:
			case INT:
				enterOuterAlt(_localctx, 1);
				{
				setState(239);
				postfix_expr(0);
				}
				break;
			case T__15:
				enterOuterAlt(_localctx, 2);
				{
				setState(240);
				match(T__15);
				setState(241);
				unary_expr();
				}
				break;
			case T__16:
				enterOuterAlt(_localctx, 3);
				{
				setState(242);
				match(T__16);
				setState(243);
				unary_expr();
				}
				break;
			case T__17:
			case T__18:
			case T__19:
			case T__20:
				enterOuterAlt(_localctx, 4);
				{
				setState(244);
				_la = _input.LA(1);
				if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__17) | (1L << T__18) | (1L << T__19) | (1L << T__20))) != 0)) ) {
				_errHandler.recoverInline(this);
				} else {
					consume();
				}
				setState(245);
				unary_expr();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ExpressionContext extends ParserRuleContext {
		public ExpressionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_expression; }
	 
		public ExpressionContext() { }
		public void copyFrom(ExpressionContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class LOGIC_ANDContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public LOGIC_ANDContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterLOGIC_AND(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitLOGIC_AND(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitLOGIC_AND(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class SHIFTContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public SHIFTContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterSHIFT(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitSHIFT(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitSHIFT(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class INCLUSIVE_ORContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public INCLUSIVE_ORContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterINCLUSIVE_OR(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitINCLUSIVE_OR(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitINCLUSIVE_OR(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class EXCLUSIVE_ORContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public EXCLUSIVE_ORContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterEXCLUSIVE_OR(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitEXCLUSIVE_OR(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitEXCLUSIVE_OR(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ADDITIVEContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public ADDITIVEContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterADDITIVE(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitADDITIVE(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitADDITIVE(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class RELATIONContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public RELATIONContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterRELATION(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitRELATION(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitRELATION(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class LOGIC_ORContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public LOGIC_ORContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterLOGIC_OR(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitLOGIC_OR(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitLOGIC_OR(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class EQUALITYContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public EQUALITYContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterEQUALITY(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitEQUALITY(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitEQUALITY(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class ANDContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public ANDContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterAND(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitAND(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitAND(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class CREATIONContext extends ExpressionContext {
		public Creation_exprContext creation_expr() {
			return getRuleContext(Creation_exprContext.class,0);
		}
		public CREATIONContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterCREATION(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitCREATION(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitCREATION(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class MULTIContext extends ExpressionContext {
		public Token op;
		public List<ExpressionContext> expression() {
			return getRuleContexts(ExpressionContext.class);
		}
		public ExpressionContext expression(int i) {
			return getRuleContext(ExpressionContext.class,i);
		}
		public MULTIContext(ExpressionContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterMULTI(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitMULTI(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitMULTI(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ExpressionContext expression() throws RecognitionException {
		return expression(0);
	}

	private ExpressionContext expression(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		ExpressionContext _localctx = new ExpressionContext(_ctx, _parentState);
		ExpressionContext _prevctx = _localctx;
		int _startState = 46;
		enterRecursionRule(_localctx, 46, RULE_expression, _p);
		int _la;
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			{
			_localctx = new CREATIONContext(_localctx);
			_ctx = _localctx;
			_prevctx = _localctx;

			setState(249);
			creation_expr();
			}
			_ctx.stop = _input.LT(-1);
			setState(283);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,28,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					setState(281);
					switch ( getInterpreter().adaptivePredict(_input,27,_ctx) ) {
					case 1:
						{
						_localctx = new MULTIContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(251);
						if (!(precpred(_ctx, 10))) throw new FailedPredicateException(this, "precpred(_ctx, 10)");
						setState(252);
						((MULTIContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__21) | (1L << T__22) | (1L << T__23))) != 0)) ) {
							((MULTIContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						} else {
							consume();
						}
						setState(253);
						expression(11);
						}
						break;
					case 2:
						{
						_localctx = new ADDITIVEContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(254);
						if (!(precpred(_ctx, 9))) throw new FailedPredicateException(this, "precpred(_ctx, 9)");
						setState(255);
						((ADDITIVEContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__19 || _la==T__20) ) {
							((ADDITIVEContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						} else {
							consume();
						}
						setState(256);
						expression(10);
						}
						break;
					case 3:
						{
						_localctx = new SHIFTContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(257);
						if (!(precpred(_ctx, 8))) throw new FailedPredicateException(this, "precpred(_ctx, 8)");
						setState(258);
						((SHIFTContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__24 || _la==T__25) ) {
							((SHIFTContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						} else {
							consume();
						}
						setState(259);
						expression(9);
						}
						break;
					case 4:
						{
						_localctx = new RELATIONContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(260);
						if (!(precpred(_ctx, 7))) throw new FailedPredicateException(this, "precpred(_ctx, 7)");
						setState(261);
						((RELATIONContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__26) | (1L << T__27) | (1L << T__28) | (1L << T__29))) != 0)) ) {
							((RELATIONContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						} else {
							consume();
						}
						setState(262);
						expression(8);
						}
						break;
					case 5:
						{
						_localctx = new EQUALITYContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(263);
						if (!(precpred(_ctx, 6))) throw new FailedPredicateException(this, "precpred(_ctx, 6)");
						setState(264);
						((EQUALITYContext)_localctx).op = _input.LT(1);
						_la = _input.LA(1);
						if ( !(_la==T__30 || _la==T__31) ) {
							((EQUALITYContext)_localctx).op = (Token)_errHandler.recoverInline(this);
						} else {
							consume();
						}
						setState(265);
						expression(7);
						}
						break;
					case 6:
						{
						_localctx = new ANDContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(266);
						if (!(precpred(_ctx, 5))) throw new FailedPredicateException(this, "precpred(_ctx, 5)");
						setState(267);
						((ANDContext)_localctx).op = match(T__32);
						setState(268);
						expression(6);
						}
						break;
					case 7:
						{
						_localctx = new EXCLUSIVE_ORContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(269);
						if (!(precpred(_ctx, 4))) throw new FailedPredicateException(this, "precpred(_ctx, 4)");
						setState(270);
						((EXCLUSIVE_ORContext)_localctx).op = match(T__33);
						setState(271);
						expression(5);
						}
						break;
					case 8:
						{
						_localctx = new INCLUSIVE_ORContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(272);
						if (!(precpred(_ctx, 3))) throw new FailedPredicateException(this, "precpred(_ctx, 3)");
						setState(273);
						((INCLUSIVE_ORContext)_localctx).op = match(T__34);
						setState(274);
						expression(4);
						}
						break;
					case 9:
						{
						_localctx = new LOGIC_ANDContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(275);
						if (!(precpred(_ctx, 2))) throw new FailedPredicateException(this, "precpred(_ctx, 2)");
						setState(276);
						((LOGIC_ANDContext)_localctx).op = match(T__35);
						setState(277);
						expression(3);
						}
						break;
					case 10:
						{
						_localctx = new LOGIC_ORContext(new ExpressionContext(_parentctx, _parentState));
						pushNewRecursionContext(_localctx, _startState, RULE_expression);
						setState(278);
						if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
						setState(279);
						((LOGIC_ORContext)_localctx).op = match(T__36);
						setState(280);
						expression(2);
						}
						break;
					}
					} 
				}
				setState(285);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,28,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class Postfix_exprContext extends ParserRuleContext {
		public Primary_exprContext primary_expr() {
			return getRuleContext(Primary_exprContext.class,0);
		}
		public Postfix_exprContext postfix_expr() {
			return getRuleContext(Postfix_exprContext.class,0);
		}
		public PostfixContext postfix() {
			return getRuleContext(PostfixContext.class,0);
		}
		public Postfix_exprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_postfix_expr; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterPostfix_expr(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitPostfix_expr(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitPostfix_expr(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Postfix_exprContext postfix_expr() throws RecognitionException {
		return postfix_expr(0);
	}

	private Postfix_exprContext postfix_expr(int _p) throws RecognitionException {
		ParserRuleContext _parentctx = _ctx;
		int _parentState = getState();
		Postfix_exprContext _localctx = new Postfix_exprContext(_ctx, _parentState);
		Postfix_exprContext _prevctx = _localctx;
		int _startState = 48;
		enterRecursionRule(_localctx, 48, RULE_postfix_expr, _p);
		try {
			int _alt;
			enterOuterAlt(_localctx, 1);
			{
			{
			setState(287);
			primary_expr();
			}
			_ctx.stop = _input.LT(-1);
			setState(293);
			_errHandler.sync(this);
			_alt = getInterpreter().adaptivePredict(_input,29,_ctx);
			while ( _alt!=2 && _alt!=org.antlr.v4.runtime.atn.ATN.INVALID_ALT_NUMBER ) {
				if ( _alt==1 ) {
					if ( _parseListeners!=null ) triggerExitRuleEvent();
					_prevctx = _localctx;
					{
					{
					_localctx = new Postfix_exprContext(_parentctx, _parentState);
					pushNewRecursionContext(_localctx, _startState, RULE_postfix_expr);
					setState(289);
					if (!(precpred(_ctx, 1))) throw new FailedPredicateException(this, "precpred(_ctx, 1)");
					setState(290);
					postfix();
					}
					} 
				}
				setState(295);
				_errHandler.sync(this);
				_alt = getInterpreter().adaptivePredict(_input,29,_ctx);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			unrollRecursionContexts(_parentctx);
		}
		return _localctx;
	}

	public static class PostfixContext extends ParserRuleContext {
		public PostfixContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_postfix; }
	 
		public PostfixContext() { }
		public void copyFrom(PostfixContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class Build_in_FuntionContext extends PostfixContext {
		public IdentContext ident() {
			return getRuleContext(IdentContext.class,0);
		}
		public ArgumentsContext arguments() {
			return getRuleContext(ArgumentsContext.class,0);
		}
		public Build_in_FuntionContext(PostfixContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterBuild_in_Funtion(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitBuild_in_Funtion(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitBuild_in_Funtion(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class PlusPlusContext extends PostfixContext {
		public PlusPlusContext(PostfixContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterPlusPlus(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitPlusPlus(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitPlusPlus(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class SubscriptContext extends PostfixContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public SubscriptContext(PostfixContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterSubscript(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitSubscript(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitSubscript(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class FunctionCallContext extends PostfixContext {
		public ArgumentsContext arguments() {
			return getRuleContext(ArgumentsContext.class,0);
		}
		public FunctionCallContext(PostfixContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterFunctionCall(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitFunctionCall(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitFunctionCall(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class MemberContext extends PostfixContext {
		public IdentContext ident() {
			return getRuleContext(IdentContext.class,0);
		}
		public MemberContext(PostfixContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterMember(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitMember(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitMember(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class MinusMinusContext extends PostfixContext {
		public MinusMinusContext(PostfixContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterMinusMinus(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitMinusMinus(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitMinusMinus(this);
			else return visitor.visitChildren(this);
		}
	}

	public final PostfixContext postfix() throws RecognitionException {
		PostfixContext _localctx = new PostfixContext(_ctx, getState());
		enterRule(_localctx, 50, RULE_postfix);
		int _la;
		try {
			setState(317);
			switch ( getInterpreter().adaptivePredict(_input,32,_ctx) ) {
			case 1:
				_localctx = new Build_in_FuntionContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(296);
				match(T__37);
				setState(297);
				ident();
				setState(298);
				match(T__0);
				setState(300);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__14) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << T__19) | (1L << T__20) | (1L << STRING) | (1L << NULL) | (1L << BOOLCONST) | (1L << ID) | (1L << INT))) != 0)) {
					{
					setState(299);
					arguments();
					}
				}

				setState(302);
				match(T__1);
				}
				break;
			case 2:
				_localctx = new SubscriptContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(304);
				match(T__5);
				setState(305);
				expr();
				setState(306);
				match(T__6);
				}
				break;
			case 3:
				_localctx = new FunctionCallContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(308);
				match(T__0);
				setState(310);
				_la = _input.LA(1);
				if ((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__14) | (1L << T__15) | (1L << T__16) | (1L << T__17) | (1L << T__18) | (1L << T__19) | (1L << T__20) | (1L << STRING) | (1L << NULL) | (1L << BOOLCONST) | (1L << ID) | (1L << INT))) != 0)) {
					{
					setState(309);
					arguments();
					}
				}

				setState(312);
				match(T__1);
				}
				break;
			case 4:
				_localctx = new MemberContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(313);
				match(T__37);
				setState(314);
				ident();
				}
				break;
			case 5:
				_localctx = new PlusPlusContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(315);
				match(T__15);
				}
				break;
			case 6:
				_localctx = new MinusMinusContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(316);
				match(T__16);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ArgumentsContext extends ParserRuleContext {
		public List<Assign_exprContext> assign_expr() {
			return getRuleContexts(Assign_exprContext.class);
		}
		public Assign_exprContext assign_expr(int i) {
			return getRuleContext(Assign_exprContext.class,i);
		}
		public ArgumentsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_arguments; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterArguments(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitArguments(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitArguments(this);
			else return visitor.visitChildren(this);
		}
	}

	public final ArgumentsContext arguments() throws RecognitionException {
		ArgumentsContext _localctx = new ArgumentsContext(_ctx, getState());
		enterRule(_localctx, 52, RULE_arguments);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(319);
			assign_expr();
			setState(324);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__4) {
				{
				{
				setState(320);
				match(T__4);
				setState(321);
				assign_expr();
				}
				}
				setState(326);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Primary_exprContext extends ParserRuleContext {
		public Primary_exprContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_primary_expr; }
	 
		public Primary_exprContext() { }
		public void copyFrom(Primary_exprContext ctx) {
			super.copyFrom(ctx);
		}
	}
	public static class Primary_const_intContext extends Primary_exprContext {
		public TerminalNode INT() { return getToken(RzParser.INT, 0); }
		public Primary_const_intContext(Primary_exprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterPrimary_const_int(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitPrimary_const_int(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitPrimary_const_int(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Primary_PexprPContext extends Primary_exprContext {
		public ExprContext expr() {
			return getRuleContext(ExprContext.class,0);
		}
		public Primary_PexprPContext(Primary_exprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterPrimary_PexprP(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitPrimary_PexprP(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitPrimary_PexprP(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Primary_identContext extends Primary_exprContext {
		public IdentContext ident() {
			return getRuleContext(IdentContext.class,0);
		}
		public Primary_identContext(Primary_exprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterPrimary_ident(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitPrimary_ident(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitPrimary_ident(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Primary_const_stringContext extends Primary_exprContext {
		public TerminalNode STRING() { return getToken(RzParser.STRING, 0); }
		public Primary_const_stringContext(Primary_exprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterPrimary_const_string(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitPrimary_const_string(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitPrimary_const_string(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Primary_nullContext extends Primary_exprContext {
		public TerminalNode NULL() { return getToken(RzParser.NULL, 0); }
		public Primary_nullContext(Primary_exprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterPrimary_null(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitPrimary_null(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitPrimary_null(this);
			else return visitor.visitChildren(this);
		}
	}
	public static class Primary_const_boolContext extends Primary_exprContext {
		public TerminalNode BOOLCONST() { return getToken(RzParser.BOOLCONST, 0); }
		public Primary_const_boolContext(Primary_exprContext ctx) { copyFrom(ctx); }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).enterPrimary_const_bool(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof RzListener ) ((RzListener)listener).exitPrimary_const_bool(this);
		}
		@Override
		public <T> T accept(ParseTreeVisitor<? extends T> visitor) {
			if ( visitor instanceof RzVisitor ) return ((RzVisitor<? extends T>)visitor).visitPrimary_const_bool(this);
			else return visitor.visitChildren(this);
		}
	}

	public final Primary_exprContext primary_expr() throws RecognitionException {
		Primary_exprContext _localctx = new Primary_exprContext(_ctx, getState());
		enterRule(_localctx, 54, RULE_primary_expr);
		try {
			setState(336);
			switch (_input.LA(1)) {
			case ID:
				_localctx = new Primary_identContext(_localctx);
				enterOuterAlt(_localctx, 1);
				{
				setState(327);
				ident();
				}
				break;
			case INT:
				_localctx = new Primary_const_intContext(_localctx);
				enterOuterAlt(_localctx, 2);
				{
				setState(328);
				match(INT);
				}
				break;
			case BOOLCONST:
				_localctx = new Primary_const_boolContext(_localctx);
				enterOuterAlt(_localctx, 3);
				{
				setState(329);
				match(BOOLCONST);
				}
				break;
			case STRING:
				_localctx = new Primary_const_stringContext(_localctx);
				enterOuterAlt(_localctx, 4);
				{
				setState(330);
				match(STRING);
				}
				break;
			case NULL:
				_localctx = new Primary_nullContext(_localctx);
				enterOuterAlt(_localctx, 5);
				{
				setState(331);
				match(NULL);
				}
				break;
			case T__0:
				_localctx = new Primary_PexprPContext(_localctx);
				enterOuterAlt(_localctx, 6);
				{
				setState(332);
				match(T__0);
				setState(333);
				expr();
				setState(334);
				match(T__1);
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public boolean sempred(RuleContext _localctx, int ruleIndex, int predIndex) {
		switch (ruleIndex) {
		case 8:
			return type_sempred((TypeContext)_localctx, predIndex);
		case 21:
			return array_sempred((ArrayContext)_localctx, predIndex);
		case 23:
			return expression_sempred((ExpressionContext)_localctx, predIndex);
		case 24:
			return postfix_expr_sempred((Postfix_exprContext)_localctx, predIndex);
		}
		return true;
	}
	private boolean type_sempred(TypeContext _localctx, int predIndex) {
		switch (predIndex) {
		case 0:
			return precpred(_ctx, 1);
		}
		return true;
	}
	private boolean array_sempred(ArrayContext _localctx, int predIndex) {
		switch (predIndex) {
		case 1:
			return precpred(_ctx, 1);
		}
		return true;
	}
	private boolean expression_sempred(ExpressionContext _localctx, int predIndex) {
		switch (predIndex) {
		case 2:
			return precpred(_ctx, 10);
		case 3:
			return precpred(_ctx, 9);
		case 4:
			return precpred(_ctx, 8);
		case 5:
			return precpred(_ctx, 7);
		case 6:
			return precpred(_ctx, 6);
		case 7:
			return precpred(_ctx, 5);
		case 8:
			return precpred(_ctx, 4);
		case 9:
			return precpred(_ctx, 3);
		case 10:
			return precpred(_ctx, 2);
		case 11:
			return precpred(_ctx, 1);
		}
		return true;
	}
	private boolean postfix_expr_sempred(Postfix_exprContext _localctx, int predIndex) {
		switch (predIndex) {
		case 12:
			return precpred(_ctx, 1);
		}
		return true;
	}

	public static final String _serializedATN =
		"\3\u0430\ud6d1\u8206\uad2d\u4417\uaef1\u8d80\uaadd\3\63\u0155\4\2\t\2"+
		"\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\3\2\3\2\3\2\7\2>\n\2\f\2\16\2"+
		"A\13\2\3\3\3\3\3\3\3\3\5\3G\n\3\3\3\3\3\3\3\3\4\3\4\3\4\3\4\3\5\3\5\3"+
		"\5\3\5\3\5\3\5\3\6\3\6\3\6\3\6\3\6\3\6\7\6\\\n\6\f\6\16\6_\13\6\3\7\3"+
		"\7\3\7\3\7\7\7e\n\7\f\7\16\7h\13\7\3\b\3\b\3\b\5\bm\n\b\3\t\3\t\3\n\3"+
		"\n\3\n\5\nt\n\n\3\n\3\n\3\n\7\ny\n\n\f\n\16\n|\13\n\3\13\3\13\3\f\3\f"+
		"\3\r\3\r\3\16\3\16\3\16\3\16\3\16\5\16\u0089\n\16\3\17\5\17\u008c\n\17"+
		"\3\17\3\17\3\20\3\20\3\20\7\20\u0093\n\20\f\20\16\20\u0096\13\20\3\20"+
		"\3\20\3\21\3\21\3\21\3\21\3\21\3\21\3\21\5\21\u00a1\n\21\3\22\3\22\3\22"+
		"\3\22\3\22\3\22\3\22\3\22\3\22\5\22\u00ac\n\22\3\22\3\22\5\22\u00b0\n"+
		"\22\3\22\3\22\5\22\u00b4\n\22\3\22\3\22\5\22\u00b8\n\22\3\23\3\23\3\23"+
		"\3\23\3\23\3\23\5\23\u00c0\n\23\3\23\5\23\u00c3\n\23\3\24\3\24\3\25\3"+
		"\25\3\25\3\25\3\25\5\25\u00cc\n\25\3\26\3\26\3\26\3\26\3\26\3\26\3\26"+
		"\5\26\u00d5\n\26\3\27\3\27\3\27\3\27\5\27\u00db\n\27\3\27\3\27\3\27\3"+
		"\27\5\27\u00e1\n\27\3\27\3\27\5\27\u00e5\n\27\3\27\3\27\3\27\5\27\u00ea"+
		"\n\27\3\27\7\27\u00ed\n\27\f\27\16\27\u00f0\13\27\3\30\3\30\3\30\3\30"+
		"\3\30\3\30\3\30\5\30\u00f9\n\30\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31"+
		"\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31"+
		"\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\3\31\7\31\u011c\n\31"+
		"\f\31\16\31\u011f\13\31\3\32\3\32\3\32\3\32\3\32\7\32\u0126\n\32\f\32"+
		"\16\32\u0129\13\32\3\33\3\33\3\33\3\33\5\33\u012f\n\33\3\33\3\33\3\33"+
		"\3\33\3\33\3\33\3\33\3\33\5\33\u0139\n\33\3\33\3\33\3\33\3\33\3\33\5\33"+
		"\u0140\n\33\3\34\3\34\3\34\7\34\u0145\n\34\f\34\16\34\u0148\13\34\3\35"+
		"\3\35\3\35\3\35\3\35\3\35\3\35\3\35\3\35\5\35\u0153\n\35\3\35\2\6\22,"+
		"\60\62\36\2\4\6\b\n\f\16\20\22\24\26\30\32\34\36 \"$&(*,.\60\62\64\66"+
		"8\2\b\3\2\24\27\3\2\30\32\3\2\26\27\3\2\33\34\3\2\35 \3\2!\"\u0174\2?"+
		"\3\2\2\2\4B\3\2\2\2\6K\3\2\2\2\bO\3\2\2\2\nU\3\2\2\2\ff\3\2\2\2\16i\3"+
		"\2\2\2\20n\3\2\2\2\22s\3\2\2\2\24}\3\2\2\2\26\177\3\2\2\2\30\u0081\3\2"+
		"\2\2\32\u0088\3\2\2\2\34\u008b\3\2\2\2\36\u008f\3\2\2\2 \u0099\3\2\2\2"+
		"\"\u00b7\3\2\2\2$\u00c2\3\2\2\2&\u00c4\3\2\2\2(\u00cb\3\2\2\2*\u00d4\3"+
		"\2\2\2,\u00e4\3\2\2\2.\u00f8\3\2\2\2\60\u00fa\3\2\2\2\62\u0120\3\2\2\2"+
		"\64\u013f\3\2\2\2\66\u0141\3\2\2\28\u0152\3\2\2\2:>\5\4\3\2;>\5\6\4\2"+
		"<>\5\b\5\2=:\3\2\2\2=;\3\2\2\2=<\3\2\2\2>A\3\2\2\2?=\3\2\2\2?@\3\2\2\2"+
		"@\3\3\2\2\2A?\3\2\2\2BC\5\22\n\2CD\5\24\13\2DF\7\3\2\2EG\5\n\6\2FE\3\2"+
		"\2\2FG\3\2\2\2GH\3\2\2\2HI\7\4\2\2IJ\5\36\20\2J\5\3\2\2\2KL\5\22\n\2L"+
		"M\5\16\b\2MN\7\5\2\2N\7\3\2\2\2OP\7\6\2\2PQ\5\24\13\2QR\5\26\f\2RS\5\f"+
		"\7\2ST\5\30\r\2T\t\3\2\2\2UV\5\22\n\2V]\5\24\13\2WX\7\7\2\2XY\5\22\n\2"+
		"YZ\5\24\13\2Z\\\3\2\2\2[W\3\2\2\2\\_\3\2\2\2][\3\2\2\2]^\3\2\2\2^\13\3"+
		"\2\2\2_]\3\2\2\2`a\5\22\n\2ab\5\24\13\2bc\7\5\2\2ce\3\2\2\2d`\3\2\2\2"+
		"eh\3\2\2\2fd\3\2\2\2fg\3\2\2\2g\r\3\2\2\2hf\3\2\2\2il\5\24\13\2jk\7\60"+
		"\2\2km\5\20\t\2lj\3\2\2\2lm\3\2\2\2m\17\3\2\2\2no\5&\24\2o\21\3\2\2\2"+
		"pq\b\n\1\2qt\7,\2\2rt\5\24\13\2sp\3\2\2\2sr\3\2\2\2tz\3\2\2\2uv\f\3\2"+
		"\2vw\7\b\2\2wy\7\t\2\2xu\3\2\2\2y|\3\2\2\2zx\3\2\2\2z{\3\2\2\2{\23\3\2"+
		"\2\2|z\3\2\2\2}~\7/\2\2~\25\3\2\2\2\177\u0080\7*\2\2\u0080\27\3\2\2\2"+
		"\u0081\u0082\7+\2\2\u0082\31\3\2\2\2\u0083\u0089\5\34\17\2\u0084\u0089"+
		"\5\36\20\2\u0085\u0089\5 \21\2\u0086\u0089\5\"\22\2\u0087\u0089\5$\23"+
		"\2\u0088\u0083\3\2\2\2\u0088\u0084\3\2\2\2\u0088\u0085\3\2\2\2\u0088\u0086"+
		"\3\2\2\2\u0088\u0087\3\2\2\2\u0089\33\3\2\2\2\u008a\u008c\5(\25\2\u008b"+
		"\u008a\3\2\2\2\u008b\u008c\3\2\2\2\u008c\u008d\3\2\2\2\u008d\u008e\7\5"+
		"\2\2\u008e\35\3\2\2\2\u008f\u0094\5\26\f\2\u0090\u0093\5\6\4\2\u0091\u0093"+
		"\5\32\16\2\u0092\u0090\3\2\2\2\u0092\u0091\3\2\2\2\u0093\u0096\3\2\2\2"+
		"\u0094\u0092\3\2\2\2\u0094\u0095\3\2\2\2\u0095\u0097\3\2\2\2\u0096\u0094"+
		"\3\2\2\2\u0097\u0098\5\30\r\2\u0098\37\3\2\2\2\u0099\u009a\7\n\2\2\u009a"+
		"\u009b\7\3\2\2\u009b\u009c\5&\24\2\u009c\u009d\7\4\2\2\u009d\u00a0\5\32"+
		"\16\2\u009e\u009f\7\13\2\2\u009f\u00a1\5\32\16\2\u00a0\u009e\3\2\2\2\u00a0"+
		"\u00a1\3\2\2\2\u00a1!\3\2\2\2\u00a2\u00a3\7\f\2\2\u00a3\u00a4\7\3\2\2"+
		"\u00a4\u00a5\5&\24\2\u00a5\u00a6\7\4\2\2\u00a6\u00a7\5\32\16\2\u00a7\u00b8"+
		"\3\2\2\2\u00a8\u00a9\7\r\2\2\u00a9\u00ab\7\3\2\2\u00aa\u00ac\5&\24\2\u00ab"+
		"\u00aa\3\2\2\2\u00ab\u00ac\3\2\2\2\u00ac\u00ad\3\2\2\2\u00ad\u00af\7\5"+
		"\2\2\u00ae\u00b0\5&\24\2\u00af\u00ae\3\2\2\2\u00af\u00b0\3\2\2\2\u00b0"+
		"\u00b1\3\2\2\2\u00b1\u00b3\7\5\2\2\u00b2\u00b4\5&\24\2\u00b3\u00b2\3\2"+
		"\2\2\u00b3\u00b4\3\2\2\2\u00b4\u00b5\3\2\2\2\u00b5\u00b6\7\4\2\2\u00b6"+
		"\u00b8\5\32\16\2\u00b7\u00a2\3\2\2\2\u00b7\u00a8\3\2\2\2\u00b8#\3\2\2"+
		"\2\u00b9\u00ba\7\16\2\2\u00ba\u00c3\7\5\2\2\u00bb\u00bc\7\17\2\2\u00bc"+
		"\u00c3\7\5\2\2\u00bd\u00bf\7\20\2\2\u00be\u00c0\5&\24\2\u00bf\u00be\3"+
		"\2\2\2\u00bf\u00c0\3\2\2\2\u00c0\u00c1\3\2\2\2\u00c1\u00c3\7\5\2\2\u00c2"+
		"\u00b9\3\2\2\2\u00c2\u00bb\3\2\2\2\u00c2\u00bd\3\2\2\2\u00c3%\3\2\2\2"+
		"\u00c4\u00c5\5(\25\2\u00c5\'\3\2\2\2\u00c6\u00cc\5\60\31\2\u00c7\u00c8"+
		"\5.\30\2\u00c8\u00c9\7\60\2\2\u00c9\u00ca\5(\25\2\u00ca\u00cc\3\2\2\2"+
		"\u00cb\u00c6\3\2\2\2\u00cb\u00c7\3\2\2\2\u00cc)\3\2\2\2\u00cd\u00ce\7"+
		"\21\2\2\u00ce\u00d5\7,\2\2\u00cf\u00d0\7\21\2\2\u00d0\u00d5\5\24\13\2"+
		"\u00d1\u00d2\7\21\2\2\u00d2\u00d5\5,\27\2\u00d3\u00d5\5.\30\2\u00d4\u00cd"+
		"\3\2\2\2\u00d4\u00cf\3\2\2\2\u00d4\u00d1\3\2\2\2\u00d4\u00d3\3\2\2\2\u00d5"+
		"+\3\2\2\2\u00d6\u00d7\b\27\1\2\u00d7\u00d8\7,\2\2\u00d8\u00da\7\b\2\2"+
		"\u00d9\u00db\5\60\31\2\u00da\u00d9\3\2\2\2\u00da\u00db\3\2\2\2\u00db\u00dc"+
		"\3\2\2\2\u00dc\u00e5\7\t\2\2\u00dd\u00de\5\24\13\2\u00de\u00e0\7\b\2\2"+
		"\u00df\u00e1\5\60\31\2\u00e0\u00df\3\2\2\2\u00e0\u00e1\3\2\2\2\u00e1\u00e2"+
		"\3\2\2\2\u00e2\u00e3\7\t\2\2\u00e3\u00e5\3\2\2\2\u00e4\u00d6\3\2\2\2\u00e4"+
		"\u00dd\3\2\2\2\u00e5\u00ee\3\2\2\2\u00e6\u00e7\f\3\2\2\u00e7\u00e9\7\b"+
		"\2\2\u00e8\u00ea\5\60\31\2\u00e9\u00e8\3\2\2\2\u00e9\u00ea\3\2\2\2\u00ea"+
		"\u00eb\3\2\2\2\u00eb\u00ed\7\t\2\2\u00ec\u00e6\3\2\2\2\u00ed\u00f0\3\2"+
		"\2\2\u00ee\u00ec\3\2\2\2\u00ee\u00ef\3\2\2\2\u00ef-\3\2\2\2\u00f0\u00ee"+
		"\3\2\2\2\u00f1\u00f9\5\62\32\2\u00f2\u00f3\7\22\2\2\u00f3\u00f9\5.\30"+
		"\2\u00f4\u00f5\7\23\2\2\u00f5\u00f9\5.\30\2\u00f6\u00f7\t\2\2\2\u00f7"+
		"\u00f9\5.\30\2\u00f8\u00f1\3\2\2\2\u00f8\u00f2\3\2\2\2\u00f8\u00f4\3\2"+
		"\2\2\u00f8\u00f6\3\2\2\2\u00f9/\3\2\2\2\u00fa\u00fb\b\31\1\2\u00fb\u00fc"+
		"\5*\26\2\u00fc\u011d\3\2\2\2\u00fd\u00fe\f\f\2\2\u00fe\u00ff\t\3\2\2\u00ff"+
		"\u011c\5\60\31\r\u0100\u0101\f\13\2\2\u0101\u0102\t\4\2\2\u0102\u011c"+
		"\5\60\31\f\u0103\u0104\f\n\2\2\u0104\u0105\t\5\2\2\u0105\u011c\5\60\31"+
		"\13\u0106\u0107\f\t\2\2\u0107\u0108\t\6\2\2\u0108\u011c\5\60\31\n\u0109"+
		"\u010a\f\b\2\2\u010a\u010b\t\7\2\2\u010b\u011c\5\60\31\t\u010c\u010d\f"+
		"\7\2\2\u010d\u010e\7#\2\2\u010e\u011c\5\60\31\b\u010f\u0110\f\6\2\2\u0110"+
		"\u0111\7$\2\2\u0111\u011c\5\60\31\7\u0112\u0113\f\5\2\2\u0113\u0114\7"+
		"%\2\2\u0114\u011c\5\60\31\6\u0115\u0116\f\4\2\2\u0116\u0117\7&\2\2\u0117"+
		"\u011c\5\60\31\5\u0118\u0119\f\3\2\2\u0119\u011a\7\'\2\2\u011a\u011c\5"+
		"\60\31\4\u011b\u00fd\3\2\2\2\u011b\u0100\3\2\2\2\u011b\u0103\3\2\2\2\u011b"+
		"\u0106\3\2\2\2\u011b\u0109\3\2\2\2\u011b\u010c\3\2\2\2\u011b\u010f\3\2"+
		"\2\2\u011b\u0112\3\2\2\2\u011b\u0115\3\2\2\2\u011b\u0118\3\2\2\2\u011c"+
		"\u011f\3\2\2\2\u011d\u011b\3\2\2\2\u011d\u011e\3\2\2\2\u011e\61\3\2\2"+
		"\2\u011f\u011d\3\2\2\2\u0120\u0121\b\32\1\2\u0121\u0122\58\35\2\u0122"+
		"\u0127\3\2\2\2\u0123\u0124\f\3\2\2\u0124\u0126\5\64\33\2\u0125\u0123\3"+
		"\2\2\2\u0126\u0129\3\2\2\2\u0127\u0125\3\2\2\2\u0127\u0128\3\2\2\2\u0128"+
		"\63\3\2\2\2\u0129\u0127\3\2\2\2\u012a\u012b\7(\2\2\u012b\u012c\5\24\13"+
		"\2\u012c\u012e\7\3\2\2\u012d\u012f\5\66\34\2\u012e\u012d\3\2\2\2\u012e"+
		"\u012f\3\2\2\2\u012f\u0130\3\2\2\2\u0130\u0131\7\4\2\2\u0131\u0140\3\2"+
		"\2\2\u0132\u0133\7\b\2\2\u0133\u0134\5&\24\2\u0134\u0135\7\t\2\2\u0135"+
		"\u0140\3\2\2\2\u0136\u0138\7\3\2\2\u0137\u0139\5\66\34\2\u0138\u0137\3"+
		"\2\2\2\u0138\u0139\3\2\2\2\u0139\u013a\3\2\2\2\u013a\u0140\7\4\2\2\u013b"+
		"\u013c\7(\2\2\u013c\u0140\5\24\13\2\u013d\u0140\7\22\2\2\u013e\u0140\7"+
		"\23\2\2\u013f\u012a\3\2\2\2\u013f\u0132\3\2\2\2\u013f\u0136\3\2\2\2\u013f"+
		"\u013b\3\2\2\2\u013f\u013d\3\2\2\2\u013f\u013e\3\2\2\2\u0140\65\3\2\2"+
		"\2\u0141\u0146\5(\25\2\u0142\u0143\7\7\2\2\u0143\u0145\5(\25\2\u0144\u0142"+
		"\3\2\2\2\u0145\u0148\3\2\2\2\u0146\u0144\3\2\2\2\u0146\u0147\3\2\2\2\u0147"+
		"\67\3\2\2\2\u0148\u0146\3\2\2\2\u0149\u0153\5\24\13\2\u014a\u0153\7\61"+
		"\2\2\u014b\u0153\7.\2\2\u014c\u0153\7)\2\2\u014d\u0153\7-\2\2\u014e\u014f"+
		"\7\3\2\2\u014f\u0150\5&\24\2\u0150\u0151\7\4\2\2\u0151\u0153\3\2\2\2\u0152"+
		"\u0149\3\2\2\2\u0152\u014a\3\2\2\2\u0152\u014b\3\2\2\2\u0152\u014c\3\2"+
		"\2\2\u0152\u014d\3\2\2\2\u0152\u014e\3\2\2\2\u01539\3\2\2\2%=?F]flsz\u0088"+
		"\u008b\u0092\u0094\u00a0\u00ab\u00af\u00b3\u00b7\u00bf\u00c2\u00cb\u00d4"+
		"\u00da\u00e0\u00e4\u00e9\u00ee\u00f8\u011b\u011d\u0127\u012e\u0138\u013f"+
		"\u0146\u0152";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}