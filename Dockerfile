# we will use openjdk 8 with alpine as it is a very small linux distro
FROM tomcat:8

# copy the packaged jar file into our docker image
COPY /target/gs-maven-0.1.0.jar webapps/



