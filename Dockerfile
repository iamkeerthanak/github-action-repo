FROM openjdk:8-jre-alpine
COPY /target/gs-maven-0.1.0.jar demo.jar
ENTRYPOINT ["java", "-jar", "demo.jar"]
