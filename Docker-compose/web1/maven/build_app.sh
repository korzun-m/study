#!/bin/bash
git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /tmp/boxfuse-sample-java-war-hello
mvn -f /tmp/boxfuse-sample-java-war-hello/pom.xml package
cp /tmp/boxfuse-sample-java-war-hello/target/hello-*.war /data
