Docker is main basic tool and technology developed after virtual machines for deployment.

Here Docker works with resources shearing with current OS system in isolated manner. Following are several layers for docker.


1. **Hardware Layer**: This is the physical infrastructure where the Docker engine runs. It includes the underlying hardware components such as CPUs, memory, storage devices, and networking interfaces.

2. **Operating System Kernel**: The Docker engine interacts directly with the host operating system's kernel to manage resources, networking, and process isolation. It uses kernel features such as namespaces and control groups (cgroups) to create isolated environments for running containers.

3. **Docker Engine**: The Docker engine is responsible for managing Docker containers and images. It consists of the Docker daemon (`dockerd`) and the Docker client (`docker`). The Docker daemon runs on the host machine and listens for Docker API requests, while the Docker client allows users to interact with the Docker daemon via the command-line interface (CLI) or API.

4. **Container Runtime**: Docker uses a container runtime to create and manage containers based on container images. The default container runtime for Docker is `containerd`, which handles container lifecycle management, image distribution, and low-level container execution. Other container runtimes, such as `runc`, can also be used with Docker.

5. **Container Images**: Container images are read-only templates used to create Docker containers. They contain the application code, runtime environment, libraries, dependencies, and other files needed for the application to run. Docker images are built using Dockerfiles and can be stored in Docker registries such as Docker Hub.

6. **Container Layer**: When a Docker container is created from an image, a writable layer known as the container layer is added on top of the image's read-only layers. This layer allows changes made to the container's filesystem during runtime, such as creating new files or modifying existing ones. Container layers are ephemeral and are discarded when the container is removed.

Overall, Docker's architecture leverages these layers to provide a lightweight and efficient containerization platform that enables developers to build, ship, and run applications consistently across different environments.
