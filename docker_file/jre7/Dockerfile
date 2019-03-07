FROM scratch
MAINTAINER violetgo <china.weigao@gmail.com>

ENV JAVA_VERSION_MAJOR 7
ENV JAVA_VERSION_MINOR 0
ENV JAVA_VERSION_BUILD 79
ENV JAVA_PACKAGE       server-jre

RUN mkdir -p /usr/server/

ADD server-jre-7u79-linux-x64.tar.gz /usr/server/

ENV JAVA_HOME /usr/server/jdk1.7.0_79/
ENV PATH ${PATH}:${JAVA_HOME}/bin

CMD ["/bin/bash"]
