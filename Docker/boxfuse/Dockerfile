FROM ubuntu:20.04
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt update -y
RUN apt install -y default-jdk tomcat9 maven git
RUN mkdir /usr/share/tomcat9/logs
RUN ln -s /var/lib/tomcat9/webapps /usr/share/tomcat9/
RUN mkdir /usr/share/tomcat9/temp
RUN mkdir /usr/share/tomcat9/conf
RUN cp -R /etc/tomcat9/* /usr/share/tomcat9/conf/
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /tmp/boxfuse-sample-java-war-hello
RUN mvn -f /tmp/boxfuse-sample-java-war-hello/pom.xml package
RUN cp /tmp/boxfuse-sample-java-war-hello/target/hello-*.war /usr/share/tomcat9/webapps/
EXPOSE 8080
CMD ["/usr/share/tomcat9/bin/catalina.sh", "run"]