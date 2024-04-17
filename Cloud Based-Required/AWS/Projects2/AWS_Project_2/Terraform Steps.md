Below is the Terraform configuration to deploy a dynamic website using an EC2 instance with Ubuntu on AWS.

### Prerequisites
- Install Terraform
- AWS CLI configured with appropriate credentials

### Terraform Configuration Files

#### `main.tf`
```hcl
provider "aws" {
  region = "us-east-1" # Choose your desired AWS region
}

resource "aws_instance" "web_server" {
  ami           = "ami-0c55b159cbfafe1f0" # Ubuntu 20.04 LTS AMI ID
  instance_type = "t2.micro"

  tags = {
    Name = "WebServerInstance"
  }

  security_groups = [aws_security_group.instance_sg.name]

  key_name = "your-key-pair-name"
}

resource "aws_security_group" "instance_sg" {
  name        = "instance_sg"
  description = "Allow HTTP, HTTPS and SSH inbound traffic"

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

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_key_pair" "web_server_key" {
  key_name   = "your-key-pair-name"
  public_key = file("path_to_public_key.pub") # Replace with your public key path
}

resource "null_resource" "install_apache" {
  provisioner "remote-exec" {
    inline = [
      "sudo apt update",
      "sudo apt install apache2 -y",
      "sudo systemctl start apache2",
      "sudo systemctl enable apache2"
    ]

    connection {
      type        = "ssh"
      host        = aws_instance.web_server.public_ip
      user        = "ubuntu"
      private_key = file("path_to_private_key.pem") # Replace with your private key path
    }
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

After executing these commands, Terraform will create the EC2 instance with Ubuntu, install Apache web server, and configure the security groups to allow SSH, HTTP, and HTTPS traffic.

Replace placeholders like `your-key-pair-name`, `your-ip-address`, `path_to_public_key.pub`, and `path_to_private_key.pem` with your actual values.

Once Terraform applies the configuration successfully, it will output the public IP address of the EC2 instance. You can SSH into this instance to deploy your website code and configure Apache for hosting the dynamic website
