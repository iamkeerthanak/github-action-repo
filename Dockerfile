# The line below states we will base our new image on the Latest Official Ubuntu 
FROM nginx:latest

# Copy the jar file from maven target
ADD /target/gs-maven-0.1.0.jar app.jar

# Last is the actual command to start up NGINX within our Container
CMD ["nginx", "-g", "daemon off;"]
