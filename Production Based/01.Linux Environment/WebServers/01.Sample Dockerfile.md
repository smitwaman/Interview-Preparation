Sure! Below are Dockerfiles for each of the mentioned web servers:

1. **Node.js with Express**:
```Dockerfile
# Use Node.js base image
FROM node:latest

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose port 3000
EXPOSE 3000

# Command to run the application
CMD ["node", "app.js"]
```

2. **Django**:
```Dockerfile
# Use Python base image
FROM python:latest

# Set working directory
WORKDIR /app

# Copy requirements.txt
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application files
COPY . .

# Expose port 8000
EXPOSE 8000

# Command to run the application
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
```

3. **Flask**:
```Dockerfile
# Use Python base image
FROM python:latest

# Set working directory
WORKDIR /app

# Copy requirements.txt
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application files
COPY . .

# Expose port 5000
EXPOSE 5000

# Command to run the application
CMD ["flask", "run", "--host=0.0.0.0"]
```

4. **Spring Boot**:
```Dockerfile
# Use Java base image
FROM openjdk:latest

# Set working directory
WORKDIR /app

# Copy jar file
COPY target/*.jar app.jar

# Expose port 8080
EXPOSE 8080

# Command to run the application
CMD ["java", "-jar", "app.jar"]
```

5. **Ruby on Rails**:
```Dockerfile
# Use Ruby base image
FROM ruby:latest

# Set working directory
WORKDIR /app

# Copy Gemfile and Gemfile.lock
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle install

# Copy the rest of the application files
COPY . .

# Expose port 3000
EXPOSE 3000

# Command to run the application
CMD ["rails", "server", "-b", "0.0.0.0"]
```

These Dockerfiles define the necessary steps to build Docker images for each web server. You can use these Dockerfiles to containerize your web applications and run them in Docker containers. Make sure to replace the application-specific details such as file paths, port numbers, and commands as needed for your specific projects.
