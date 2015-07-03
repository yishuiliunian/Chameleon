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
        buf.write(u"\r+\4\2\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\3")
        buf.write(u"\2\3\2\6\2\21\n\2\r\2\16\2\22\3\3\3\3\3\3\3\3\6\3\31")
        buf.write(u"\n\3\r\3\16\3\32\3\3\3\3\3\4\3\4\5\4!\n\4\3\5\3\5\3\5")
        buf.write(u"\3\6\3\6\3\6\3\7\3\7\3\7\2\2\b\2\4\6\b\n\f\2\3\3\2\6")
        buf.write(u"\n(\2\20\3\2\2\2\4\24\3\2\2\2\6 \3\2\2\2\b\"\3\2\2\2")
        buf.write(u"\n%\3\2\2\2\f(\3\2\2\2\16\21\5\4\3\2\17\21\7\f\2\2\20")
        buf.write(u"\16\3\2\2\2\20\17\3\2\2\2\21\22\3\2\2\2\22\20\3\2\2\2")
        buf.write(u"\22\23\3\2\2\2\23\3\3\2\2\2\24\25\7\3\2\2\25\26\7\n\2")
        buf.write(u"\2\26\30\7\4\2\2\27\31\5\6\4\2\30\27\3\2\2\2\31\32\3")
        buf.write(u"\2\2\2\32\30\3\2\2\2\32\33\3\2\2\2\33\34\3\2\2\2\34\35")
        buf.write(u"\7\5\2\2\35\5\3\2\2\2\36!\5\b\5\2\37!\7\f\2\2 \36\3\2")
        buf.write(u"\2\2 \37\3\2\2\2!\7\3\2\2\2\"#\5\n\6\2#$\7\f\2\2$\t\3")
        buf.write(u"\2\2\2%&\5\f\7\2&\'\7\n\2\2\'\13\3\2\2\2()\t\2\2\2)\r")
        buf.write(u"\3\2\2\2\6\20\22\32 ")
        return buf.getvalue()


class ChameleonParser ( Parser ):

    grammarFileName = "java-escape"

    atn = ATNDeserializer().deserialize(serializedATN())

    decisionsToDFA = [ DFA(ds, i) for i, ds in enumerate(atn.decisionToState) ]

    sharedContextCache = PredictionContextCache()

    literalNames = [ u"<INVALID>", u"'model'", u"'{'", u"'}'", u"'int'", 
                     u"'string'", u"'int64'", u"'int32'" ]

    symbolicNames = [ u"<INVALID>", u"<INVALID>", u"<INVALID>", u"<INVALID>", 
                      u"T_INT", u"T_String", u"T_Int64", u"T_Int32", u"ID", 
                      u"INT", u"NEWLINE", u"WS" ]

    RULE_prog = 0
    RULE_model = 1
    RULE_property_line = 2
    RULE_property_line_words = 3
    RULE_c_property = 4
    RULE_p_type = 5

    ruleNames =  [ u"prog", u"model", u"property_line", u"property_line_words", 
                   u"c_property", u"p_type" ]

    EOF = Token.EOF
    T__0=1
    T__1=2
    T__2=3
    T_INT=4
    T_String=5
    T_Int64=6
    T_Int32=7
    ID=8
    INT=9
    NEWLINE=10
    WS=11

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
            self.state = 14 
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while True:
                self.state = 14
                token = self._input.LA(1)
                if token in [ChameleonParser.T__0]:
                    self.state = 12
                    self.model()

                elif token in [ChameleonParser.NEWLINE]:
                    self.state = 13
                    self.match(ChameleonParser.NEWLINE)

                else:
                    raise NoViableAltException(self)

                self.state = 16 
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if not (_la==ChameleonParser.T__0 or _la==ChameleonParser.NEWLINE):
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
            self.state = 18
            self.match(ChameleonParser.T__0)
            self.state = 19
            self.match(ChameleonParser.ID)
            self.state = 20
            self.match(ChameleonParser.T__1)
            self.state = 22 
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while True:
                self.state = 21
                self.property_line()
                self.state = 24 
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if not ((((_la) & ~0x3f) == 0 and ((1 << _la) & ((1 << ChameleonParser.T_INT) | (1 << ChameleonParser.T_String) | (1 << ChameleonParser.T_Int64) | (1 << ChameleonParser.T_Int32) | (1 << ChameleonParser.ID) | (1 << ChameleonParser.NEWLINE))) != 0)):
                    break

            self.state = 26
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
            self.state = 30
            token = self._input.LA(1)
            if token in [ChameleonParser.T_INT, ChameleonParser.T_String, ChameleonParser.T_Int64, ChameleonParser.T_Int32, ChameleonParser.ID]:
                self.enterOuterAlt(localctx, 1)
                self.state = 28
                self.property_line_words()

            elif token in [ChameleonParser.NEWLINE]:
                self.enterOuterAlt(localctx, 2)
                self.state = 29
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

    class Property_line_wordsContext(ParserRuleContext):

        def __init__(self, parser, parent=None, invokingState=-1):
            super(ChameleonParser.Property_line_wordsContext, self).__init__(parent, invokingState)
            self.parser = parser

        def c_property(self):
            return self.getTypedRuleContext(ChameleonParser.C_propertyContext,0)


        def NEWLINE(self):
            return self.getToken(ChameleonParser.NEWLINE, 0)

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
        self.enterRule(localctx, 6, self.RULE_property_line_words)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 32
            self.c_property()
            self.state = 33
            self.match(ChameleonParser.NEWLINE)
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
        self.enterRule(localctx, 8, self.RULE_c_property)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 35
            self.p_type()
            self.state = 36
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
        self.enterRule(localctx, 10, self.RULE_p_type)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 38
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




