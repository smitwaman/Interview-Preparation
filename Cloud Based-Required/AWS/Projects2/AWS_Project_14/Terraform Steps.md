Terraform script to create IAM users, groups, roles, and assign policies.

### Prerequisites
- Install Terraform
- AWS CLI configured with appropriate credentials

### Terraform Configuration Files

#### `main.tf`
```hcl
provider "aws" {
  region = "us-east-1" # Choose your desired AWS region
}

# Create IAM Users
resource "aws_iam_user" "example_user" {
  count = 2
  name  = "user${count.index + 1}"
}

# Create IAM Groups
resource "aws_iam_group" "developers_group" {
  name = "Developers"
}

# Create IAM Roles
resource "aws_iam_role" "ec2_role" {
  name = "EC2FullAccessRole"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })
}

# Assign Policies to IAM Users
resource "aws_iam_user_policy_attachment" "user_policy" {
  for_each = aws_iam_user.example_user

  user       = each.value.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonS3FullAccess"
}

# Assign Policies to IAM Groups
resource "aws_iam_group_policy_attachment" "group_policy" {
  group       = aws_iam_group.developers_group.name
  policy_arn  = "arn:aws:iam::aws:policy/AmazonEC2FullAccess"
}

# Assign Policies to IAM Roles
resource "aws_iam_role_policy_attachment" "role_policy" {
  role       = aws_iam_role.ec2_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonDynamoDBFullAccess"
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

1. Create two IAM users (`user1`, `user2`).
2. Create an IAM group named `Developers`.
3. Create an IAM role named `EC2FullAccessRole`.
4. Assign `AmazonS3FullAccess` policy to the IAM users.
5. Assign `AmazonEC2FullAccess` policy to the `Developers` group.
6. Assign `AmazonDynamoDBFullAccess` policy to the `EC2FullAccessRole`.

Note: You might need to adjust the policies and permissions according to your specific requirements
