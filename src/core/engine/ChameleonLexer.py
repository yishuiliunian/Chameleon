# Generated from java-escape by ANTLR 4.5
# encoding: utf-8
from __future__ import print_function
from antlr4 import *
from io import StringIO


def serializedATN():
    with StringIO() as buf:
        buf.write(u"\3\u0430\ud6d1\u8206\uad2d\u4417\uaef1\u8d80\uaadd\2")
        buf.write(u"\rM\b\1\4\2\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t")
        buf.write(u"\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t\13\4\f\t\f\3\2\3\2")
        buf.write(u"\3\2\3\2\3\2\3\2\3\3\3\3\3\4\3\4\3\5\3\5\3\5\3\5\3\6")
        buf.write(u"\3\6\3\6\3\6\3\6\3\6\3\6\3\7\3\7\3\7\3\7\3\7\3\7\3\b")
        buf.write(u"\3\b\3\b\3\b\3\b\3\b\3\t\6\t<\n\t\r\t\16\t=\3\n\6\nA")
        buf.write(u"\n\n\r\n\16\nB\3\13\5\13F\n\13\3\13\3\13\3\f\3\f\3\f")
        buf.write(u"\3\f\2\2\r\3\3\5\4\7\5\t\6\13\7\r\b\17\t\21\n\23\13\25")
        buf.write(u"\f\27\r\3\2\4\4\2C\\c|\5\2\13\f\17\17\"\"O\2\3\3\2\2")
        buf.write(u"\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2")
        buf.write(u"\r\3\2\2\2\2\17\3\2\2\2\2\21\3\2\2\2\2\23\3\2\2\2\2\25")
        buf.write(u"\3\2\2\2\2\27\3\2\2\2\3\31\3\2\2\2\5\37\3\2\2\2\7!\3")
        buf.write(u"\2\2\2\t#\3\2\2\2\13\'\3\2\2\2\r.\3\2\2\2\17\64\3\2\2")
        buf.write(u"\2\21;\3\2\2\2\23@\3\2\2\2\25E\3\2\2\2\27I\3\2\2\2\31")
        buf.write(u"\32\7o\2\2\32\33\7q\2\2\33\34\7f\2\2\34\35\7g\2\2\35")
        buf.write(u"\36\7n\2\2\36\4\3\2\2\2\37 \7}\2\2 \6\3\2\2\2!\"\7\177")
        buf.write(u"\2\2\"\b\3\2\2\2#$\7k\2\2$%\7p\2\2%&\7v\2\2&\n\3\2\2")
        buf.write(u"\2\'(\7u\2\2()\7v\2\2)*\7t\2\2*+\7k\2\2+,\7p\2\2,-\7")
        buf.write(u"i\2\2-\f\3\2\2\2./\7k\2\2/\60\7p\2\2\60\61\7v\2\2\61")
        buf.write(u"\62\78\2\2\62\63\7\66\2\2\63\16\3\2\2\2\64\65\7k\2\2")
        buf.write(u"\65\66\7p\2\2\66\67\7v\2\2\678\7\65\2\289\7\64\2\29\20")
        buf.write(u"\3\2\2\2:<\t\2\2\2;:\3\2\2\2<=\3\2\2\2=;\3\2\2\2=>\3")
        buf.write(u"\2\2\2>\22\3\2\2\2?A\4\62;\2@?\3\2\2\2AB\3\2\2\2B@\3")
        buf.write(u"\2\2\2BC\3\2\2\2C\24\3\2\2\2DF\7\17\2\2ED\3\2\2\2EF\3")
        buf.write(u"\2\2\2FG\3\2\2\2GH\7\f\2\2H\26\3\2\2\2IJ\t\3\2\2JK\3")
        buf.write(u"\2\2\2KL\b\f\2\2L\30\3\2\2\2\6\2=BE\3\b\2\2")
        return buf.getvalue()


class ChameleonLexer(Lexer):

    atn = ATNDeserializer().deserialize(serializedATN())

    decisionsToDFA = [ DFA(ds, i) for i, ds in enumerate(atn.decisionToState) ]


    T__0 = 1
    T__1 = 2
    T__2 = 3
    T_INT = 4
    T_String = 5
    T_Int64 = 6
    T_Int32 = 7
    ID = 8
    INT = 9
    NEWLINE = 10
    WS = 11

    modeNames = [ u"DEFAULT_MODE" ]

    literalNames = [ u"<INVALID>",
            u"'model'", u"'{'", u"'}'", u"'int'", u"'string'", u"'int64'", 
            u"'int32'" ]

    symbolicNames = [ u"<INVALID>",
            u"T_INT", u"T_String", u"T_Int64", u"T_Int32", u"ID", u"INT", 
            u"NEWLINE", u"WS" ]

    ruleNames = [ u"T__0", u"T__1", u"T__2", u"T_INT", u"T_String", u"T_Int64", 
                  u"T_Int32", u"ID", u"INT", u"NEWLINE", u"WS" ]

    grammarFileName = u"Chameleon.g4"

    def __init__(self, input=None):
        super(ChameleonLexer, self).__init__(input)
        self.checkVersion("4.5")
        self._interp = LexerATNSimulator(self, self.atn, self.decisionsToDFA, PredictionContextCache())
        self._actions = None
        self._predicates = None


