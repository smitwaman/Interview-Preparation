# Project Name: Load Balancing
# Aim
Distribute application traffic.

# Tools and Prerequisites
- AWS CLI
- EC2 instances

Distribute application traffic using EC2 instances and an Application Load Balancer (ALB) in the AWS Management Console:

### Tools and Prerequisites
- AWS Account
- AWS CLI (Optional)
- EC2 instances

### Step 1: Create EC2 Instances
1. **Log in** to the AWS Management Console.
2. Navigate to **Services** and select **EC2** under the Compute category.
3. Click **Launch Instance**.
4. Choose an **Amazon Machine Image (AMI)**, instance type, and configure instance details as per your requirements.
5. In the **Configure Security Group** step:
   - Create a new security group.
   - Add rules to allow **SSH** (port 22) and any other necessary ports for your application.
6. Review and launch the instance. Select an existing **key pair** or create a new one.

Repeat these steps to launch multiple EC2 instances as targets for load balancing.

# Step 2: Set up Application Load Balancer (ALB)
1. In the **EC2 Dashboard**, navigate to **Load Balancers** under the **Load Balancing** category.
2. Click **Create Load Balancer** and choose **Application Load Balancer**.
3. Configure the load balancer:
   - **Name**: Provide a name for your ALB.
   - **Scheme**: Choose **internet-facing**.
   - **IP address type**: Choose **ipv4**.
   - **Listeners**:
     - Add a rule for **HTTP** (port 80) and optionally for **HTTPS** (port 443) if you have SSL/TLS certificates.
   - **Availability Zones**: Select the VPC and at least two subnets across different availability zones.
   - **Security Groups**: Create a new security group or select an existing one with inbound rules allowing traffic on ports 80 and 443.
4. Configure routing and register targets in the next steps.

# Step 3: Register Targets
1. After creating the ALB, go to its **Target Groups** tab.
2. Click **Create target group**.
3. Configure the target group:
   - **Name**: Provide a name for the target group.
   - **Protocol**: Choose **HTTP**.
   - **Port**: Enter **80**.
   - **VPC**: Select the VPC where your EC2 instances are running.
   - **Health checks**: Configure health check settings as per your application's requirements.
4. Click **Create** to create the target group.
5. Once the target group is created, select it and go to the **Targets** tab.
6. Click **Edit**, select the **instance** option, and choose your EC2 instances to register them with the target group.

# Final Steps
1. After registering targets, go back to the **Listeners** tab in the ALB configuration.
2. Click **View/edit rules** for the HTTP listener.
3. Add a rule to forward traffic to the target group you just created.
4. Review and create the ALB.

Now, the Application Load Balancer will distribute incoming application traffic across the registered EC2 instances based on the configured routing rules and health checks.

Ensure that your application is configured to handle traffic coming through the ALB, and you may also want to configure DNS to point to the ALB's DNS name for easy access to your application.

## Required Services
- EC2
- Application Load Balancer
