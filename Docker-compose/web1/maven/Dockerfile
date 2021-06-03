FROM ubuntu:20.04
RUN apt update -y
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt install -y maven git
RUN mkdir /data
RUN git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git /tmp/boxfuse-sample-java-war-hello
RUN mvn -f /tmp/boxfuse-sample-java-war-hello/pom.xml package
RUN cp /tmp/boxfuse-sample-java-war-hello/target/hello-*.war /data
#COPY build_app.sh /etc
#RUN chmod +x /etc/build_app.sh
#CMD ["/etc/build_app.sh"]
