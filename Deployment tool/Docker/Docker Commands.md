Here's a list of commonly used Docker commands:

1. **docker run**: Run a command in a new container.
   Example: `docker run <image_name>`

2. **docker pull**: Pull an image or a repository from a registry.
   Example: `docker pull <image_name>`

3. **docker build**: Build an image from a Dockerfile.
   Example: `docker build -t <image_name> <path_to_Dockerfile>`

4. **docker ps**: List running containers.
   Example: `docker ps`

5. **docker ps -a**: List all containers, including stopped ones.
   Example: `docker ps -a`

6. **docker images**: List images.
   Example: `docker images`

7. **docker stop**: Stop a running container.
   Example: `docker stop <container_id>`

8. **docker start**: Start a stopped container.
   Example: `docker start <container_id>`

9. **docker rm**: Remove one or more containers.
   Example: `docker rm <container_id>`

10. **docker rmi**: Remove one or more images.
    Example: `docker rmi <image_id>`

11. **docker exec**: Run a command in a running container.
    Example: `docker exec -it <container_id> <command>`

12. **docker inspect**: Display detailed information about a container or image.
    Example: `docker inspect <container_id>`

13. **docker logs**: Fetch the logs of a container.
    Example: `docker logs <container_id>`

14. **docker-compose**: Manage multi-container Docker applications.
    Example: `docker-compose up`

15. **docker-compose down**: Stop and remove containers, networks, and volumes.
    Example: `docker-compose down`

These are just a few commonly used Docker commands. You can explore more commands and their options by checking Docker's official documentation or by running `docker --help` for a comprehensive list.
