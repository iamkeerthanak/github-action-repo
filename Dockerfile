FROM openjdk:8
EXPOSE 8080
ADD target/gs-maven-0.1.0.jar gs-maven-0.1.0-new.jar
ENTRYPOINT ["java","-jar","/gs-maven-0.1.0-images-new.jar"]
