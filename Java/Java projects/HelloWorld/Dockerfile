# Use an OpenJDK base image
FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled Java program (JAR file) into the container
COPY HelloWorld.jar /app/HelloWorld.jar

# Command to run the Java program
CMD ["java", "-jar", "HelloWorld.jar"]
