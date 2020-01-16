## FROM ubuntu:16.04
FROM openjdk:8
ENV AP /usr/local/docker-springboot

RUN mkdir /usr/local/docker-springboot
WORKDIR $AP
ADD ./* $AP/


ENTRYPOINT [ "java", "-jar",  "docker-springboot-0.0.1-SNAPSHOT.jar"]