Certainly! Below is a YAML file for a GitHub Actions workflow that checks out code from a GitHub repository, builds a Docker image, and pushes it to a Docker repository.

```yaml
name: Build and Push Docker Image

# Defines when the workflow will run
on:
  push:
    branches:
      - main

# Defines jobs that run in the workflow
jobs:
  build-and-push:
    # Specifies the type of runner to use
    runs-on: ubuntu-latest

    # Steps define the tasks to execute
    steps:
    - name: Checkout Code
      uses: actions/checkout@v2

    - name: Login to Docker Registry
      uses: docker/login-action@v1
      with:
        username: ${{ secrets.DOCKER_USERNAME }}
        password: ${{ secrets.DOCKER_PASSWORD }}

    - name: Build Docker Image
      run: docker build -t your-docker-repo/your-image-name:latest .
      working-directory: ./path/to/dockerfile

    - name: Push Docker Image
      run: docker push your-docker-repo/your-image-name:latest
```

### Description:

- **`name`:**  
  - **Purpose:** Defines the name of the workflow.
  - **Example:** `name: Build and Push Docker Image`

- **`on`:**  
  - **Purpose:** Defines the events that trigger the workflow.
  - **Example:** Triggered on `push` to `main` branch.

- **`jobs`:**  
  - **Purpose:** Defines the jobs that run in the workflow.
  - **Example:** Contains `build-and-push` job.

- **`build-and-push`:**  
  - **Purpose:** Specifies the job that builds and pushes the Docker image.
  - **Example:** Runs on `ubuntu-latest` and contains steps to checkout code, login to Docker, build Docker image, and push Docker image.

- **`uses`:**  
  - **Purpose:** Specifies the action to use in a step.
  - **Example:** `actions/checkout@v2` to checkout code, `docker/login-action@v1` to login to Docker.

- **`with`:**  
  - **Purpose:** Provides additional options or configurations for an action.
  - **Example:** `username` and `password` for Docker login.

- **`run`:**  
  - **Purpose:** Executes the command in the step.
  - **Example:** `docker build` to build Docker image, `docker push` to push Docker image.

- **`working-directory`:**  
  - **Purpose:** Specifies the directory where the command will run.
  - **Example:** `./path/to/dockerfile` where Dockerfile is located.

### Notes:

- Replace `your-docker-repo` and `your-image-name` with your Docker repository and image name.
- Replace `./path/to/dockerfile` with the actual path to your Dockerfile in the repository.
- Use GitHub Secrets (`DOCKER_USERNAME` and `DOCKER_PASSWORD`) to securely store Docker credentials.

This workflow will build a Docker image using the Dockerfile in the specified directory and push it to the Docker repository when code is pushed to the `main` branch.