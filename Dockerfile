FROM openjdk:8-jre-alpine
COPY /target/gs-maven-0.1.0.jar test-actions-repo.jar
ENTRYPOINT ["java", "-jar", "test-actions-repo.jar"]
