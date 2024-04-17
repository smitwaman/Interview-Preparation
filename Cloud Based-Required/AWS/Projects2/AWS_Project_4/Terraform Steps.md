Terraform configuration to set up a relational database using Amazon RDS on AWS.

### Prerequisites
- Install Terraform
- AWS CLI configured with appropriate credentials

### Terraform Configuration Files

#### `main.tf`
```hcl
provider "aws" {
  region = "us-east-1" # Choose your desired AWS region
}

# Create RDS instance
resource "aws_db_instance" "mydb" {
  allocated_storage    = 20
  storage_type         = "gp2"
  engine               = "mysql" # Choose your database engine
  engine_version       = "5.7"
  instance_class       = "db.t2.micro"
  name                 = "mydb"
  username             = "admin"
  password             = "Admin12345!" # Replace with your password
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true

  vpc_security_group_ids = [aws_security_group.db_sg.id]

  tags = {
    Name = "MyDB"
  }
}

# Create Security Group for RDS
resource "aws_security_group" "db_sg" {
  name        = "db_sg"
  description = "Allow MySQL inbound traffic"

  ingress {
    from_port   = 3306
    to_port     = 3306
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] # Open to all IPs for demonstration
  }
}

# Output RDS Endpoint
output "rds_endpoint" {
  value = aws_db_instance.mydb.endpoint
}
```

#### `variables.tf`
```hcl
variable "region" {
  description = "AWS region"
  default     = "us-east-1"
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
- An RDS instance with MySQL engine.
- A Security Group allowing MySQL inbound traffic.

Replace placeholders like `Admin12345!` with your actual password.

Once Terraform applies the configuration successfully, it will output the RDS instance endpoint. You can use this endpoint to connect to your RDS instance and manage your relational database. Remember to restrict the security group rules and other configurations for production use to enhance security
