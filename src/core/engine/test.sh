#!/bin/bash
export CLASSPATH=".:/usr/local/lib/antlr-4.5-complete.jar:$CLASSPATH"

echo "开始构建引擎"
java -jar /usr/local/lib/antlr-4.5-complete.jar Chameleon.g4
javac *.java
echo "引擎构建完毕"
echo "开始测试，请输入(C-D查看，C-C退出)："

java org.antlr.v4.runtime.misc.TestRig Chameleon prog -tree -gui
