# The line below states we will base our new image on the Latest Official Ubuntu 
FROM nginx:latest

# Copy the jar file from maven target
ADD /target/gs-maven-0.1.0.jar app.jar

COPY app.jar /usr/share/nginx/html

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
