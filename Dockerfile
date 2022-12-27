FROM openjdk:8-jre-alpine
COPY /target/gs-maven-0.1.0.jar app1.jar
ENTRYPOINT ["java", "-jar", "app1.jar"]
