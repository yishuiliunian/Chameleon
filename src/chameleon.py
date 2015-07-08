# coding: UTF-8
import sys
import subprocess
import os
import argparse
from antlr4 import *
from core.engine.ChameleonLexer import ChameleonLexer
from core.engine.ChameleonParser import ChameleonParser
from core.parser.listener import CLBuildListener

def main(argv):
    argsParser = argparse.ArgumentParser()

#inputfile
    argsParser.add_argument("inputFile", help="input file", type=str)
#xcode project file addition
    argsParser.add_argument("-x","--xcode", action="store_true", help="output files to xcode project, if app can find it in path")
#oc 输出的格式
    argsParser.add_argument("-ot", "--outType", type=str, choices=["mantle", "dic"], help="指定OC代码的输出格式，目前支持的有mantle和直接字典映射方式")
#参数解析
    args = argsParser.parse_args()

    print args.outType
    input = FileStream(args.inputFile, encoding="utf-8")
    lexer = ChameleonLexer(input)
    stream = CommonTokenStream(lexer)
    parser = ChameleonParser(stream)
    tree = parser.prog()

    print(tree.toStringTree(recog=parser))
    walker = ParseTreeWalker()
    loader = CLBuildListener()
    walker.walk(loader, tree)

#如果需要输出到xcode的工程当中
    if args.xcode:
        appPath = os.path.split(os.path.realpath(__file__))[0];
        shellPath = appPath + "/" + "project/project.rb " + "/Users/baidu/Works/Baidu/temp"
        s = subprocess.Popen("ruby " + shellPath, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, shell=True)
        while True:
            line = s.stdout.readline()
            if not line:
                break
            print line
        print loader

if __name__ == '__main__':
    main(sys.argv)
