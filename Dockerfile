# we will use openjdk 8 with alpine as it is a very small linux distro
FROM openjdk:8-jdk-alpine

WORKDIR /home/ubuntu/docker-dir

# copy the packaged jar file into our docker image
COPY /target/gs-maven-0.1.0.jar /app.jar

# set the startup command to execute the jar
ENTRYPOINT [“java”,”-jar”,”/app.jar”]


