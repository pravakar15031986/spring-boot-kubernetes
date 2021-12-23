FROM openjdk:8-jdk-alpine
RUN mkdir /app
WORKDIR /app
MAINTAINER Phea Soy
VOLUME [ "/tmp" ]
COPY  ..
EXPOSE 9977
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
