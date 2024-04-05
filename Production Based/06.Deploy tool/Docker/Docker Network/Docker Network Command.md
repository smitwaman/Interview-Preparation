Here are Docker commands for managing Docker networks with examples:

1. **Create a Custom Bridge Network**:
   ```
   docker network create my_network
   ```
   This command creates a custom bridge network named `my_network`.

2. **List Docker Networks**:
   ```
   docker network ls
   ```
   This command lists all Docker networks on the host machine, including both default and custom networks.

3. **Inspect a Docker Network**:
   ```
   docker network inspect my_network
   ```
   This command provides detailed information about a specific Docker network, including its configuration and connected containers.

4. **Connect a Container to a Network**:
   ```
   docker network connect my_network container_name
   ```
   This command connects a running container to the specified Docker network.
   Example: `docker network connect my_network my_container`

5. **Disconnect a Container from a Network**:
   ```
   docker network disconnect my_network container_name
   ```
   This command disconnects a container from the specified Docker network.
   Example: `docker network disconnect my_network my_container`

6. **Remove a Docker Network**:
   ```
   docker network rm my_network
   ```
   This command removes the specified Docker network. Make sure no containers are connected to the network before removing it.
   Example: `docker network rm my_network`

7. **Inspecting Container Network Information**:
   ```
   docker network inspect container_name
   ```
   This command displays detailed information about the networks a specific container is connected to.
   Example: `docker network inspect my_container`

8. **Assign IP Address to a Container on a Custom Network**:
   ```
   docker run --network=my_network --ip 172.18.0.2 my_image
   ```
   This command runs a container on the specified network (`my_network`) with the assigned IP address (`172.18.0.2`).
   Example: `docker run --network=my_network --ip 172.18.0.2 my_image`

9. **Connecting Container to Multiple Networks**:
   ```
   docker network connect network1 container_name
   docker network connect network2 container_name
   ```
   This command connects a container to multiple Docker networks, allowing it to communicate with containers on different networks.
   Example: 
   ```
   docker network connect my_network1 my_container
   docker network connect my_network2 my_container
   ```

10. **Inspecting Docker Network Drivers**:
    ```
    docker network inspect -v my_network
    ```
    This command displays detailed information about the Docker network drivers used in the specified network.
    Example: `docker network inspect -v my_network`

These examples illustrate how to create, manage, and inspect Docker networks to facilitate communication between containers in various network environments. Adjust the network names and container names accordingly to match your specific setup.
