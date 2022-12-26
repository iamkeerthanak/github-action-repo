# The line below states we will base our new image on the Latest Official Ubuntu 
FROM ubuntu:latest

# Copy the jar file from maven target
COPY /home/ubuntu/actions-runner/_work/maven-project-test/maven-project-test/target/gs-maven-0.1.0.jar /home/ubuntu/app.jar

# Last is the actual command to start up NGINX within our Container
CMD ["nginx", "-g", "daemon off;"]
