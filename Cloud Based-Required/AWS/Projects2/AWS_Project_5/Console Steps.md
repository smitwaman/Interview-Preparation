# Project Name: Serverless API with Lambda and API Gateway
# Aim
Create a serverless API.

# Building Steps
1. Write Lambda function.
2. Create API Gateway.
3. Configure endpoints.

# Tools and Prerequisites
- AWS CLI
- Lambda function code

# Required Services
- Lambda
- API Gateway

Sure! Below is the Terraform configuration to create a serverless API using AWS Lambda and API Gateway on AWS.

# Prerequisites
- Install Terraform
- AWS CLI configured with appropriate credentials

# Terraform Configuration Files

#### `main.tf`
```hcl
provider "aws" {
  region = "us-east-1" # Choose your desired AWS region
}

# Create Lambda Function
resource "aws_lambda_function" "api_lambda" {
  filename      = "lambda_function_payload.zip" # Replace with your Lambda function zip file
  function_name = "MyApiLambda"
  handler       = "index.handler"
  runtime       = "nodejs14.x" # Choose your Lambda runtime

  environment {
    variables = {
      EXAMPLE_ENV_VAR = "example-value" # Replace with your environment variables
    }
  }

  tags = {
    Name = "MyApiLambda"
  }
}

# Create API Gateway
resource "aws_api_gateway_rest_api" "api_gateway" {
  name        = "MyApiGateway"
  description = "My Serverless API"
}

# Create API Gateway Resource
resource "aws_api_gateway_resource" "api_resource" {
  rest_api_id = aws_api_gateway_rest_api.api_gateway.id
  parent_id   = aws_api_gateway_rest_api.api_gateway.root_resource_id
  path_part   = "myendpoint"
}

# Create API Gateway Method (GET)
resource "aws_api_gateway_method" "api_method_get" {
  rest_api_id   = aws_api_gateway_rest_api.api_gateway.id
  resource_id   = aws_api_gateway_resource.api_resource.id
  http_method   = "GET"
  authorization = "NONE"
}

# Create Lambda Integration with API Gateway
resource "aws_api_gateway_integration" "api_lambda_integration" {
  rest_api_id = aws_api_gateway_rest_api.api_gateway.id
  resource_id = aws_api_gateway_resource.api_resource.id
  http_method = aws_api_gateway_method.api_method_get.http_method

  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = aws_lambda_function.api_lambda.invoke_arn
}

# Deploy API Gateway
resource "aws_api_gateway_deployment" "api_gateway_deployment" {
  depends_on = [aws_api_gateway_integration.api_lambda_integration]

  rest_api_id = aws_api_gateway_rest_api.api_gateway.id
  stage_name  = "prod"
}
```

# Steps to Execute Terraform Configuration

1. **Write Lambda Function**: Create a zip file (`lambda_function_payload.zip`) containing your Lambda function code (`index.js`, `package.json`, etc.).
2. **Initialize Terraform**
    ```bash
    terraform init
    ```

3. **Validate and Plan**
    ```bash
    terraform validate
    terraform plan
    ```

4. **Apply Configuration**
    ```bash
    terraform apply
    ```

After executing these commands, Terraform will create:
- An AWS Lambda function (`MyApiLambda`).
- An API Gateway (`MyApiGateway`).
- A GET method and resource (`myendpoint`) in the API Gateway.
- A Lambda integration with the API Gateway.

Replace placeholders like `lambda_function_payload.zip`, `index.js`, `nodejs14.x`, and `example-value` with your actual Lambda function code, runtime, and environment variables.

Once Terraform applies the configuration successfully, it will deploy the API Gateway and output the API Gateway endpoint URL. You can use this endpoint URL to invoke your serverless API through the GET method.
