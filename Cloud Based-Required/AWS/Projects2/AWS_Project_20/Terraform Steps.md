Terraform script to set up a serverless website using AWS Amplify and S3.

### Prerequisites
- Install Terraform
- AWS CLI configured with appropriate credentials

### Terraform Configuration Files

#### `main.tf`
```hcl
provider "aws" {
  region = "us-east-1" # Choose your desired AWS region
}

# Create Amplify App
resource "aws_amplify_app" "my_amplify_app" {
  name     = "my-amplify-app"
  repository = "https://github.com/aws-amplify/amplify-console"
}

# Amplify Branch
resource "aws_amplify_branch" "master" {
  app_id     = aws_amplify_app.my_amplify_app.app_id
  branch_name = "master"
}

# Amplify Hosting (S3)
resource "aws_amplify_domain" "my_amplify_domain" {
  domain_name   = "my-amplify-domain.com"
  sub_domain    = "www"
  app_id        = aws_amplify_app.my_amplify_app.app_id
  enable        = true
}

# S3 Bucket for Amplify Hosting
resource "aws_s3_bucket" "amplify_s3_bucket" {
  bucket_prefix = "amplify-hosting"
  acl           = "public-read"
  website {
    index_document = "index.html"
    error_document = "index.html"
  }
}

# Amplify Bucket Policy
resource "aws_s3_bucket_policy" "amplify_s3_bucket_policy" {
  bucket = aws_s3_bucket.amplify_s3_bucket.bucket
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "s3:GetObject",
        Effect = "Allow",
        Principal = "*",
        Resource = "arn:aws:s3:::${aws_s3_bucket.amplify_s3_bucket.bucket}/*"
      }
    ]
  })
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

After executing these commands, Terraform will:

1. Create an Amplify app named `my-amplify-app`.
2. Create a branch named `master` for the Amplify app.
3. Create an Amplify domain with S3 hosting.
4. Create an S3 bucket for Amplify hosting.
5. Apply a public read bucket policy to the S3 bucket.

Note: Make sure to replace placeholder values (`my-amplify-domain.com`) with your actual domain name. Also, update the GitHub repository URL in the `aws_amplify_app` resource to your application's repository.
