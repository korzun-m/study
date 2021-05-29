FROM ubuntu:20.04
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update -y
RUN apt install -y default-jdk tomcat9 maven git
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /tmp/boxfuse-sample-java-war-hello
RUN cd /tmp/boxfuse-sample-java-war-hello/
RUN mvn -f /tmp/boxfuse-sample-java-war-hello/pom.xml package
RUN cp /tmp/boxfuse-sample-java-war-hello/target/hello-*.war /var/lib/tomcat9/webapps/
WORKDIR /var/lib/tomcat9
EXPOSE 8080
CMD service tomcat9 start


