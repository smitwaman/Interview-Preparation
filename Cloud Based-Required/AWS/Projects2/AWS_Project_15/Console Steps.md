### Project: Network Security with VPC and Security Groups

#### Aim
Secure AWS resources using VPC and Security Groups.

#### Tools and Prerequisites
- AWS CLI

#### Required Services
- VPC
- Security Groups

---

### Building Steps

#### Step 1: Create VPC
1. **Log in** to the AWS Management Console.
2. Navigate to **Services** and select **VPC**.
3. In the VPC dashboard, click **Your VPCs**.
4. Click **Create VPC**.
5. **Name tag**:
   - Enter a name for your VPC (e.g., `MyVPC`).
6. **IPv4 CIDR block**:
   - Enter the CIDR block for your VPC (e.g., `10.0.0.0/16`).
7. Click **Create**.

#### Step 2: Configure Subnets and Route Tables
1. **Subnets**:
   - Click **Subnets** in the VPC dashboard.
   - Click **Create subnet**.
   - **Name tag**:
     - Enter a name for your subnet (e.g., `PublicSubnet`).
   - **VPC**:
     - Select the VPC you created (`MyVPC`).
   - **Availability Zone**:
     - Choose an Availability Zone.
   - **IPv4 CIDR block**:
     - Enter the CIDR block for your subnet (e.g., `10.0.1.0/24`).
   - Click **Create**.
2. **Route Tables**:
   - Click **Route Tables** in the VPC dashboard.
   - Click **Create route table**.
   - **Name tag**:
     - Enter a name for your route table (e.g., `PublicRouteTable`).
   - **VPC**:
     - Select the VPC you created (`MyVPC`).
   - Click **Create**.

#### Step 3: Set Up Security Groups
1. **Security Groups**:
   - Click **Security Groups** in the VPC dashboard.
   - Click **Create security group**.
   - **Name tag**:
     - Enter a name for your security group (e.g., `WebServerSG`).
   - **Description**:
     - Enter a description (e.g., `Allow HTTP and SSH`).
   - **VPC**:
     - Select the VPC you created (`MyVPC`).
   - **Inbound rules**:
     - **Type**: HTTP, **Protocol**: TCP, **Port Range**: 80, **Source**: 0.0.0.0/0
     - **Type**: SSH, **Protocol**: TCP, **Port Range**: 22, **Source**: Your IP or 0.0.0.0/0
   - Click **Create**.

---

By following these detailed steps in the AWS Management Console, you've successfully created a VPC, configured subnets and route tables, and set up security groups to secure your AWS resources
