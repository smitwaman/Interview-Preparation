Terraform script to set up a SageMaker notebook instance, S3 bucket, and IAM role.

### Prerequisites
- Install Terraform
- AWS CLI configured with appropriate credentials
- ML data stored locally or in an S3 bucket

### Terraform Configuration Files

#### `main.tf`
```hcl
provider "aws" {
  region = "us-east-1" # Choose your desired AWS region
}

# Create IAM Role for SageMaker
resource "aws_iam_role" "sagemaker_role" {
  name = "sagemaker-execution-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "sagemaker.amazonaws.com"
        }
      }
    ]
  })
}

# Attach SageMaker Policy to IAM Role
resource "aws_iam_role_policy_attachment" "sagemaker_attach" {
  policy_arn = "arn:aws:iam::aws:policy/AmazonSageMakerFullAccess"
  role       = aws_iam_role.sagemaker_role.name
}

# Create SageMaker Notebook Instance
resource "aws_sagemaker_notebook_instance" "notebook_instance" {
  name            = "MyNotebookInstance"
  instance_type   = "ml.t2.medium"
  role_arn        = aws_iam_role.sagemaker_role.arn
  lifecycle_config_name = "ml-notebook-lifecycle-config"
}

# Create S3 Bucket for ML Data
resource "aws_s3_bucket" "ml_data_bucket" {
  bucket = "my-ml-data-bucket"
  acl    = "private"
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

1. Create an IAM role named `sagemaker-execution-role` for SageMaker.
2. Attach the Amazon SageMaker full access policy to the IAM role.
3. Create a SageMaker notebook instance named `MyNotebookInstance` of type `ml.t2.medium`.
4. Create an S3 bucket named `my-ml-data-bucket` with private access.

### Post-Execution Steps
1. **SageMaker Notebook**: Once the notebook instance is created, you can access it via the AWS Management Console.
2. **S3 Bucket**: After Terraform applies the configuration, you can manually upload ML data to the `my-ml-data-bucket` bucket using the AWS Management Console or AWS CLI.

Remember to replace placeholder values with your actual configurations as needed
