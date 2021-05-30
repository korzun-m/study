FROM tomcat:9.0
RUN apt update -y
RUN apt install -y maven git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /tmp/boxfuse-sample-java-war-hell
RUN mvn -f /tmp/boxfuse-sample-java-war-hello/pom.xml package
RUN cp /tmp/boxfuse-sample-java-war-hello/target/hello-*.war /usr/local/tomcat/webapps
