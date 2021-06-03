FROM ubuntu:20.04
RUN apt update -y
ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt install -y maven git
COPY build_app.sh /etc
RUN chmod +x /etc/build_app.sh
CMD ["/etc/build_app.sh"]