Docker operations involved following stages:

1. build Dockerimage of application 
2. push image to Docker registery
3. pull image 
4. finally, run docker container with port as a service.


In initial stage we will need to create docker image for docker container. For that operation we will require Dockerfile.

Sure, here are some common Docker operations with examples:

1. **Building an Image**:
   ```
   docker build -t myapp .
   ```
   This command builds a Docker image tagged as `myapp` using the Dockerfile located in the current directory (`.`).

2. **Running a Container**:
   ```
   docker run -d -p 8080:80 myapp
   ```
   This command runs a Docker container named `myapp` in detached mode (`-d`), mapping port 8080 on the host to port 80 on the container.

3. **Viewing Running Containers**:
   ```
   docker ps
   ```
   This command lists all running containers along with their details such as container ID, image, status, ports, etc.

4. **Viewing All Containers**:
   ```
   docker ps -a
   ```
   This command lists all containers, including stopped ones.

5. **Stopping a Container**:
   ```
   docker stop container_id
   ```
   This command stops a running container with the specified container ID.

6. **Starting a Stopped Container**:
   ```
   docker start container_id
   ```
   This command starts a stopped container with the specified container ID.

7. **Removing a Container**:
   ```
   docker rm container_id
   ```
   This command removes a container with the specified container ID. You can also remove multiple containers by specifying multiple container IDs.

8. **Removing an Image**:
   ```
   docker rmi image_id
   ```
   This command removes an image with the specified image ID. You can also remove multiple images by specifying multiple image IDs.

9. **Inspecting a Container**:
   ```
   docker inspect container_id
   ```
   This command provides detailed information about a container, including its configuration, networking, mounts, etc.

10. **Viewing Container Logs**:
    ```
    docker logs container_id
    ```
    This command fetches and displays the logs of a container with the specified container ID.

11. **Executing a Command in a Running Container**:
    ```
    docker exec -it container_id bash
    ```
    This command allows you to run an interactive shell (`bash`) inside a running container with the specified container.

