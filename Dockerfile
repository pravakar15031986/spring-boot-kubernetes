FROM openjdk:8-jdk-alpine
RUN mkdir /app
WORKDIR /app
MAINTAINER Phea Soy
VOLUME [ "/tmp" ]
COPY  app/spring-boot-kubernetes-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 9977
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
