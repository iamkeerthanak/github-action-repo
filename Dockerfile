# we will use openjdk 8 with alpine as it is a very small linux distro
FROM openjdk:8-jdk-alpine

# copy the packaged jar file into our docker image
COPY /target/gs-maven-0.1.0.jar /app.jar

# set the startup command to execute the jar
CMD [“java”,”-jar”,”/app.jar”]

RUN docker build -t maxhunt/docker-package-only-build-demo:1.0-SNAPSHOT .'

RUN docker run -d -p 8080:8080 anna/docker-package-only-build-demo:1.0-SNAPSHOT
