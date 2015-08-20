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
        buf.write(u"\32\\\4\2\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7")
        buf.write(u"\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t\13\4\f\t\f\4\r\t\r\3")
        buf.write(u"\2\3\2\3\2\6\2\36\n\2\r\2\16\2\37\3\3\3\3\3\3\3\3\6\3")
        buf.write(u"&\n\3\r\3\16\3\'\3\3\3\3\3\4\3\4\5\4.\n\4\3\5\3\5\6\5")
        buf.write(u"\62\n\5\r\5\16\5\63\3\5\3\5\3\6\3\6\5\6:\n\6\3\6\3\6")
        buf.write(u"\3\7\3\7\5\7@\n\7\3\b\3\b\3\b\3\t\3\t\3\t\3\t\3\t\3\t")
        buf.write(u"\3\n\3\n\5\nM\n\n\3\13\3\13\3\13\3\13\3\f\3\f\3\f\3\f")
        buf.write(u"\3\f\3\f\3\f\3\r\3\r\3\r\2\2\16\2\4\6\b\n\f\16\20\22")
        buf.write(u"\24\26\30\2\3\4\2\13\24\26\26X\2\35\3\2\2\2\4!\3\2\2")
        buf.write(u"\2\6-\3\2\2\2\b/\3\2\2\2\n9\3\2\2\2\f?\3\2\2\2\16A\3")
        buf.write(u"\2\2\2\20D\3\2\2\2\22L\3\2\2\2\24N\3\2\2\2\26R\3\2\2")
        buf.write(u"\2\30Y\3\2\2\2\32\36\5\4\3\2\33\36\7\30\2\2\34\36\5\b")
        buf.write(u"\5\2\35\32\3\2\2\2\35\33\3\2\2\2\35\34\3\2\2\2\36\37")
        buf.write(u"\3\2\2\2\37\35\3\2\2\2\37 \3\2\2\2 \3\3\2\2\2!\"\7\3")
        buf.write(u"\2\2\"#\7\26\2\2#%\7\4\2\2$&\5\6\4\2%$\3\2\2\2&\'\3\2")
        buf.write(u"\2\2\'%\3\2\2\2\'(\3\2\2\2()\3\2\2\2)*\7\5\2\2*\5\3\2")
        buf.write(u"\2\2+.\5\n\6\2,.\7\30\2\2-+\3\2\2\2-,\3\2\2\2.\7\3\2")
        buf.write(u"\2\2/\61\7\6\2\2\60\62\7\32\2\2\61\60\3\2\2\2\62\63\3")
        buf.write(u"\2\2\2\63\61\3\2\2\2\63\64\3\2\2\2\64\65\3\2\2\2\65\66")
        buf.write(u"\7\7\2\2\66\t\3\2\2\2\67:\5\f\7\28:\5\22\n\29\67\3\2")
        buf.write(u"\2\298\3\2\2\2:;\3\2\2\2;<\7\30\2\2<\13\3\2\2\2=@\5\16")
        buf.write(u"\b\2>@\5\20\t\2?=\3\2\2\2?>\3\2\2\2@\r\3\2\2\2AB\5\30")
        buf.write(u"\r\2BC\7\26\2\2C\17\3\2\2\2DE\5\30\r\2EF\7\26\2\2FG\7")
        buf.write(u"\b\2\2GH\7\26\2\2HI\7\t\2\2I\21\3\2\2\2JM\5\24\13\2K")
        buf.write(u"M\5\26\f\2LJ\3\2\2\2LK\3\2\2\2M\23\3\2\2\2NO\7\n\2\2")
        buf.write(u"OP\5\30\r\2PQ\7\26\2\2Q\25\3\2\2\2RS\7\n\2\2ST\5\30\r")
        buf.write(u"\2TU\7\26\2\2UV\7\b\2\2VW\7\26\2\2WX\7\t\2\2X\27\3\2")
        buf.write(u"\2\2YZ\t\2\2\2Z\31\3\2\2\2\n\35\37\'-\639?L")
        return buf.getvalue()


class ChameleonParser ( Parser ):

    grammarFileName = "java-escape"

    atn = ATNDeserializer().deserialize(serializedATN())

    decisionsToDFA = [ DFA(ds, i) for i, ds in enumerate(atn.decisionToState) ]

    sharedContextCache = PredictionContextCache()

    literalNames = [ u"<INVALID>", u"'model'", u"'{'", u"'}'", u"'/*'", 
                     u"'*/'", u"'['", u"']'", u"'array'", u"'int'", u"'string'", 
                     u"'int64'", u"'int32'", u"'int8'", u"'int16'", u"'uint8'", 
                     u"'uint16'", u"'uint32'", u"'uint64'" ]

    symbolicNames = [ u"<INVALID>", u"<INVALID>", u"<INVALID>", u"<INVALID>", 
                      u"<INVALID>", u"<INVALID>", u"<INVALID>", u"<INVALID>", 
                      u"<INVALID>", u"T_INT", u"T_String", u"T_Int64", u"T_Int32", 
                      u"T_Int8", u"T_Int16", u"T_UInt8", u"T_UInt16", u"T_UInt32", 
                      u"T_UInt64", u"COMMENT", u"ID", u"INT", u"NEWLINE", 
                      u"WS", u"NameStartChar" ]

    RULE_prog = 0
    RULE_model = 1
    RULE_property_line = 2
    RULE_words = 3
    RULE_property_line_words = 4
    RULE_c_property = 5
    RULE_c_property_name = 6
    RULE_c_property_second_name = 7
    RULE_array_property = 8
    RULE_array_property_name = 9
    RULE_array_property_second_name = 10
    RULE_p_type = 11

    ruleNames =  [ u"prog", u"model", u"property_line", u"words", u"property_line_words", 
                   u"c_property", u"c_property_name", u"c_property_second_name", 
                   u"array_property", u"array_property_name", u"array_property_second_name", 
                   u"p_type" ]

    EOF = Token.EOF
    T__0=1
    T__1=2
    T__2=3
    T__3=4
    T__4=5
    T__5=6
    T__6=7
    T__7=8
    T_INT=9
    T_String=10
    T_Int64=11
    T_Int32=12
    T_Int8=13
    T_Int16=14
    T_UInt8=15
    T_UInt16=16
    T_UInt32=17
    T_UInt64=18
    COMMENT=19
    ID=20
    INT=21
    NEWLINE=22
    WS=23
    NameStartChar=24

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
            self.state = 27 
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while True:
                self.state = 27
                token = self._input.LA(1)
                if token in [ChameleonParser.T__0]:
                    self.state = 24
                    self.model()

                elif token in [ChameleonParser.NEWLINE]:
                    self.state = 25
                    self.match(ChameleonParser.NEWLINE)

                elif token in [ChameleonParser.T__3]:
                    self.state = 26
                    self.words()

                else:
                    raise NoViableAltException(self)

                self.state = 29 
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
            self.state = 31
            self.match(ChameleonParser.T__0)
            self.state = 32
            self.match(ChameleonParser.ID)
            self.state = 33
            self.match(ChameleonParser.T__1)
            self.state = 35 
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while True:
                self.state = 34
                self.property_line()
                self.state = 37 
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if not ((((_la) & ~0x3f) == 0 and ((1 << _la) & ((1 << ChameleonParser.T__7) | (1 << ChameleonParser.T_INT) | (1 << ChameleonParser.T_String) | (1 << ChameleonParser.T_Int64) | (1 << ChameleonParser.T_Int32) | (1 << ChameleonParser.T_Int8) | (1 << ChameleonParser.T_Int16) | (1 << ChameleonParser.T_UInt8) | (1 << ChameleonParser.T_UInt16) | (1 << ChameleonParser.T_UInt32) | (1 << ChameleonParser.T_UInt64) | (1 << ChameleonParser.ID) | (1 << ChameleonParser.NEWLINE))) != 0)):
                    break

            self.state = 39
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
            self.state = 43
            token = self._input.LA(1)
            if token in [ChameleonParser.T__7, ChameleonParser.T_INT, ChameleonParser.T_String, ChameleonParser.T_Int64, ChameleonParser.T_Int32, ChameleonParser.T_Int8, ChameleonParser.T_Int16, ChameleonParser.T_UInt8, ChameleonParser.T_UInt16, ChameleonParser.T_UInt32, ChameleonParser.T_UInt64, ChameleonParser.ID]:
                self.enterOuterAlt(localctx, 1)
                self.state = 41
                self.property_line_words()

            elif token in [ChameleonParser.NEWLINE]:
                self.enterOuterAlt(localctx, 2)
                self.state = 42
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
            self.state = 45
            self.match(ChameleonParser.T__3)
            self.state = 47 
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while True:
                self.state = 46
                self.match(ChameleonParser.NameStartChar)
                self.state = 49 
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if not (_la==ChameleonParser.NameStartChar):
                    break

            self.state = 51
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
            self.state = 55
            token = self._input.LA(1)
            if token in [ChameleonParser.T_INT, ChameleonParser.T_String, ChameleonParser.T_Int64, ChameleonParser.T_Int32, ChameleonParser.T_Int8, ChameleonParser.T_Int16, ChameleonParser.T_UInt8, ChameleonParser.T_UInt16, ChameleonParser.T_UInt32, ChameleonParser.T_UInt64, ChameleonParser.ID]:
                self.state = 53
                self.c_property()

            elif token in [ChameleonParser.T__7]:
                self.state = 54
                self.array_property()

            else:
                raise NoViableAltException(self)

            self.state = 57
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

        def c_property_name(self):
            return self.getTypedRuleContext(ChameleonParser.C_property_nameContext,0)


        def c_property_second_name(self):
            return self.getTypedRuleContext(ChameleonParser.C_property_second_nameContext,0)


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
        self.enterRule(localctx, 10, self.RULE_c_property)
        try:
            self.state = 61
            la_ = self._interp.adaptivePredict(self._input,6,self._ctx)
            if la_ == 1:
                self.enterOuterAlt(localctx, 1)
                self.state = 59
                self.c_property_name()
                pass

            elif la_ == 2:
                self.enterOuterAlt(localctx, 2)
                self.state = 60
                self.c_property_second_name()
                pass


        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx

    class C_property_nameContext(ParserRuleContext):

        def __init__(self, parser, parent=None, invokingState=-1):
            super(ChameleonParser.C_property_nameContext, self).__init__(parent, invokingState)
            self.parser = parser

        def p_type(self):
            return self.getTypedRuleContext(ChameleonParser.P_typeContext,0)


        def ID(self):
            return self.getToken(ChameleonParser.ID, 0)

        def getRuleIndex(self):
            return ChameleonParser.RULE_c_property_name

        def enterRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.enterC_property_name(self)

        def exitRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.exitC_property_name(self)




    def c_property_name(self):

        localctx = ChameleonParser.C_property_nameContext(self, self._ctx, self.state)
        self.enterRule(localctx, 12, self.RULE_c_property_name)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 63
            self.p_type()
            self.state = 64
            self.match(ChameleonParser.ID)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx

    class C_property_second_nameContext(ParserRuleContext):

        def __init__(self, parser, parent=None, invokingState=-1):
            super(ChameleonParser.C_property_second_nameContext, self).__init__(parent, invokingState)
            self.parser = parser

        def p_type(self):
            return self.getTypedRuleContext(ChameleonParser.P_typeContext,0)


        def ID(self, i=None):
            if i is None:
                return self.getTokens(ChameleonParser.ID)
            else:
                return self.getToken(ChameleonParser.ID, i)

        def getRuleIndex(self):
            return ChameleonParser.RULE_c_property_second_name

        def enterRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.enterC_property_second_name(self)

        def exitRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.exitC_property_second_name(self)




    def c_property_second_name(self):

        localctx = ChameleonParser.C_property_second_nameContext(self, self._ctx, self.state)
        self.enterRule(localctx, 14, self.RULE_c_property_second_name)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 66
            self.p_type()
            self.state = 67
            self.match(ChameleonParser.ID)
            self.state = 68
            self.match(ChameleonParser.T__5)
            self.state = 69
            self.match(ChameleonParser.ID)
            self.state = 70
            self.match(ChameleonParser.T__6)
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

        def array_property_name(self):
            return self.getTypedRuleContext(ChameleonParser.Array_property_nameContext,0)


        def array_property_second_name(self):
            return self.getTypedRuleContext(ChameleonParser.Array_property_second_nameContext,0)


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
        self.enterRule(localctx, 16, self.RULE_array_property)
        try:
            self.state = 74
            la_ = self._interp.adaptivePredict(self._input,7,self._ctx)
            if la_ == 1:
                self.enterOuterAlt(localctx, 1)
                self.state = 72
                self.array_property_name()
                pass

            elif la_ == 2:
                self.enterOuterAlt(localctx, 2)
                self.state = 73
                self.array_property_second_name()
                pass


        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx

    class Array_property_nameContext(ParserRuleContext):

        def __init__(self, parser, parent=None, invokingState=-1):
            super(ChameleonParser.Array_property_nameContext, self).__init__(parent, invokingState)
            self.parser = parser

        def p_type(self):
            return self.getTypedRuleContext(ChameleonParser.P_typeContext,0)


        def ID(self):
            return self.getToken(ChameleonParser.ID, 0)

        def getRuleIndex(self):
            return ChameleonParser.RULE_array_property_name

        def enterRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.enterArray_property_name(self)

        def exitRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.exitArray_property_name(self)




    def array_property_name(self):

        localctx = ChameleonParser.Array_property_nameContext(self, self._ctx, self.state)
        self.enterRule(localctx, 18, self.RULE_array_property_name)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 76
            self.match(ChameleonParser.T__7)
            self.state = 77
            self.p_type()
            self.state = 78
            self.match(ChameleonParser.ID)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx

    class Array_property_second_nameContext(ParserRuleContext):

        def __init__(self, parser, parent=None, invokingState=-1):
            super(ChameleonParser.Array_property_second_nameContext, self).__init__(parent, invokingState)
            self.parser = parser

        def p_type(self):
            return self.getTypedRuleContext(ChameleonParser.P_typeContext,0)


        def ID(self, i=None):
            if i is None:
                return self.getTokens(ChameleonParser.ID)
            else:
                return self.getToken(ChameleonParser.ID, i)

        def getRuleIndex(self):
            return ChameleonParser.RULE_array_property_second_name

        def enterRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.enterArray_property_second_name(self)

        def exitRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.exitArray_property_second_name(self)




    def array_property_second_name(self):

        localctx = ChameleonParser.Array_property_second_nameContext(self, self._ctx, self.state)
        self.enterRule(localctx, 20, self.RULE_array_property_second_name)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 80
            self.match(ChameleonParser.T__7)
            self.state = 81
            self.p_type()
            self.state = 82
            self.match(ChameleonParser.ID)
            self.state = 83
            self.match(ChameleonParser.T__5)
            self.state = 84
            self.match(ChameleonParser.ID)
            self.state = 85
            self.match(ChameleonParser.T__6)
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

        def T_Int8(self):
            return self.getToken(ChameleonParser.T_Int8, 0)

        def T_Int16(self):
            return self.getToken(ChameleonParser.T_Int16, 0)

        def T_UInt8(self):
            return self.getToken(ChameleonParser.T_UInt8, 0)

        def T_UInt16(self):
            return self.getToken(ChameleonParser.T_UInt16, 0)

        def T_UInt32(self):
            return self.getToken(ChameleonParser.T_UInt32, 0)

        def T_UInt64(self):
            return self.getToken(ChameleonParser.T_UInt64, 0)

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
        self.enterRule(localctx, 22, self.RULE_p_type)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 87
            _la = self._input.LA(1)
            if not((((_la) & ~0x3f) == 0 and ((1 << _la) & ((1 << ChameleonParser.T_INT) | (1 << ChameleonParser.T_String) | (1 << ChameleonParser.T_Int64) | (1 << ChameleonParser.T_Int32) | (1 << ChameleonParser.T_Int8) | (1 << ChameleonParser.T_Int16) | (1 << ChameleonParser.T_UInt8) | (1 << ChameleonParser.T_UInt16) | (1 << ChameleonParser.T_UInt32) | (1 << ChameleonParser.T_UInt64) | (1 << ChameleonParser.ID))) != 0)):
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




