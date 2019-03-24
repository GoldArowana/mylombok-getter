#!/usr/bin/env bash

if [ -d classes ]; then
    rm -rf classes;
fi
mkdir classes

javac -cp $JAVA_HOME/lib/tools.jar src/main/java/com/king/test/mylombok/Getter* -d classes/

javac -cp classes -d classes -processor com.king.test.mylombok.GetterProcessor src/main/java/com/king/test/mylombok/App.java

javap -p classes/com/king/test/mylombok/App.class

java -cp classes com.king.test.mylombok.App