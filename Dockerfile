FROM openjdk:8-jre-alpine

ADD /target/gs-maven-0.1.0.jar demo.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "demo.jar"]



