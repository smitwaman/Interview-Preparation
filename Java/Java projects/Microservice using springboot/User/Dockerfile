# Use the official OpenJDK base image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the JAR file from the target directory into the container
COPY target/user-service.jar /app/user-service.jar

# Expose the port that the application runs on
EXPOSE 8080

# Specify the command to run the application when the container starts
CMD ["java", "-jar", "user-service.jar"]
