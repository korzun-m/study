FROM ubuntu:20.04
RUN apt update & apt -y upgrade
RUN apt install default-jdk tomcat9 maven -y
RUN cd /tmp
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
RUN cd boxfuse-sample-java-war-hello
RUN mvm package
RUN cp target/hello-*.war /var/lib/tomcat9/webapps/
WORKDIR /var/lib/tomcat9
EXPOSE 8080
CMD service tomcat9 start
