import sys
from antlr4 import *
from engine.LexicalLexer import LexicalLexer
from engine.LexicalParser import LexicalParser
def main(argv):
    input = FileStream(argv[1])
    lexer = LexicalLexer(input)
    stream = CommonTokenStream(lexer)
    parser = LexicalParser(stream)
    tree = parser.model()

    print(tree)


if __name__ == '__main__':
    main(sys.argv)
