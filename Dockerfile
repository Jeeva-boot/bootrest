FROM openjdk:8-jdk-alpine

LABEL maintainer="jeeva@gmail.com"

VOLUME /home/sybase/tomcatlogs

EXPOSE 8080

ARG JAR_FILE=build/libs/bootrest-0.0.1-SNAPSHOT.jar

ADD ${JAR_FILE} bootrest.jar

ENTRYPOINT ["java","-jar","/bootrest.jar"]
