import sys
from antlr4 import *
from core.engine.ChameleonLexer import ChameleonLexer
from core.engine.ChameleonParser import ChameleonParser
from core.parser.listener import CLBuildListener

def main(argv):
    input = FileStream(argv[1])
    lexer = ChameleonLexer(input)
    print input
    stream = CommonTokenStream(lexer)
    parser = ChameleonParser(stream)
    tree = parser.prog()

    print(tree.toStringTree(recog=parser))
    walker = ParseTreeWalker()
    loader = CLBuildListener()
    walker.walk(loader, tree)

    print loader


if __name__ == '__main__':
    main(sys.argv)
