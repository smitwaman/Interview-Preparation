#!/bin/bash

# Create directories and description files for projects 1-10
for i in {1..10}; do
    mkdir -p "AWS_Project_$i"
    cd "AWS_Project_$i"

    case $i in
        1)
            cat > description.md <<EOL
# Project Name: Static Website Hosting
## Aim
Host a static website on AWS.

## Building Steps
1. Create an S3 bucket.
2. Upload website files to the bucket.
3. Enable static website hosting.
4. Configure bucket policy for public access.

## Tools and Prerequisites
- AWS CLI
- Website files

## Required Services
- S3
EOL
            ;;
        2)
            cat > description.md <<EOL
# Project Name: Dynamic Website with EC2
## Aim
Deploy a dynamic website using EC2.

## Building Steps
1. Launch EC2 instance.
2. Install web server.
3. Deploy website code.

## Tools and Prerequisites
- AWS CLI
- Web server setup files

## Required Services
- EC2
EOL
            ;;
        3)
            cat > description.md <<EOL
# Project Name: Load Balancing
## Aim
Distribute application traffic.

## Building Steps
1. Create EC2 instances.
2. Set up Application Load Balancer.
3. Register targets.

## Tools and Prerequisites
- AWS CLI
- EC2 instances

## Required Services
- EC2
- Application Load Balancer
EOL
            ;;
        4)
            cat > description.md <<EOL
# Project Name: Database Setup with RDS
## Aim
Set up a relational database.

## Building Steps
1. Launch RDS instance.
2. Choose database engine.
3. Configure database settings.

## Tools and Prerequisites
- AWS CLI
- Database scripts

## Required Services
- RDS
EOL
            ;;
        5)
            cat > description.md <<EOL
# Project Name: Serverless API with Lambda and API Gateway
## Aim
Create a serverless API.

## Building Steps
1. Write Lambda function.
2. Create API Gateway.
3. Configure endpoints.

## Tools and Prerequisites
- AWS CLI
- Lambda function code

## Required Services
- Lambda
- API Gateway
EOL
            ;;
        6)
            cat > description.md <<EOL
# Project Name: Object Storage with S3
## Aim
Store and retrieve files.

## Building Steps
1. Create S3 bucket.
2. Upload files.

## Tools and Prerequisites
- AWS CLI

## Required Services
- S3
EOL
            ;;
        7)
            cat > description.md <<EOL
# Project Name: Content Delivery Network with CloudFront
## Aim
Speed up content delivery.

## Building Steps
1. Create CloudFront distribution.
2. Configure origin.

## Tools and Prerequisites
- AWS CLI
- S3 bucket

## Required Services
- CloudFront
- S3
EOL
            ;;
        8)
            cat > description.md <<EOL
# Project Name: Messaging with SQS
## Aim
Decouple application components.

## Building Steps
1. Create SQS queue.
2. Send/receive messages.

## Tools and Prerequisites
- AWS CLI

## Required Services
- SQS
EOL
            ;;
        9)
            cat > description.md <<EOL
# Project Name: File Sharing with EFS
## Aim
Share files across EC2 instances.

## Building Steps
1. Create EFS file system.
2. Mount to EC2 instances.

## Tools and Prerequisites
- AWS CLI
- EC2 instances

## Required Services
- EFS
- EC2
EOL
            ;;
        10)
            cat > description.md <<EOL
# Project Name: Container Orchestration with ECS
## Aim
Manage Docker containers.

## Building Steps
1. Create ECS cluster.
2. Define task definitions.

## Tools and Prerequisites
- AWS CLI
- Docker

## Required Services
- ECS
EOL
            ;;
    esac

    cd ..
done

echo "Set 1 created successfully!"
