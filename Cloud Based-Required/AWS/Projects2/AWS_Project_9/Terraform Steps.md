Terraform script to create an EFS file system and mount it to an EC2 instance running Ubuntu.

### Prerequisites
- Install Terraform
- AWS CLI configured with appropriate credentials

### Terraform Configuration Files

#### `main.tf`
```hcl
provider "aws" {
  region = "us-east-1" # Choose your desired AWS region
}

# Create EFS file system
resource "aws_efs_file_system" "my_efs" {
  creation_token = "my-efs"
  
  tags = {
    Name        = "MyEFS"
    Environment = "Dev"
  }
}

# Create mount target for EFS
resource "aws_efs_mount_target" "my_efs_mount_target" {
  count           = 1
  file_system_id  = aws_efs_file_system.my_efs.id
  subnet_id       = "subnet-xxxxxx" # Replace with your subnet ID
  security_groups = ["sg-xxxxxx"]    # Replace with your security group ID
  
  tags = {
    Name = "MyEFSMountTarget"
  }
}

# Create Ubuntu EC2 instance
resource "aws_instance" "ubuntu_ec2" {
  ami           = "ami-xxxxxx" # Ubuntu AMI ID
  instance_type = "t2.micro"
  key_name      = "your-key-name" # Replace with your key pair name
  
  tags = {
    Name = "UbuntuEC2"
  }

  provisioner "remote-exec" {
    inline = [
      "sudo apt-get update",
      "sudo apt-get install -y nfs-common",
      "sudo mkdir /mnt/my-efs",
      "sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2 ${aws_efs_file_system.my_efs.dns_name}:/ /mnt/my-efs"
    ]

    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("~/.ssh/your-key.pem") # Replace with your private key path
      host        = aws_instance.ubuntu_ec2.public_ip
    }
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

1. Create an EFS file system.
2. Create a mount target for the EFS.
3. Create an Ubuntu EC2 instance.
4. Install NFS client and mount the EFS on the Ubuntu EC2 instance.

Remember to replace placeholders like `subnet-xxxxxx`, `sg-xxxxxx`, `ami-xxxxxx`, `your-key-name`, and `~/.ssh/your-key.pem` with your actual values
