Terraform script to create a VPC, configure subnets and route tables, and set up security groups.

### Prerequisites
- Install Terraform
- AWS CLI configured with appropriate credentials

### Terraform Configuration Files

#### `main.tf`
```hcl
provider "aws" {
  region = "us-east-1" # Choose your desired AWS region
}

# Create VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "MyVPC"
  }
}

# Create Subnet
resource "aws_subnet" "public_subnet" {
  vpc_id                  = aws_vpc.my_vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1a" # Choose your desired AZ
  map_public_ip_on_launch = true
  tags = {
    Name = "PublicSubnet"
  }
}

# Create Route Table
resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.my_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_vpc.my_vpc.internet_gateway_id
  }

  tags = {
    Name = "PublicRouteTable"
  }
}

# Associate Subnet with Route Table
resource "aws_route_table_association" "public_route_table_association" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = aws_route_table.public_route_table.id
}

# Create Security Group
resource "aws_security_group" "web_server_sg" {
  name        = "WebServerSG"
  description = "Allow HTTP and SSH"
  vpc_id      = aws_vpc.my_vpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["Your_IP_Address/32"] # Replace with your IP or 0.0.0.0/0 for all
  }

  tags = {
    Name = "WebServerSG"
  }
}
```

### Steps to Execute Terraform Configuration

#### Step 1: Initialize Terraform
```bash
terraform init
```

#### Step 2: Validate Configuration
```bash
terraform validate
```

#### Step 3: Plan Configuration
```bash
terraform plan
```

#### Step 4: Apply Configuration
```bash
terraform apply
```

After executing these commands in the given sequence, Terraform will:

1. Create a VPC named `MyVPC` with CIDR block `10.0.0.0/16`.
2. Create a subnet named `PublicSubnet` with CIDR block `10.0.1.0/24` in `us-east-1a`.
3. Create a public route table named `PublicRouteTable` and associate it with the subnet.
4. Create a security group named `WebServerSG` allowing HTTP and SSH traffic.

Note: Make sure to replace `Your_IP_Address` with your actual IP address or use `0.0.0.0/0` to allow SSH access from any IP
