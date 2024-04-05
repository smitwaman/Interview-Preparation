In Docker we will deal with two types of port
1. Virtual ethernet
2. Ethernet

for transfer of IP packet over internet network.
As we know docker runs in virtual environment and shear network resources at operating system layer also.
Here Docker will shear ethernet port for internet communication with externel world.

There is port range from 0 to 65656 

from which some ports pre-assigned for fuctioning of server specific operations of local system IP.

The basic port used for running Docker on a system is 2375 for unencrypted communication and 2376 for encrypted communication using TLS (Transport Layer Security). These ports are used for communication between the Docker client and the Docker daemon (server). 

By default, Docker listens on a Unix socket (`/var/run/docker.sock`) for communication between the Docker client and server. However, if you configure Docker to listen on TCP sockets for remote API access, it will use port 2375 or 2376 for communication.

Here's a summary of the ports used by Docker:

- **2375**: Default port for unencrypted communication between the Docker client and server.
- **2376**: Default port for encrypted communication (TLS) between the Docker client and server.


## Now lets enter into inside network of Docker.
Here, we will use following architectures in docker for communicating hosts,among hosts, containers or among containers.

1. **Default Bridge Network**:
   - When Docker is installed, it creates a default bridge network named `bridge`.
   - By default, Docker containers connect to the `bridge` network if no other network is specified.
   - Containers on the `bridge` network can communicate with each other via IP addresses.
   - Each container connected to the `bridge` network gets an IP address assigned by Docker's built-in DHCP server.

2. **Custom Bridge Networks**:
   - Docker allows you to create custom bridge networks to isolate containers and control traffic flow.
   - Custom bridge networks provide better isolation, security, and control over communication between containers.
   - Containers on custom bridge networks can communicate with each other using container names as DNS entries.
   - You can define custom subnets, IP address ranges, and gateway configurations for custom bridge networks.

3. **Host Network**:
   - Docker supports the `host` network mode, where containers share the host's network namespace.
   - Containers running in `host` network mode bypass Docker's network isolation and have direct access to the host's network interfaces.
   - This mode provides better performance but reduces isolation between containers.

4. **Overlay Networks**:
   - Overlay networks enable communication between containers running on different Docker hosts in a swarm cluster.
   - They use VXLAN (Virtual Extensible LAN) encapsulation to create virtual networks that span multiple hosts.
   - Overlay networks provide transparent communication between containers regardless of their physical location.
   - Docker Swarm automatically configures overlay networks when services are deployed in a swarm cluster.

5. **Macvlan Networks**:
   - Macvlan networks allow containers to have their own MAC addresses and appear as physical devices on the network.
   - Containers connected to Macvlan networks can communicate directly with external devices on the physical network.
   - This mode is useful for scenarios where containers need direct access to physical network resources or services.

6. **None Network**:
   - Docker provides a special `none` network mode where containers have no network connectivity.
   - Containers in `none` network mode are isolated from all network traffic, including loopback interfaces.

Working of inside network architecture:

for bridge network,
Here bridge is main architecture used for managementment of ip packet routing from docker to containers.

After container creation, bridge network assigned port and use virtual ethernet in program form for it.
It used it for communicating container with IP:Port form.

Every container has connection with bridge network and bridge network has connection with Docker and in final stage Docker has connection with actual ethernet port in form of IP and Port.

# CONTAINER VIRTUAL ETHERNET PORT➡️ CONTAINER (IP:PORT)➡️BRIDGE NETWORK➡️DOCKERHOST➡️SERVER ETHERNET(IP:2375)


