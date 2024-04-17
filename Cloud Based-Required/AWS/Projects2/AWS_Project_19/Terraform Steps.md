Sure, Terraform script to set up an event-driven architecture using Amazon SNS.

### Prerequisites
- Install Terraform
- AWS CLI configured with appropriate credentials

### Terraform Configuration Files

#### `main.tf`
```hcl
provider "aws" {
  region = "us-east-1" # Choose your desired AWS region
}

# Create SNS Topic
resource "aws_sns_topic" "my_sns_topic" {
  name = "MySNSTopic"
}

# SNS Email Subscription
resource "aws_sns_topic_subscription" "email_subscription" {
  topic_arn = aws_sns_topic.my_sns_topic.arn
  protocol  = "email"
  endpoint  = "your-email@example.com" # Replace with your email address
}

# Create Lambda Function
resource "aws_lambda_function" "sns_event_lambda" {
  function_name = "SNSEventLambda"
  handler       = "index.handler"
  runtime       = "nodejs14.x"
  
  # The source code for our Lambda function
  filename      = "lambda_function_payload.zip"
  source_code_hash = filebase64sha256("lambda_function_payload.zip")

  role          = aws_iam_role.lambda_exec.arn
}

# IAM Role for Lambda Execution
resource "aws_iam_role" "lambda_exec" {
  name = "lambda_exec_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "lambda.amazonaws.com"
        }
      }
    ]
  })
}

# IAM Role Policy for Lambda Execution
resource "aws_iam_role_policy_attachment" "lambda_exec_sns" {
  policy_arn = "arn:aws:iam::aws:policy/service-role/AWSLambdaBasicExecutionRole"
  role       = aws_iam_role.lambda_exec.name
}

# SNS to Lambda Permission
resource "aws_lambda_permission" "sns_to_lambda" {
  statement_id  = "AllowExecutionFromSNS"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.sns_event_lambda.function_name
  principal     = "sns.amazonaws.com"
  source_arn    = aws_sns_topic.my_sns_topic.arn
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

Replace the placeholder values (`your-email@example.com`, `lambda_function_payload.zip`) with your actual email address and Lambda function code file name.

After executing these commands, Terraform will:

1. Create an SNS topic named `MySNSTopic`.
2. Subscribe an email address to the SNS topic.
3. Create a Lambda function named `SNSEventLambda` and configure it to be triggered by messages published to the SNS topic.
4. Create an IAM role and attach the necessary policy to allow the Lambda function to execute.

Make sure to upload your Lambda function code as `lambda_function_payload.zip` in the same directory as your Terraform configuration file
