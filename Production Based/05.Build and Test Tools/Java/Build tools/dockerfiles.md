Certainly! Here are Dockerfile examples for each of the mentioned Java project architectures:

### 1. Simple/Script-based:

```Dockerfile
# Use an official OpenJDK runtime as a parent image
FROM openjdk:11

# Copy the current directory contents into the container
COPY . /app

# Set the working directory
WORKDIR /app

# Run Main.java when the container launches
CMD ["java", "Main"]
```

### 2. Package-based:

```Dockerfile
# Use an official OpenJDK runtime as a parent image
FROM openjdk:11

# Copy the current directory contents into the container
COPY . /app

# Set the working directory
WORKDIR /app

# Run Main.java when the container launches
CMD ["java", "com.example.Main"]
```

### 3. Maven-based:

```Dockerfile
# Use an official Maven runtime as a parent image
FROM maven:3.8-jdk-11 AS build

# Copy pom.xml and install dependencies
COPY pom.xml .
RUN mvn dependency:go-offline

# Copy the current directory contents into the container
COPY . .

# Build the project
RUN mvn package

# Use OpenJDK runtime for the final image
FROM openjdk:11
COPY --from=build /target/*.jar /app/app.jar
CMD ["java", "-jar", "/app/app.jar"]
```

### 4. Spring Boot:

```Dockerfile
# Use an official OpenJDK runtime as a parent image
FROM openjdk:11

# Copy the executable JAR file from the build stage
COPY target/*.jar /app/app.jar

# Run the Spring Boot application
CMD ["java", "-jar", "/app/app.jar"]
```

### 5. MVC (Model-View-Controller):

```Dockerfile
# Use an official OpenJDK runtime as a parent image
FROM openjdk:11

# Copy the WAR file from target directory to the webapps directory of Tomcat
COPY target/*.war /usr/local/tomcat/webapps/

# Tomcat
FROM tomcat:9
```

### 6. REST API:

```Dockerfile
# Use an official OpenJDK runtime as a parent image
FROM openjdk:11

# Copy the executable JAR file from the build stage
COPY target/*.jar /app/app.jar

# Run the Spring Boot application
CMD ["java", "-jar", "/app/app.jar"]
```

### 7. Microservices:

For multiple services, you can create individual Dockerfiles for each service similar to the Spring Boot Dockerfile and build them separately.

### 8. Spring MVC with Hibernate:

```Dockerfile
# Use an official OpenJDK runtime as a parent image
FROM openjdk:11

# Copy the WAR file from target directory to the webapps directory of Tomcat
COPY target/*.war /usr/local/tomcat/webapps/

# Tomcat
FROM tomcat:9
```

Replace `11` with `8` or other desired Java versions if needed. Adjust the filenames and commands based on your project structure and requirements.

These Dockerfiles provide a starting point and can be further customized based on your specific needs. They assume a Maven-based build system for simplicity, but you can adjust them for Gradle or other build tools as required.