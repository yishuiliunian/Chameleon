# Generated from java-escape by ANTLR 4.5
# encoding: utf-8
from __future__ import print_function
from antlr4 import *
from io import StringIO
package = globals().get("__package__", None)
ischild = len(package)>0 if package is not None else False
if ischild:
    from .ChameleonListener import ChameleonListener
else:
    from ChameleonListener import ChameleonListener
def serializedATN():
    with StringIO() as buf:
        buf.write(u"\3\u0430\ud6d1\u8206\uad2d\u4417\uaef1\u8d80\uaadd\3")
        buf.write(u"\22?\4\2\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7")
        buf.write(u"\4\b\t\b\4\t\t\t\3\2\3\2\3\2\6\2\26\n\2\r\2\16\2\27\3")
        buf.write(u"\3\3\3\3\3\3\3\6\3\36\n\3\r\3\16\3\37\3\3\3\3\3\4\3\4")
        buf.write(u"\5\4&\n\4\3\5\3\5\6\5*\n\5\r\5\16\5+\3\5\3\5\3\6\3\6")
        buf.write(u"\5\6\62\n\6\3\6\3\6\3\7\3\7\3\7\3\7\3\b\3\b\3\b\3\t\3")
        buf.write(u"\t\3\t\2\2\n\2\4\6\b\n\f\16\20\2\3\4\2\t\f\16\16=\2\25")
        buf.write(u"\3\2\2\2\4\31\3\2\2\2\6%\3\2\2\2\b\'\3\2\2\2\n\61\3\2")
        buf.write(u"\2\2\f\65\3\2\2\2\169\3\2\2\2\20<\3\2\2\2\22\26\5\4\3")
        buf.write(u"\2\23\26\7\20\2\2\24\26\5\b\5\2\25\22\3\2\2\2\25\23\3")
        buf.write(u"\2\2\2\25\24\3\2\2\2\26\27\3\2\2\2\27\25\3\2\2\2\27\30")
        buf.write(u"\3\2\2\2\30\3\3\2\2\2\31\32\7\3\2\2\32\33\7\16\2\2\33")
        buf.write(u"\35\7\4\2\2\34\36\5\6\4\2\35\34\3\2\2\2\36\37\3\2\2\2")
        buf.write(u"\37\35\3\2\2\2\37 \3\2\2\2 !\3\2\2\2!\"\7\5\2\2\"\5\3")
        buf.write(u"\2\2\2#&\5\n\6\2$&\7\20\2\2%#\3\2\2\2%$\3\2\2\2&\7\3")
        buf.write(u"\2\2\2\')\7\6\2\2(*\7\22\2\2)(\3\2\2\2*+\3\2\2\2+)\3")
        buf.write(u"\2\2\2+,\3\2\2\2,-\3\2\2\2-.\7\7\2\2.\t\3\2\2\2/\62\5")
        buf.write(u"\16\b\2\60\62\5\f\7\2\61/\3\2\2\2\61\60\3\2\2\2\62\63")
        buf.write(u"\3\2\2\2\63\64\7\20\2\2\64\13\3\2\2\2\65\66\7\b\2\2\66")
        buf.write(u"\67\5\20\t\2\678\7\16\2\28\r\3\2\2\29:\5\20\t\2:;\7\16")
        buf.write(u"\2\2;\17\3\2\2\2<=\t\2\2\2=\21\3\2\2\2\b\25\27\37%+\61")
        return buf.getvalue()


class ChameleonParser ( Parser ):

    grammarFileName = "java-escape"

    atn = ATNDeserializer().deserialize(serializedATN())

    decisionsToDFA = [ DFA(ds, i) for i, ds in enumerate(atn.decisionToState) ]

    sharedContextCache = PredictionContextCache()

    literalNames = [ u"<INVALID>", u"'model'", u"'{'", u"'}'", u"'/*'", 
                     u"'*/'", u"'array'", u"'int'", u"'string'", u"'int64'", 
                     u"'int32'" ]

    symbolicNames = [ u"<INVALID>", u"<INVALID>", u"<INVALID>", u"<INVALID>", 
                      u"<INVALID>", u"<INVALID>", u"<INVALID>", u"T_INT", 
                      u"T_String", u"T_Int64", u"T_Int32", u"COMMENT", u"ID", 
                      u"INT", u"NEWLINE", u"WS", u"NameStartChar" ]

    RULE_prog = 0
    RULE_model = 1
    RULE_property_line = 2
    RULE_words = 3
    RULE_property_line_words = 4
    RULE_array_property = 5
    RULE_c_property = 6
    RULE_p_type = 7

    ruleNames =  [ u"prog", u"model", u"property_line", u"words", u"property_line_words", 
                   u"array_property", u"c_property", u"p_type" ]

    EOF = Token.EOF
    T__0=1
    T__1=2
    T__2=3
    T__3=4
    T__4=5
    T__5=6
    T_INT=7
    T_String=8
    T_Int64=9
    T_Int32=10
    COMMENT=11
    ID=12
    INT=13
    NEWLINE=14
    WS=15
    NameStartChar=16

    def __init__(self, input):
        super(ChameleonParser, self).__init__(input)
        self.checkVersion("4.5")
        self._interp = ParserATNSimulator(self, self.atn, self.decisionsToDFA, self.sharedContextCache)
        self._predicates = None



    class ProgContext(ParserRuleContext):

        def __init__(self, parser, parent=None, invokingState=-1):
            super(ChameleonParser.ProgContext, self).__init__(parent, invokingState)
            self.parser = parser

        def model(self, i=None):
            if i is None:
                return self.getTypedRuleContexts(ChameleonParser.ModelContext)
            else:
                return self.getTypedRuleContext(ChameleonParser.ModelContext,i)


        def NEWLINE(self, i=None):
            if i is None:
                return self.getTokens(ChameleonParser.NEWLINE)
            else:
                return self.getToken(ChameleonParser.NEWLINE, i)

        def words(self, i=None):
            if i is None:
                return self.getTypedRuleContexts(ChameleonParser.WordsContext)
            else:
                return self.getTypedRuleContext(ChameleonParser.WordsContext,i)


        def getRuleIndex(self):
            return ChameleonParser.RULE_prog

        def enterRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.enterProg(self)

        def exitRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.exitProg(self)




    def prog(self):

        localctx = ChameleonParser.ProgContext(self, self._ctx, self.state)
        self.enterRule(localctx, 0, self.RULE_prog)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 19 
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while True:
                self.state = 19
                token = self._input.LA(1)
                if token in [ChameleonParser.T__0]:
                    self.state = 16
                    self.model()

                elif token in [ChameleonParser.NEWLINE]:
                    self.state = 17
                    self.match(ChameleonParser.NEWLINE)

                elif token in [ChameleonParser.T__3]:
                    self.state = 18
                    self.words()

                else:
                    raise NoViableAltException(self)

                self.state = 21 
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if not ((((_la) & ~0x3f) == 0 and ((1 << _la) & ((1 << ChameleonParser.T__0) | (1 << ChameleonParser.T__3) | (1 << ChameleonParser.NEWLINE))) != 0)):
                    break

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx

    class ModelContext(ParserRuleContext):

        def __init__(self, parser, parent=None, invokingState=-1):
            super(ChameleonParser.ModelContext, self).__init__(parent, invokingState)
            self.parser = parser

        def ID(self):
            return self.getToken(ChameleonParser.ID, 0)

        def property_line(self, i=None):
            if i is None:
                return self.getTypedRuleContexts(ChameleonParser.Property_lineContext)
            else:
                return self.getTypedRuleContext(ChameleonParser.Property_lineContext,i)


        def getRuleIndex(self):
            return ChameleonParser.RULE_model

        def enterRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.enterModel(self)

        def exitRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.exitModel(self)




    def model(self):

        localctx = ChameleonParser.ModelContext(self, self._ctx, self.state)
        self.enterRule(localctx, 2, self.RULE_model)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 23
            self.match(ChameleonParser.T__0)
            self.state = 24
            self.match(ChameleonParser.ID)
            self.state = 25
            self.match(ChameleonParser.T__1)
            self.state = 27 
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while True:
                self.state = 26
                self.property_line()
                self.state = 29 
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if not ((((_la) & ~0x3f) == 0 and ((1 << _la) & ((1 << ChameleonParser.T__5) | (1 << ChameleonParser.T_INT) | (1 << ChameleonParser.T_String) | (1 << ChameleonParser.T_Int64) | (1 << ChameleonParser.T_Int32) | (1 << ChameleonParser.ID) | (1 << ChameleonParser.NEWLINE))) != 0)):
                    break

            self.state = 31
            self.match(ChameleonParser.T__2)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx

    class Property_lineContext(ParserRuleContext):

        def __init__(self, parser, parent=None, invokingState=-1):
            super(ChameleonParser.Property_lineContext, self).__init__(parent, invokingState)
            self.parser = parser

        def property_line_words(self):
            return self.getTypedRuleContext(ChameleonParser.Property_line_wordsContext,0)


        def NEWLINE(self):
            return self.getToken(ChameleonParser.NEWLINE, 0)

        def getRuleIndex(self):
            return ChameleonParser.RULE_property_line

        def enterRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.enterProperty_line(self)

        def exitRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.exitProperty_line(self)




    def property_line(self):

        localctx = ChameleonParser.Property_lineContext(self, self._ctx, self.state)
        self.enterRule(localctx, 4, self.RULE_property_line)
        try:
            self.state = 35
            token = self._input.LA(1)
            if token in [ChameleonParser.T__5, ChameleonParser.T_INT, ChameleonParser.T_String, ChameleonParser.T_Int64, ChameleonParser.T_Int32, ChameleonParser.ID]:
                self.enterOuterAlt(localctx, 1)
                self.state = 33
                self.property_line_words()

            elif token in [ChameleonParser.NEWLINE]:
                self.enterOuterAlt(localctx, 2)
                self.state = 34
                self.match(ChameleonParser.NEWLINE)

            else:
                raise NoViableAltException(self)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx

    class WordsContext(ParserRuleContext):

        def __init__(self, parser, parent=None, invokingState=-1):
            super(ChameleonParser.WordsContext, self).__init__(parent, invokingState)
            self.parser = parser

        def NameStartChar(self, i=None):
            if i is None:
                return self.getTokens(ChameleonParser.NameStartChar)
            else:
                return self.getToken(ChameleonParser.NameStartChar, i)

        def getRuleIndex(self):
            return ChameleonParser.RULE_words

        def enterRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.enterWords(self)

        def exitRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.exitWords(self)




    def words(self):

        localctx = ChameleonParser.WordsContext(self, self._ctx, self.state)
        self.enterRule(localctx, 6, self.RULE_words)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 37
            self.match(ChameleonParser.T__3)
            self.state = 39 
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while True:
                self.state = 38
                self.match(ChameleonParser.NameStartChar)
                self.state = 41 
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if not (_la==ChameleonParser.NameStartChar):
                    break

            self.state = 43
            self.match(ChameleonParser.T__4)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx

    class Property_line_wordsContext(ParserRuleContext):

        def __init__(self, parser, parent=None, invokingState=-1):
            super(ChameleonParser.Property_line_wordsContext, self).__init__(parent, invokingState)
            self.parser = parser

        def NEWLINE(self):
            return self.getToken(ChameleonParser.NEWLINE, 0)

        def c_property(self):
            return self.getTypedRuleContext(ChameleonParser.C_propertyContext,0)


        def array_property(self):
            return self.getTypedRuleContext(ChameleonParser.Array_propertyContext,0)


        def getRuleIndex(self):
            return ChameleonParser.RULE_property_line_words

        def enterRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.enterProperty_line_words(self)

        def exitRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.exitProperty_line_words(self)




    def property_line_words(self):

        localctx = ChameleonParser.Property_line_wordsContext(self, self._ctx, self.state)
        self.enterRule(localctx, 8, self.RULE_property_line_words)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 47
            token = self._input.LA(1)
            if token in [ChameleonParser.T_INT, ChameleonParser.T_String, ChameleonParser.T_Int64, ChameleonParser.T_Int32, ChameleonParser.ID]:
                self.state = 45
                self.c_property()

            elif token in [ChameleonParser.T__5]:
                self.state = 46
                self.array_property()

            else:
                raise NoViableAltException(self)

            self.state = 49
            self.match(ChameleonParser.NEWLINE)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx

    class Array_propertyContext(ParserRuleContext):

        def __init__(self, parser, parent=None, invokingState=-1):
            super(ChameleonParser.Array_propertyContext, self).__init__(parent, invokingState)
            self.parser = parser

        def p_type(self):
            return self.getTypedRuleContext(ChameleonParser.P_typeContext,0)


        def ID(self):
            return self.getToken(ChameleonParser.ID, 0)

        def getRuleIndex(self):
            return ChameleonParser.RULE_array_property

        def enterRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.enterArray_property(self)

        def exitRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.exitArray_property(self)




    def array_property(self):

        localctx = ChameleonParser.Array_propertyContext(self, self._ctx, self.state)
        self.enterRule(localctx, 10, self.RULE_array_property)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 51
            self.match(ChameleonParser.T__5)
            self.state = 52
            self.p_type()
            self.state = 53
            self.match(ChameleonParser.ID)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx

    class C_propertyContext(ParserRuleContext):

        def __init__(self, parser, parent=None, invokingState=-1):
            super(ChameleonParser.C_propertyContext, self).__init__(parent, invokingState)
            self.parser = parser

        def p_type(self):
            return self.getTypedRuleContext(ChameleonParser.P_typeContext,0)


        def ID(self):
            return self.getToken(ChameleonParser.ID, 0)

        def getRuleIndex(self):
            return ChameleonParser.RULE_c_property

        def enterRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.enterC_property(self)

        def exitRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.exitC_property(self)




    def c_property(self):

        localctx = ChameleonParser.C_propertyContext(self, self._ctx, self.state)
        self.enterRule(localctx, 12, self.RULE_c_property)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 55
            self.p_type()
            self.state = 56
            self.match(ChameleonParser.ID)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx

    class P_typeContext(ParserRuleContext):

        def __init__(self, parser, parent=None, invokingState=-1):
            super(ChameleonParser.P_typeContext, self).__init__(parent, invokingState)
            self.parser = parser

        def T_INT(self):
            return self.getToken(ChameleonParser.T_INT, 0)

        def T_String(self):
            return self.getToken(ChameleonParser.T_String, 0)

        def T_Int64(self):
            return self.getToken(ChameleonParser.T_Int64, 0)

        def T_Int32(self):
            return self.getToken(ChameleonParser.T_Int32, 0)

        def ID(self):
            return self.getToken(ChameleonParser.ID, 0)

        def getRuleIndex(self):
            return ChameleonParser.RULE_p_type

        def enterRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.enterP_type(self)

        def exitRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.exitP_type(self)




    def p_type(self):

        localctx = ChameleonParser.P_typeContext(self, self._ctx, self.state)
        self.enterRule(localctx, 14, self.RULE_p_type)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 58
            _la = self._input.LA(1)
            if not((((_la) & ~0x3f) == 0 and ((1 << _la) & ((1 << ChameleonParser.T_INT) | (1 << ChameleonParser.T_String) | (1 << ChameleonParser.T_Int64) | (1 << ChameleonParser.T_Int32) | (1 << ChameleonParser.ID))) != 0)):
                self._errHandler.recoverInline(self)
            else:
                self.consume()
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx




