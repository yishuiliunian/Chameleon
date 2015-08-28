#!/bin/bash
export CLASSPATH=".:/Users/liujin/work/tool/antlra-tool/antlr-4.5.1-complete.jar:$CLASSPATH"

echo "开始构建引擎"
java -jar /Users/liujin/work/tool/antlra-tool/antlr-4.5.1-complete.jar Chameleon.g4
javac *.java
echo "引擎构建完毕"
echo "开始测试，请输入(C-D查看，C-C退出)："

java org.antlr.v4.runtime.misc.TestRig Chameleon prog -tree -gui
