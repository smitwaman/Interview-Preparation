### Project: Container Orchestration with ECS

#### Aim
Manage Docker containers using Amazon Elastic Container Service (ECS).

#### Tools and Prerequisites
- AWS CLI
- Docker installed on local machine

#### Required Services
- Amazon ECS

---

### Building Steps

#### Step 1: Create ECS Cluster
1. **Log in** to the AWS Management Console.
2. Navigate to **Services** and select **ECS**.
3. Click **Create Cluster**.
4. **Select Cluster Template**:
   - Choose **EC2 Linux + Networking**.
5. **Cluster Name**:
   - Enter a name for your cluster (e.g., `MyECSCluster`).
6. **Instance Configuration**:
   - **EC2 instance type**: Choose an instance type (e.g., `t2.micro`).
   - **Number of instances**: Set to 1 for this example.
7. **Networking**:
   - **VPC**: Choose a VPC or create a new one.
   - **Subnets**: Select at least one subnet.
8. Click **Create**.

#### Step 2: Define Task Definitions
1. **Task Definitions**:
   - In the ECS dashboard, navigate to **Task Definitions**.
   - Click **Create new Task Definition**.
2. **Task Definition Name and Role**:
   - **Task Definition Name**: Enter a name for your task definition.
   - **Task Role**: Choose an existing role or create a new one.
3. **Task Execution Role**:
   - **Task execution IAM role**: Choose an existing role or create a new one.
4. **Task Size**:
   - **Task memory (MiB)**: Set the memory for your container (e.g., `512`).
   - **Task CPU (unit)**: Set the CPU units for your container (e.g., `256`).
5. **Container Definitions**:
   - Click **Add container**.
   - **Container Name**: Enter a name for your container.
   - **Image**: Enter the Docker image name (e.g., `nginx:latest`).
   - **Memory Limits**: Set the memory limit for the container (e.g., `256`).
   - **Port Mappings**: Add port mappings if necessary (e.g., `80`).
6. Click **Create**.

#### Step 3: Deploy Task to ECS Cluster
1. **ECS Dashboard**:
   - Go back to the ECS dashboard.
   - Select the cluster (`MyECSCluster`).
2. **Create Service**:
   - Click **Create** under **Services**.
   - **Launch type**: Choose **EC2**.
   - **Task Definition**: Choose the task definition you created.
   - **Service name**: Enter a name for your service.
   - **Number of tasks**: Set to 1 for this example.
   - **Cluster**: Choose the cluster (`MyECSCluster`).
   - **VPC**: Choose the VPC.
   - **Subnets**: Select subnets.
   - **Security groups**: Select security groups.
3. **Load Balancer**:
   - Choose **Application Load Balancer** if needed.
   - Configure listener port and target group.
4. Click **Next** and then **Create Service**.

---

By following these detailed steps in the AWS Management Console, you've successfully set up an ECS cluster, defined task definitions, and deployed a Docker container to the ECS cluster
