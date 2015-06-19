# Generated from java-escape by ANTLR 4.5
# encoding: utf-8
from __future__ import print_function
from antlr4 import *
from io import StringIO
package = globals().get("__package__", None)
ischild = len(package)>0 if package is not None else False
if ischild:
    from .LexicalListener import LexicalListener
else:
    from LexicalListener import LexicalListener
def serializedATN():
    with StringIO() as buf:
        buf.write(u"\3\u0430\ud6d1\u8206\uad2d\u4417\uaef1\u8d80\uaadd\3")
        buf.write(u"\f\30\4\2\t\2\4\3\t\3\4\4\t\4\3\2\3\2\3\2\3\2\3\2\3\3")
        buf.write(u"\7\3\17\n\3\f\3\16\3\22\13\3\3\4\3\4\3\4\3\4\3\4\2\2")
        buf.write(u"\5\2\4\6\2\2\25\2\b\3\2\2\2\4\20\3\2\2\2\6\23\3\2\2\2")
        buf.write(u"\b\t\7\7\2\2\t\n\7\3\2\2\n\13\5\4\3\2\13\f\7\4\2\2\f")
        buf.write(u"\3\3\2\2\2\r\17\5\6\4\2\16\r\3\2\2\2\17\22\3\2\2\2\20")
        buf.write(u"\16\3\2\2\2\20\21\3\2\2\2\21\5\3\2\2\2\22\20\3\2\2\2")
        buf.write(u"\23\24\7\5\2\2\24\25\7\b\2\2\25\26\7\n\2\2\26\7\3\2\2")
        buf.write(u"\2\3\20")
        return buf.getvalue()


class LexicalParser ( Parser ):

    grammarFileName = "java-escape"

    atn = ATNDeserializer().deserialize(serializedATN())

    decisionsToDFA = [ DFA(ds, i) for i, ds in enumerate(atn.decisionToState) ]

    sharedContextCache = PredictionContextCache()

    literalNames = [ u"<INVALID>", u"':'", u"'end'", u"<INVALID>", u"'string'", 
                     u"'model'" ]

    symbolicNames = [ u"<INVALID>", u"<INVALID>", u"<INVALID>", u"TYPE", 
                      u"STRING", u"MODEL", u"ID", u"NUMBER", u"NEWLINE", 
                      u"WS", u"BL" ]

    RULE_model = 0
    RULE_stmtList = 1
    RULE_stmt = 2

    ruleNames =  [ u"model", u"stmtList", u"stmt" ]

    EOF = Token.EOF
    T__0=1
    T__1=2
    TYPE=3
    STRING=4
    MODEL=5
    ID=6
    NUMBER=7
    NEWLINE=8
    WS=9
    BL=10

    def __init__(self, input):
        super(LexicalParser, self).__init__(input)
        self.checkVersion("4.5")
        self._interp = ParserATNSimulator(self, self.atn, self.decisionsToDFA, self.sharedContextCache)
        self._predicates = None



    class ModelContext(ParserRuleContext):

        def __init__(self, parser, parent=None, invokingState=-1):
            super(LexicalParser.ModelContext, self).__init__(parent, invokingState)
            self.parser = parser

        def MODEL(self):
            return self.getToken(LexicalParser.MODEL, 0)

        def stmtList(self):
            return self.getTypedRuleContext(LexicalParser.StmtListContext,0)


        def getRuleIndex(self):
            return LexicalParser.RULE_model

        def enterRule(self, listener):
            if isinstance( listener, LexicalListener ):
                listener.enterModel(self)

        def exitRule(self, listener):
            if isinstance( listener, LexicalListener ):
                listener.exitModel(self)




    def model(self):

        localctx = LexicalParser.ModelContext(self, self._ctx, self.state)
        self.enterRule(localctx, 0, self.RULE_model)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 6
            self.match(LexicalParser.MODEL)
            self.state = 7
            self.match(LexicalParser.T__0)
            self.state = 8
            self.stmtList()
            self.state = 9
            self.match(LexicalParser.T__1)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx

    class StmtListContext(ParserRuleContext):

        def __init__(self, parser, parent=None, invokingState=-1):
            super(LexicalParser.StmtListContext, self).__init__(parent, invokingState)
            self.parser = parser

        def stmt(self, i=None):
            if i is None:
                return self.getTypedRuleContexts(LexicalParser.StmtContext)
            else:
                return self.getTypedRuleContext(LexicalParser.StmtContext,i)


        def getRuleIndex(self):
            return LexicalParser.RULE_stmtList

        def enterRule(self, listener):
            if isinstance( listener, LexicalListener ):
                listener.enterStmtList(self)

        def exitRule(self, listener):
            if isinstance( listener, LexicalListener ):
                listener.exitStmtList(self)




    def stmtList(self):

        localctx = LexicalParser.StmtListContext(self, self._ctx, self.state)
        self.enterRule(localctx, 2, self.RULE_stmtList)
        self._la = 0 # Token type
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 14
            self._errHandler.sync(self)
            _la = self._input.LA(1)
            while _la==LexicalParser.TYPE:
                self.state = 11
                self.stmt()
                self.state = 16
                self._errHandler.sync(self)
                _la = self._input.LA(1)

        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx

    class StmtContext(ParserRuleContext):

        def __init__(self, parser, parent=None, invokingState=-1):
            super(LexicalParser.StmtContext, self).__init__(parent, invokingState)
            self.parser = parser

        def TYPE(self):
            return self.getToken(LexicalParser.TYPE, 0)

        def ID(self):
            return self.getToken(LexicalParser.ID, 0)

        def NEWLINE(self):
            return self.getToken(LexicalParser.NEWLINE, 0)

        def getRuleIndex(self):
            return LexicalParser.RULE_stmt

        def enterRule(self, listener):
            if isinstance( listener, LexicalListener ):
                listener.enterStmt(self)

        def exitRule(self, listener):
            if isinstance( listener, LexicalListener ):
                listener.exitStmt(self)




    def stmt(self):

        localctx = LexicalParser.StmtContext(self, self._ctx, self.state)
        self.enterRule(localctx, 4, self.RULE_stmt)
        try:
            self.enterOuterAlt(localctx, 1)
            self.state = 17
            self.match(LexicalParser.TYPE)
            self.state = 18
            self.match(LexicalParser.ID)
            self.state = 19
            self.match(LexicalParser.NEWLINE)
        except RecognitionException as re:
            localctx.exception = re
            self._errHandler.reportError(self, re)
            self._errHandler.recover(self, re)
        finally:
            self.exitRule()
        return localctx




