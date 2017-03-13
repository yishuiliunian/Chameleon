#!/bin/sh
currentPATH=`pwd`
export CLASSPATH=".:$currentPATH/antlr-4.6-complete.jar:$CLASSPATH"
alias antlr4='java -jar $currentPATH/antlr-4.6-complete.jar'
alias grun='java org.antlr.v4.gui.TestRig'

antlr4 -Dlanguage=Python2 ../chameleon/core/engine/Chameleon.g4
