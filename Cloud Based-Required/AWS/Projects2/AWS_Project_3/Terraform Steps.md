Terraform configuration to distribute application traffic using EC2 instances and an Application Load Balancer (ALB) on AWS.

### Prerequisites
- Install Terraform
- AWS CLI configured with appropriate credentials

### Terraform Configuration Files

#### `main.tf`
```hcl
provider "aws" {
  region = "us-east-1" # Choose your desired AWS region
}

# Create EC2 instances
resource "aws_instance" "web_servers" {
  count         = 2
  ami           = "ami-0c55b159cbfafe1f0" # Ubuntu 20.04 LTS AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "WebServer-${count.index}"
  }

  security_groups = [aws_security_group.instance_sg.name]

  key_name = "your-key-pair-name"
}

# Create Security Group for EC2 instances
resource "aws_security_group" "instance_sg" {
  name        = "instance_sg"
  description = "Allow SSH and HTTP inbound traffic"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["your-ip-address/32"] # Replace with your IP address
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create Application Load Balancer
resource "aws_lb" "app_lb" {
  name               = "app-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.lb_sg.id]
  subnets            = ["subnet-1a2b3c4d", "subnet-5e6f7g8h"] # Replace with your subnet IDs
}

# Create Security Group for ALB
resource "aws_security_group" "lb_sg" {
  name        = "lb_sg"
  description = "Allow HTTP inbound traffic for ALB"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create Target Group
resource "aws_lb_target_group" "web_targets" {
  name     = "web-targets"
  port     = 80
  protocol = "HTTP"
  vpc_id   = "your-vpc-id" # Replace with your VPC ID
}

# Attach EC2 instances to Target Group
resource "aws_lb_target_group_attachment" "web" {
  count         = 2
  target_group_arn = aws_lb_target_group.web_targets.arn
  target_id     = aws_instance.web_servers[count.index].id
}

# Create Listener for ALB
resource "aws_lb_listener" "front_end" {
  load_balancer_arn = aws_lb.app_lb.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.web_targets.arn
  }
}
```

#### `variables.tf`
```hcl
variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}

variable "ip_address" {
  description = "Your public IP address"
  default     = "your-ip-address"
}
```

### Steps to Execute Terraform Configuration

1. **Initialize Terraform**
    ```bash
    terraform init
    ```

2. **Validate and Plan**
    ```bash
    terraform validate
    terraform plan
    ```

3. **Apply Configuration**
    ```bash
    terraform apply
    ```

After executing these commands, Terraform will create:
- Two EC2 instances.
- A Security Group for EC2 instances allowing SSH and HTTP traffic.
- An Application Load Balancer.
- A Security Group for the ALB allowing HTTP traffic.
- A Target Group and register the EC2 instances as targets.
- A Listener to forward traffic to the Target Group.

Replace placeholders like `your-key-pair-name`, `your-ip-address`, `subnet-1a2b3c4d`, `subnet-5e6f7g8h`, and `your-vpc-id` with your actual values.

Once Terraform applies the configuration successfully, it will output the DNS name of the ALB. You can use this DNS name to access your application, and the ALB will distribute the incoming traffic across the registered EC2 instances
