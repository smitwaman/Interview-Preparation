Terraform script to set up an ECS cluster, define task definitions, and deploy a Docker container to the ECS cluster.

### Prerequisites
- Install Terraform
- AWS CLI configured with appropriate credentials
- Docker installed on local machine

### Terraform Configuration Files

#### `main.tf`
```hcl
provider "aws" {
  region = "us-east-1" # Choose your desired AWS region
}

# Create ECS Cluster
resource "aws_ecs_cluster" "my_ecs_cluster" {
  name = "MyECSCluster"
}

# Create ECS Task Definition
resource "aws_ecs_task_definition" "my_task_definition" {
  family                   = "my-task-family"
  network_mode             = "bridge"
  requires_compatibilities = ["EC2"]
  cpu                      = "256"
  memory                   = "512"

  container_definitions = jsonencode([
    {
      name  = "my-container"
      image = "nginx:latest"
      portMappings = [
        {
          containerPort = 80
          hostPort      = 80
        }
      ]
      memoryReservation = 256
    }
  ])
}

# Create ECS Service
resource "aws_ecs_service" "my_ecs_service" {
  name            = "my-ecs-service"
  cluster         = aws_ecs_cluster.my_ecs_cluster.id
  task_definition = aws_ecs_task_definition.my_task_definition.arn
  launch_type     = "EC2"
  desired_count   = 1

  network_configuration {
    subnets = ["subnet-xxxxxx"] # Replace with your subnet IDs
  }

  load_balancer {
    target_group_arn = "arn:aws:elasticloadbalancing:us-east-1:123456789012:targetgroup/my-target-group/xxxxxxxxxxxx" # Replace with your target group ARN
    container_name   = "my-container"
    container_port   = 80
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

1. Create an ECS cluster named `MyECSCluster`.
2. Define a task definition with a Docker container running `nginx:latest`.
3. Deploy the task to the ECS cluster as a service with one task instance.

Remember to replace placeholders like `subnet-xxxxxx` and `arn:aws:elasticloadbalancing:us-east-1:123456789012:targetgroup/my-target-group/xxxxxxxxxxxx` with your actual values
