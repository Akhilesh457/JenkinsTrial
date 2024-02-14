# Use a base image with Java installed
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the packaged Spring Boot application JAR file into the container
COPY target/trial-0.0.1-SNAPSHOT.jar /app/trial-application.jar

# Expose the port that your Spring Boot application listens on
EXPOSE 8080

# Specify the command to run your Spring Boot application when the container starts
CMD ["java", "-jar", "trial-application.jar"]
