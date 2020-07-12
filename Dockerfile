FROM prantlf/node-git:lts-alpine
LABEL maintainer="Ferdinand Prantl <prantlf@gmail.com>"

# From https://github.com/docker-library/openjdk/tree/dd54ae37bc44d19ecb5be702d36d664fed2c68e4
ENV LANG C.UTF-8
ENV JAVA_HOME /usr/lib/jvm/java-1.8-openjdk/jre
ENV PATH $PATH:/usr/lib/jvm/java-1.8-openjdk/jre/bin:/usr/lib/jvm/java-1.8-openjdk/bin
RUN apk --no-cache add openjdk8-jre
