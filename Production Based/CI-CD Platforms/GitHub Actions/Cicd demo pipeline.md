Sure! Below is a step-by-step YAML configuration file for a CI/CD pipeline using GitHub Actions. This pipeline will cover the following stages:

1. **Git SCM**: Checkout the code from the repository.
2. **Maven Build**: Build the Java project using Maven.
3. **SonarQube Test**: Analyze the code quality using SonarQube.
4. **Docker Image Build**: Build a Docker image for the application.
5. **Docker Image Push**: Push the Docker image to a Docker repository.
6. **Deploy Apache Tomcat**: Deploy the application to Apache Tomcat server.

```yaml
name: CI/CD Pipeline

# Define when the workflow will run
on:
  push:
    branches:
      - main

# Define jobs that run in the workflow
jobs:
  build-and-deploy:
    runs-on: ubuntu-latest

    steps:
    - name: Checkout Code
      uses: actions/checkout@v2

    - name: Setup Java JDK
      uses: actions/setup-java@v2
      with:
        java-version: '11'  # Java version to use

    - name: Maven Build
      run: mvn clean install
      working-directory: ./path/to/maven/project  # Path to Maven project

    - name: SonarQube Scan
      uses: sonarsource/sonarcloud-github-action@master
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
        SONAR_TOKEN: ${{ secrets.SONAR_TOKEN }}

    - name: Login to Docker Registry
      uses: docker/login-action@v1
      with:
        username: ${{ secrets.DOCKER_USERNAME }}
        password: ${{ secrets.DOCKER_PASSWORD }}

    - name: Build Docker Image
      run: docker build -t your-docker-repo/your-image-name:latest .
      working-directory: ./path/to/dockerfile  # Path to Dockerfile

    - name: Push Docker Image
      run: docker push your-docker-repo/your-image-name:latest

    - name: Deploy to Apache Tomcat
      uses: appleboy/ssh-action@master
      with:
        host: ${{ secrets.TOMCAT_HOST }}
        username: ${{ secrets.TOMCAT_USERNAME }}
        key: ${{ secrets.TOMCAT_SSH_KEY }}
        script: 'cd /path/to/tomcat/webapps && docker-compose up -d'
```

### Explanation:

- **`on`:** Defines that the workflow will run on `push` to `main` branch.

- **`jobs`**: Defines the `build-and-deploy` job which contains multiple steps.

- **`steps`**: Individual tasks to execute in the `build-and-deploy` job.

  - **Checkout Code**: Checkout the code from the repository.
  
  - **Setup Java JDK**: Setup Java JDK version 11.
  
  - **Maven Build**: Build the Maven project located at `./path/to/maven/project`.
  
  - **SonarQube Scan**: Perform SonarQube analysis using SonarCloud GitHub Action. Requires `GITHUB_TOKEN` and `SONAR_TOKEN` secrets.
  
  - **Login to Docker Registry**: Login to Docker using Docker credentials stored as secrets.
  
  - **Build Docker Image**: Build Docker image using Dockerfile located at `./path/to/dockerfile`.
  
  - **Push Docker Image**: Push Docker image to Docker repository.
  
  - **Deploy to Apache Tomcat**: Deploy application to Apache Tomcat server using SSH. Requires Apache Tomcat host, username, and SSH key stored as secrets.

### Notes:

- Replace placeholders like `your-docker-repo`, `your-image-name`, `./path/to/maven/project`, `./path/to/dockerfile`, etc., with your actual values.
  
- Ensure that you have set up necessary secrets (`DOCKER_USERNAME`, `DOCKER_PASSWORD`, `SONAR_TOKEN`, `GITHUB_TOKEN`, `TOMCAT_HOST`, `TOMCAT_USERNAME`, `TOMCAT_SSH_KEY`) in your GitHub repository.

This pipeline will automate the CI/CD process starting from code checkout to deployment on Apache Tomcat server, ensuring that your application is built, tested, and deployed seamlessly.
