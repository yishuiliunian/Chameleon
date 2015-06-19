# Generated from java-escape by ANTLR 4.5
# encoding: utf-8
from __future__ import print_function
from antlr4 import *
from io import StringIO


def serializedATN():
    with StringIO() as buf:
        buf.write(u"\3\u0430\ud6d1\u8206\uad2d\u4417\uaef1\u8d80\uaadd\2")
        buf.write(u"\fO\b\1\4\2\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t")
        buf.write(u"\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t\13\3\2\3\2\3\3\3\3")
        buf.write(u"\3\3\3\3\3\4\3\4\3\5\3\5\3\5\3\5\3\5\3\5\3\5\3\6\3\6")
        buf.write(u"\3\6\3\6\3\6\3\6\3\7\3\7\7\7/\n\7\f\7\16\7\62\13\7\3")
        buf.write(u"\b\6\b\65\n\b\r\b\16\b\66\3\b\3\b\6\b;\n\b\r\b\16\b<")
        buf.write(u"\5\b?\n\b\3\t\5\tB\n\t\3\t\3\t\3\n\6\nG\n\n\r\n\16\n")
        buf.write(u"H\3\13\6\13L\n\13\r\13\16\13M\2\2\f\3\3\5\4\7\5\t\6\13")
        buf.write(u"\7\r\b\17\t\21\n\23\13\25\f\3\2\6\4\2C\\c|\5\2\62;C\\")
        buf.write(u"c|\5\2\13\f\17\17\"\"\4\2\13\13\"\"U\2\3\3\2\2\2\2\5")
        buf.write(u"\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3\2")
        buf.write(u"\2\2\2\17\3\2\2\2\2\21\3\2\2\2\2\23\3\2\2\2\2\25\3\2")
        buf.write(u"\2\2\3\27\3\2\2\2\5\31\3\2\2\2\7\35\3\2\2\2\t\37\3\2")
        buf.write(u"\2\2\13&\3\2\2\2\r,\3\2\2\2\17\64\3\2\2\2\21A\3\2\2\2")
        buf.write(u"\23F\3\2\2\2\25K\3\2\2\2\27\30\7<\2\2\30\4\3\2\2\2\31")
        buf.write(u"\32\7g\2\2\32\33\7p\2\2\33\34\7f\2\2\34\6\3\2\2\2\35")
        buf.write(u"\36\5\t\5\2\36\b\3\2\2\2\37 \7u\2\2 !\7v\2\2!\"\7t\2")
        buf.write(u"\2\"#\7k\2\2#$\7p\2\2$%\7i\2\2%\n\3\2\2\2&\'\7o\2\2\'")
        buf.write(u"(\7q\2\2()\7f\2\2)*\7g\2\2*+\7n\2\2+\f\3\2\2\2,\60\t")
        buf.write(u"\2\2\2-/\t\3\2\2.-\3\2\2\2/\62\3\2\2\2\60.\3\2\2\2\60")
        buf.write(u"\61\3\2\2\2\61\16\3\2\2\2\62\60\3\2\2\2\63\65\4\62;\2")
        buf.write(u"\64\63\3\2\2\2\65\66\3\2\2\2\66\64\3\2\2\2\66\67\3\2")
        buf.write(u"\2\2\67>\3\2\2\28:\7\60\2\29;\4\62;\2:9\3\2\2\2;<\3\2")
        buf.write(u"\2\2<:\3\2\2\2<=\3\2\2\2=?\3\2\2\2>8\3\2\2\2>?\3\2\2")
        buf.write(u"\2?\20\3\2\2\2@B\7\17\2\2A@\3\2\2\2AB\3\2\2\2BC\3\2\2")
        buf.write(u"\2CD\7\f\2\2D\22\3\2\2\2EG\t\4\2\2FE\3\2\2\2GH\3\2\2")
        buf.write(u"\2HF\3\2\2\2HI\3\2\2\2I\24\3\2\2\2JL\t\5\2\2KJ\3\2\2")
        buf.write(u"\2LM\3\2\2\2MK\3\2\2\2MN\3\2\2\2N\26\3\2\2\2\n\2\60\66")
        buf.write(u"<>AHM\2")
        return buf.getvalue()


class LexicalLexer(Lexer):

    atn = ATNDeserializer().deserialize(serializedATN())

    decisionsToDFA = [ DFA(ds, i) for i, ds in enumerate(atn.decisionToState) ]


    T__0 = 1
    T__1 = 2
    TYPE = 3
    STRING = 4
    MODEL = 5
    ID = 6
    NUMBER = 7
    NEWLINE = 8
    WS = 9
    BL = 10

    modeNames = [ u"DEFAULT_MODE" ]

    literalNames = [ u"<INVALID>",
            u"':'", u"'end'", u"'string'", u"'model'" ]

    symbolicNames = [ u"<INVALID>",
            u"TYPE", u"STRING", u"MODEL", u"ID", u"NUMBER", u"NEWLINE", 
            u"WS", u"BL" ]

    ruleNames = [ u"T__0", u"T__1", u"TYPE", u"STRING", u"MODEL", u"ID", 
                  u"NUMBER", u"NEWLINE", u"WS", u"BL" ]

    grammarFileName = u"Lexical.g4"

    def __init__(self, input=None):
        super(LexicalLexer, self).__init__(input)
        self.checkVersion("4.5")
        self._interp = LexerATNSimulator(self, self.atn, self.decisionsToDFA, PredictionContextCache())
        self._actions = None
        self._predicates = None


