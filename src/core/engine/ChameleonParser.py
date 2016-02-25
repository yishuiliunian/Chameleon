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
        buf.write(u"\32a\4\2\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7")
        buf.write(u"\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t\13\4\f\t\f\4\r\t\r\4")
        buf.write(u"\16\t\16\3\2\3\2\3\2\6\2 \n\2\r\2\16\2!\3\3\3\3\3\3\3")
        buf.write(u"\3\6\3(\n\3\r\3\16\3)\3\3\3\3\3\4\3\4\3\4\5\4\61\n\4")
        buf.write(u"\3\5\3\5\6\5\65\n\5\r\5\16\5\66\3\5\3\5\3\6\3\6\5\6=")
        buf.write(u"\n\6\3\6\3\6\3\7\3\7\5\7C\n\7\3\b\3\b\3\b\3\t\3\t\3\t")
        buf.write(u"\3\t\3\t\3\t\3\n\3\n\5\nP\n\n\3\13\3\13\3\13\3\13\3\f")
        buf.write(u"\3\f\3\f\3\f\3\f\3\f\3\f\3\r\3\r\3\16\3\16\3\16\2\2\17")
        buf.write(u"\2\4\6\b\n\f\16\20\22\24\26\30\32\2\3\3\2\13\25]\2\37")
        buf.write(u"\3\2\2\2\4#\3\2\2\2\6\60\3\2\2\2\b\62\3\2\2\2\n<\3\2")
        buf.write(u"\2\2\fB\3\2\2\2\16D\3\2\2\2\20G\3\2\2\2\22O\3\2\2\2\24")
        buf.write(u"Q\3\2\2\2\26U\3\2\2\2\30\\\3\2\2\2\32^\3\2\2\2\34 \5")
        buf.write(u"\4\3\2\35 \7\27\2\2\36 \5\b\5\2\37\34\3\2\2\2\37\35\3")
        buf.write(u"\2\2\2\37\36\3\2\2\2 !\3\2\2\2!\37\3\2\2\2!\"\3\2\2\2")
        buf.write(u"\"\3\3\2\2\2#$\7\3\2\2$%\7\25\2\2%\'\7\4\2\2&(\5\6\4")
        buf.write(u"\2\'&\3\2\2\2()\3\2\2\2)\'\3\2\2\2)*\3\2\2\2*+\3\2\2")
        buf.write(u"\2+,\7\5\2\2,\5\3\2\2\2-\61\5\32\16\2.\61\5\n\6\2/\61")
        buf.write(u"\7\27\2\2\60-\3\2\2\2\60.\3\2\2\2\60/\3\2\2\2\61\7\3")
        buf.write(u"\2\2\2\62\64\7\6\2\2\63\65\7\31\2\2\64\63\3\2\2\2\65")
        buf.write(u"\66\3\2\2\2\66\64\3\2\2\2\66\67\3\2\2\2\678\3\2\2\28")
        buf.write(u"9\7\7\2\29\t\3\2\2\2:=\5\f\7\2;=\5\22\n\2<:\3\2\2\2<")
        buf.write(u";\3\2\2\2=>\3\2\2\2>?\7\27\2\2?\13\3\2\2\2@C\5\16\b\2")
        buf.write(u"AC\5\20\t\2B@\3\2\2\2BA\3\2\2\2C\r\3\2\2\2DE\5\30\r\2")
        buf.write(u"EF\7\25\2\2F\17\3\2\2\2GH\5\30\r\2HI\7\25\2\2IJ\7\b\2")
        buf.write(u"\2JK\7\25\2\2KL\7\t\2\2L\21\3\2\2\2MP\5\24\13\2NP\5\26")
        buf.write(u"\f\2OM\3\2\2\2ON\3\2\2\2P\23\3\2\2\2QR\7\n\2\2RS\5\30")
        buf.write(u"\r\2ST\7\25\2\2T\25\3\2\2\2UV\7\n\2\2VW\5\30\r\2WX\7")
        buf.write(u"\25\2\2XY\7\b\2\2YZ\7\25\2\2Z[\7\t\2\2[\27\3\2\2\2\\")
        buf.write(u"]\t\2\2\2]\31\3\2\2\2^_\7\32\2\2_\33\3\2\2\2\n\37!)\60")
        buf.write(u"\66<BO")
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
                      u"T_UInt64", u"ID", u"INT", u"NEWLINE", u"WS", u"NameStartChar", 
                      u"COMMENT" ]

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
    RULE_comment = 12

    ruleNames =  [ u"prog", u"model", u"property_line", u"words", u"property_line_words", 
                   u"c_property", u"c_property_name", u"c_property_second_name", 
                   u"array_property", u"array_property_name", u"array_property_second_name", 
                   u"p_type", u"comment" ]

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
    ID=19
    INT=20
    NEWLINE=21
    WS=22
    NameStartChar=23
    COMMENT=24

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
            self.state = 29 
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while True:
                self.state = 29
                token = self._input.LA(1)
                if token in [ChameleonParser.T__0]:
                    self.state = 26
                    self.model()

                elif token in [ChameleonParser.NEWLINE]:
                    self.state = 27
                    self.match(ChameleonParser.NEWLINE)

                elif token in [ChameleonParser.T__3]:
                    self.state = 28
                    self.words()

                else:
                    raise NoViableAltException(self)

                self.state = 31 
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
            self.state = 33
            self.match(ChameleonParser.T__0)
            self.state = 34
            self.match(ChameleonParser.ID)
            self.state = 35
            self.match(ChameleonParser.T__1)
            self.state = 37 
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while True:
                self.state = 36
                self.property_line()
                self.state = 39 
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if not ((((_la) & ~0x3f) == 0 and ((1 << _la) & ((1 << ChameleonParser.T__7) | (1 << ChameleonParser.T_INT) | (1 << ChameleonParser.T_String) | (1 << ChameleonParser.T_Int64) | (1 << ChameleonParser.T_Int32) | (1 << ChameleonParser.T_Int8) | (1 << ChameleonParser.T_Int16) | (1 << ChameleonParser.T_UInt8) | (1 << ChameleonParser.T_UInt16) | (1 << ChameleonParser.T_UInt32) | (1 << ChameleonParser.T_UInt64) | (1 << ChameleonParser.ID) | (1 << ChameleonParser.NEWLINE) | (1 << ChameleonParser.COMMENT))) != 0)):
                    break

            self.state = 41
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

        def comment(self):
            return self.getTypedRuleContext(ChameleonParser.CommentContext,0)


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
            self.state = 46
            token = self._input.LA(1)
            if token in [ChameleonParser.COMMENT]:
                self.enterOuterAlt(localctx, 1)
                self.state = 43
                self.comment()

            elif token in [ChameleonParser.T__7, ChameleonParser.T_INT, ChameleonParser.T_String, ChameleonParser.T_Int64, ChameleonParser.T_Int32, ChameleonParser.T_Int8, ChameleonParser.T_Int16, ChameleonParser.T_UInt8, ChameleonParser.T_UInt16, ChameleonParser.T_UInt32, ChameleonParser.T_UInt64, ChameleonParser.ID]:
                self.enterOuterAlt(localctx, 2)
                self.state = 44
                self.property_line_words()

            elif token in [ChameleonParser.NEWLINE]:
                self.enterOuterAlt(localctx, 3)
                self.state = 45
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
            self.state = 48
            self.match(ChameleonParser.T__3)
            self.state = 50 
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while True:
                self.state = 49
                self.match(ChameleonParser.NameStartChar)
                self.state = 52 
                self._errHandler.sync(self)
                _la = self._input.LA(1)
                if not (_la==ChameleonParser.NameStartChar):
                    break

            self.state = 54
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
            self.state = 58
            token = self._input.LA(1)
            if token in [ChameleonParser.T_INT, ChameleonParser.T_String, ChameleonParser.T_Int64, ChameleonParser.T_Int32, ChameleonParser.T_Int8, ChameleonParser.T_Int16, ChameleonParser.T_UInt8, ChameleonParser.T_UInt16, ChameleonParser.T_UInt32, ChameleonParser.T_UInt64, ChameleonParser.ID]:
                self.state = 56
                self.c_property()

            elif token in [ChameleonParser.T__7]:
                self.state = 57
                self.array_property()

            else:
                raise NoViableAltException(self)

            self.state = 60
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
            self.state = 64
            la_ = self._interp.adaptivePredict(self._input,6,self._ctx)
            if la_ == 1:
                self.enterOuterAlt(localctx, 1)
                self.state = 62
                self.c_property_name()
                pass

            elif la_ == 2:
                self.enterOuterAlt(localctx, 2)
                self.state = 63
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
            self.state = 66
            self.p_type()
            self.state = 67
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
            self.state = 69
            self.p_type()
            self.state = 70
            self.match(ChameleonParser.ID)
            self.state = 71
            self.match(ChameleonParser.T__5)
            self.state = 72
            self.match(ChameleonParser.ID)
            self.state = 73
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
            self.state = 77
            la_ = self._interp.adaptivePredict(self._input,7,self._ctx)
            if la_ == 1:
                self.enterOuterAlt(localctx, 1)
                self.state = 75
                self.array_property_name()
                pass

            elif la_ == 2:
                self.enterOuterAlt(localctx, 2)
                self.state = 76
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
            self.state = 79
            self.match(ChameleonParser.T__7)
            self.state = 80
            self.p_type()
            self.state = 81
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
            self.state = 83
            self.match(ChameleonParser.T__7)
            self.state = 84
            self.p_type()
            self.state = 85
            self.match(ChameleonParser.ID)
            self.state = 86
            self.match(ChameleonParser.T__5)
            self.state = 87
            self.match(ChameleonParser.ID)
            self.state = 88
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
            self.state = 90
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

    class CommentContext(ParserRuleContext):

        def __init__(self, parser, parent=None, invokingState=-1):
            super(ChameleonParser.CommentContext, self).__init__(parent, invokingState)
            self.parser = parser

        def COMMENT(self):
            return self.getToken(ChameleonParser.COMMENT, 0)

        def getRuleIndex(self):
            return ChameleonParser.RULE_comment

        def enterRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.enterComment(self)

        def exitRule(self, listener):
            if isinstance( listener, ChameleonListener ):
                listener.exitComment(self)




    def comment(self):

        localctx = ChameleonParser.CommentContext(self, self._ctx, self.state)
        self.enterRule(localctx, 24, self.RULE_comment)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 92
            self.match(ChameleonParser.COMMENT)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx




