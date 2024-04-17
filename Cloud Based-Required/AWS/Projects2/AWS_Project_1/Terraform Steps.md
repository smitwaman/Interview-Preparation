Terraform configuration to achieve the same Static Website Hosting project on AWS:

### Prerequisites
- Install Terraform
- AWS CLI configured with appropriate credentials

### Terraform Configuration Files

#### `main.tf`
```hcl
provider "aws" {
  region = "us-east-1" # Choose your desired AWS region
}

resource "aws_s3_bucket" "static_website_bucket" {
  bucket = "your-unique-bucket-name"
  acl    = "public-read"

  website {
    index_document = "index.html"
  }
}

resource "aws_s3_bucket_policy" "public_bucket_policy" {
  bucket = aws_s3_bucket.static_website_bucket.id

  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Sid       = "PublicReadGetObject",
        Effect    = "Allow",
        Principal = "*",
        Action    = "s3:GetObject",
        Resource  = "${aws_s3_bucket.static_website_bucket.arn}/*"
      }
    ]
  })
}
```

#### `variables.tf`
```hcl
variable "region" {
  description = "AWS region"
  default     = "us-east-1"
}
```

#### `outputs.tf`
```hcl
output "bucket_name" {
  value = aws_s3_bucket.static_website_bucket.bucket
}

output "bucket_endpoint" {
  value = aws_s3_bucket.static_website_bucket.website_endpoint
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

After executing these commands, Terraform will create the S3 bucket and configure it for static website hosting with public access.

Remember to replace `your-unique-bucket-name` with a unique name for your bucket. Also, review and modify the AWS region and other settings as per your requirements.

Once Terraform applies the configuration successfully, it will output the bucket name and endpoint URL which you can use to access your static website.
