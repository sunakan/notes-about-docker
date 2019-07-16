FROM tomcat:9-jdk11-adoptopenjdk-openj9

RUN apt-get update && \
  apt-get install -y vim tree

#RUN rm -rf webapps/*
COPY conf/* conf/
