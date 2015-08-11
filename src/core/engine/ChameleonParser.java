// Generated from Chameleon.g4 by ANTLR 4.5
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class ChameleonParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.5", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T_INT=7, T_String=8, T_Int64=9, 
		T_Int32=10, T_Int8=11, T_Int16=12, T_UInt8=13, T_UInt16=14, T_UInt32=15, 
		T_UInt64=16, COMMENT=17, ID=18, INT=19, NEWLINE=20, WS=21, NameStartChar=22;
	public static final int
		RULE_prog = 0, RULE_model = 1, RULE_property_line = 2, RULE_words = 3, 
		RULE_property_line_words = 4, RULE_array_property = 5, RULE_c_property = 6, 
		RULE_p_type = 7;
	public static final String[] ruleNames = {
		"prog", "model", "property_line", "words", "property_line_words", "array_property", 
		"c_property", "p_type"
	};

	private static final String[] _LITERAL_NAMES = {
		null, "'model'", "'{'", "'}'", "'/*'", "'*/'", "'array'", "'int'", "'string'", 
		"'int64'", "'int32'", "'int8'", "'int16'", "'uint8'", "'uint16'", "'uint32'", 
		"'uint64'"
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, null, null, null, null, null, null, "T_INT", "T_String", "T_Int64", 
		"T_Int32", "T_Int8", "T_Int16", "T_UInt8", "T_UInt16", "T_UInt32", "T_UInt64", 
		"COMMENT", "ID", "INT", "NEWLINE", "WS", "NameStartChar"
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
	public String getGrammarFileName() { return "Chameleon.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public ChameleonParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}
	public static class ProgContext extends ParserRuleContext {
		public List<ModelContext> model() {
			return getRuleContexts(ModelContext.class);
		}
		public ModelContext model(int i) {
			return getRuleContext(ModelContext.class,i);
		}
		public List<TerminalNode> NEWLINE() { return getTokens(ChameleonParser.NEWLINE); }
		public TerminalNode NEWLINE(int i) {
			return getToken(ChameleonParser.NEWLINE, i);
		}
		public List<WordsContext> words() {
			return getRuleContexts(WordsContext.class);
		}
		public WordsContext words(int i) {
			return getRuleContext(WordsContext.class,i);
		}
		public ProgContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_prog; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChameleonListener ) ((ChameleonListener)listener).enterProg(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChameleonListener ) ((ChameleonListener)listener).exitProg(this);
		}
	}

	public final ProgContext prog() throws RecognitionException {
		ProgContext _localctx = new ProgContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_prog);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(19); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				setState(19);
				switch (_input.LA(1)) {
				case T__0:
					{
					setState(16);
					model();
					}
					break;
				case NEWLINE:
					{
					setState(17);
					match(NEWLINE);
					}
					break;
				case T__3:
					{
					setState(18);
					words();
					}
					break;
				default:
					throw new NoViableAltException(this);
				}
				}
				setState(21); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( (((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__0) | (1L << T__3) | (1L << NEWLINE))) != 0) );
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

	public static class ModelContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(ChameleonParser.ID, 0); }
		public List<Property_lineContext> property_line() {
			return getRuleContexts(Property_lineContext.class);
		}
		public Property_lineContext property_line(int i) {
			return getRuleContext(Property_lineContext.class,i);
		}
		public ModelContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_model; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChameleonListener ) ((ChameleonListener)listener).enterModel(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChameleonListener ) ((ChameleonListener)listener).exitModel(this);
		}
	}

	public final ModelContext model() throws RecognitionException {
		ModelContext _localctx = new ModelContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_model);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(23);
			match(T__0);
			setState(24);
			match(ID);
			setState(25);
			match(T__1);
			setState(27); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(26);
				property_line();
				}
				}
				setState(29); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( (((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T__5) | (1L << T_INT) | (1L << T_String) | (1L << T_Int64) | (1L << T_Int32) | (1L << T_Int8) | (1L << T_Int16) | (1L << T_UInt8) | (1L << T_UInt16) | (1L << T_UInt32) | (1L << T_UInt64) | (1L << ID) | (1L << NEWLINE))) != 0) );
			setState(31);
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

	public static class Property_lineContext extends ParserRuleContext {
		public Property_line_wordsContext property_line_words() {
			return getRuleContext(Property_line_wordsContext.class,0);
		}
		public TerminalNode NEWLINE() { return getToken(ChameleonParser.NEWLINE, 0); }
		public Property_lineContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_property_line; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChameleonListener ) ((ChameleonListener)listener).enterProperty_line(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChameleonListener ) ((ChameleonListener)listener).exitProperty_line(this);
		}
	}

	public final Property_lineContext property_line() throws RecognitionException {
		Property_lineContext _localctx = new Property_lineContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_property_line);
		try {
			setState(35);
			switch (_input.LA(1)) {
			case T__5:
			case T_INT:
			case T_String:
			case T_Int64:
			case T_Int32:
			case T_Int8:
			case T_Int16:
			case T_UInt8:
			case T_UInt16:
			case T_UInt32:
			case T_UInt64:
			case ID:
				enterOuterAlt(_localctx, 1);
				{
				setState(33);
				property_line_words();
				}
				break;
			case NEWLINE:
				enterOuterAlt(_localctx, 2);
				{
				setState(34);
				match(NEWLINE);
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

	public static class WordsContext extends ParserRuleContext {
		public List<TerminalNode> NameStartChar() { return getTokens(ChameleonParser.NameStartChar); }
		public TerminalNode NameStartChar(int i) {
			return getToken(ChameleonParser.NameStartChar, i);
		}
		public WordsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_words; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChameleonListener ) ((ChameleonListener)listener).enterWords(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChameleonListener ) ((ChameleonListener)listener).exitWords(this);
		}
	}

	public final WordsContext words() throws RecognitionException {
		WordsContext _localctx = new WordsContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_words);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(37);
			match(T__3);
			setState(39); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(38);
				match(NameStartChar);
				}
				}
				setState(41); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==NameStartChar );
			setState(43);
			match(T__4);
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

	public static class Property_line_wordsContext extends ParserRuleContext {
		public TerminalNode NEWLINE() { return getToken(ChameleonParser.NEWLINE, 0); }
		public C_propertyContext c_property() {
			return getRuleContext(C_propertyContext.class,0);
		}
		public Array_propertyContext array_property() {
			return getRuleContext(Array_propertyContext.class,0);
		}
		public Property_line_wordsContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_property_line_words; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChameleonListener ) ((ChameleonListener)listener).enterProperty_line_words(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChameleonListener ) ((ChameleonListener)listener).exitProperty_line_words(this);
		}
	}

	public final Property_line_wordsContext property_line_words() throws RecognitionException {
		Property_line_wordsContext _localctx = new Property_line_wordsContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_property_line_words);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(47);
			switch (_input.LA(1)) {
			case T_INT:
			case T_String:
			case T_Int64:
			case T_Int32:
			case T_Int8:
			case T_Int16:
			case T_UInt8:
			case T_UInt16:
			case T_UInt32:
			case T_UInt64:
			case ID:
				{
				setState(45);
				c_property();
				}
				break;
			case T__5:
				{
				setState(46);
				array_property();
				}
				break;
			default:
				throw new NoViableAltException(this);
			}
			setState(49);
			match(NEWLINE);
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

	public static class Array_propertyContext extends ParserRuleContext {
		public P_typeContext p_type() {
			return getRuleContext(P_typeContext.class,0);
		}
		public TerminalNode ID() { return getToken(ChameleonParser.ID, 0); }
		public Array_propertyContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_array_property; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChameleonListener ) ((ChameleonListener)listener).enterArray_property(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChameleonListener ) ((ChameleonListener)listener).exitArray_property(this);
		}
	}

	public final Array_propertyContext array_property() throws RecognitionException {
		Array_propertyContext _localctx = new Array_propertyContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_array_property);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(51);
			match(T__5);
			setState(52);
			p_type();
			setState(53);
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

	public static class C_propertyContext extends ParserRuleContext {
		public P_typeContext p_type() {
			return getRuleContext(P_typeContext.class,0);
		}
		public TerminalNode ID() { return getToken(ChameleonParser.ID, 0); }
		public C_propertyContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_c_property; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChameleonListener ) ((ChameleonListener)listener).enterC_property(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChameleonListener ) ((ChameleonListener)listener).exitC_property(this);
		}
	}

	public final C_propertyContext c_property() throws RecognitionException {
		C_propertyContext _localctx = new C_propertyContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_c_property);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(55);
			p_type();
			setState(56);
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

	public static class P_typeContext extends ParserRuleContext {
		public TerminalNode T_INT() { return getToken(ChameleonParser.T_INT, 0); }
		public TerminalNode T_String() { return getToken(ChameleonParser.T_String, 0); }
		public TerminalNode T_Int64() { return getToken(ChameleonParser.T_Int64, 0); }
		public TerminalNode T_Int32() { return getToken(ChameleonParser.T_Int32, 0); }
		public TerminalNode T_Int8() { return getToken(ChameleonParser.T_Int8, 0); }
		public TerminalNode T_Int16() { return getToken(ChameleonParser.T_Int16, 0); }
		public TerminalNode T_UInt8() { return getToken(ChameleonParser.T_UInt8, 0); }
		public TerminalNode T_UInt16() { return getToken(ChameleonParser.T_UInt16, 0); }
		public TerminalNode T_UInt32() { return getToken(ChameleonParser.T_UInt32, 0); }
		public TerminalNode T_UInt64() { return getToken(ChameleonParser.T_UInt64, 0); }
		public TerminalNode ID() { return getToken(ChameleonParser.ID, 0); }
		public P_typeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_p_type; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof ChameleonListener ) ((ChameleonListener)listener).enterP_type(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof ChameleonListener ) ((ChameleonListener)listener).exitP_type(this);
		}
	}

	public final P_typeContext p_type() throws RecognitionException {
		P_typeContext _localctx = new P_typeContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_p_type);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(58);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << T_INT) | (1L << T_String) | (1L << T_Int64) | (1L << T_Int32) | (1L << T_Int8) | (1L << T_Int16) | (1L << T_UInt8) | (1L << T_UInt16) | (1L << T_UInt32) | (1L << T_UInt64) | (1L << ID))) != 0)) ) {
			_errHandler.recoverInline(this);
			} else {
				consume();
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

	public static final String _serializedATN =
		"\3\u0430\ud6d1\u8206\uad2d\u4417\uaef1\u8d80\uaadd\3\30?\4\2\t\2\4\3\t"+
		"\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\3\2\3\2\3\2\6\2\26"+
		"\n\2\r\2\16\2\27\3\3\3\3\3\3\3\3\6\3\36\n\3\r\3\16\3\37\3\3\3\3\3\4\3"+
		"\4\5\4&\n\4\3\5\3\5\6\5*\n\5\r\5\16\5+\3\5\3\5\3\6\3\6\5\6\62\n\6\3\6"+
		"\3\6\3\7\3\7\3\7\3\7\3\b\3\b\3\b\3\t\3\t\3\t\2\2\n\2\4\6\b\n\f\16\20\2"+
		"\3\4\2\t\22\24\24=\2\25\3\2\2\2\4\31\3\2\2\2\6%\3\2\2\2\b\'\3\2\2\2\n"+
		"\61\3\2\2\2\f\65\3\2\2\2\169\3\2\2\2\20<\3\2\2\2\22\26\5\4\3\2\23\26\7"+
		"\26\2\2\24\26\5\b\5\2\25\22\3\2\2\2\25\23\3\2\2\2\25\24\3\2\2\2\26\27"+
		"\3\2\2\2\27\25\3\2\2\2\27\30\3\2\2\2\30\3\3\2\2\2\31\32\7\3\2\2\32\33"+
		"\7\24\2\2\33\35\7\4\2\2\34\36\5\6\4\2\35\34\3\2\2\2\36\37\3\2\2\2\37\35"+
		"\3\2\2\2\37 \3\2\2\2 !\3\2\2\2!\"\7\5\2\2\"\5\3\2\2\2#&\5\n\6\2$&\7\26"+
		"\2\2%#\3\2\2\2%$\3\2\2\2&\7\3\2\2\2\')\7\6\2\2(*\7\30\2\2)(\3\2\2\2*+"+
		"\3\2\2\2+)\3\2\2\2+,\3\2\2\2,-\3\2\2\2-.\7\7\2\2.\t\3\2\2\2/\62\5\16\b"+
		"\2\60\62\5\f\7\2\61/\3\2\2\2\61\60\3\2\2\2\62\63\3\2\2\2\63\64\7\26\2"+
		"\2\64\13\3\2\2\2\65\66\7\b\2\2\66\67\5\20\t\2\678\7\24\2\28\r\3\2\2\2"+
		"9:\5\20\t\2:;\7\24\2\2;\17\3\2\2\2<=\t\2\2\2=\21\3\2\2\2\b\25\27\37%+"+
		"\61";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}