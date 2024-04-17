Terraform script to create an SQS queue and send/receive messages using AWS SQS.

### Prerequisites
- Install Terraform
- AWS CLI configured with appropriate credentials

### Terraform Configuration Files

#### `main.tf`
```hcl
provider "aws" {
  region = "us-east-1" # Choose your desired AWS region
}

# Create SQS queue
resource "aws_sqs_queue" "my_queue" {
  name                      = "MyQueue" # Replace with your desired queue name
  delay_seconds             = 0
  max_message_size          = 2048
  message_retention_seconds = 345600 # 4 days
  visibility_timeout_seconds = 30
  receive_wait_time_seconds  = 0
  redrive_policy            = ""

  tags = {
    Name        = "MyQueue"
    Environment = "Dev"
  }
}

# Example message for testing
locals {
  message_body = "Hello, SQS!"
}

# Send message to SQS queue
resource "aws_sqs_queue" "my_queue_send_message" {
  count          = 1
  name           = aws_sqs_queue.my_queue.name
  message_body   = local.message_body
  delay_seconds  = 0
  message_attributes = {}
}

# Receive message from SQS queue
resource "aws_sqs_queue" "my_queue_receive_message" {
  count          = 1
  name           = aws_sqs_queue.my_queue.name
  visibility_timeout_seconds = 30
}

# Output for received message
output "received_message" {
  value = aws_sqs_queue.my_queue_receive_message.messages[0].body
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

1. Create an SQS queue named `MyQueue`.
2. Send a message with the content "Hello, SQS!" to the queue.
3. Receive and output the message from the queue.

Remember to replace placeholders like `MyQueue` and adjust configurations as per your specific requirements. This script demonstrates the creation and basic usage of an SQS queue with Terraform
