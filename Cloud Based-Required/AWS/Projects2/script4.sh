#!/bin/bash

# Create directories and description files for projects 31-40
for i in {31..40}; do
    mkdir -p "AWS_Project_$i"
    cd "AWS_Project_$i"

    case $i in
        31)
            cat > description.md <<EOL
# Project Name: Infrastructure as Code with CloudFormation
## Aim
Automate infrastructure provisioning.

## Building Steps
1. Write CloudFormation template.
2. Deploy stack.

## Tools and Prerequisites
- AWS CLI
- CloudFormation template

## Required Services
- CloudFormation
EOL
            ;;
        32)
            cat > description.md <<EOL
# Project Name: Workflow Orchestration with Step Functions
## Aim
Coordinate AWS services into workflows.

## Building Steps
1. Create Step Functions state machine.
2. Define workflow steps.

## Tools and Prerequisites
- AWS CLI

## Required Services
- Step Functions
EOL
            ;;
        33)
            cat > description.md <<EOL
# Project Name: API Management with API Gateway
## Aim
Manage and secure APIs.

## Building Steps
1. Create API Gateway.
2. Define resources and methods.

## Tools and Prerequisites
- AWS CLI

## Required Services
- API Gateway
EOL
            ;;
        34)
            cat > description.md <<EOL
# Project Name: Orchestration with AWS Batch
## Aim
Run batch jobs.

## Building Steps
1. Set up AWS Batch.
2. Define job definitions.
3. Submit jobs.

## Tools and Prerequisites
- AWS CLI

## Required Services
- Batch
EOL
            ;;
        35)
            cat > description.md <<EOL
# Project Name: Content Delivery with CloudFront
## Aim
Speed up content delivery.

## Building Steps
1. Create CloudFront distribution.
2. Configure origin.

## Tools and Prerequisites
- AWS CLI

## Required Services
- CloudFront
EOL
            ;;
        36)
            cat > description.md <<EOL
# Project Name: CI/CD with CodePipeline
## Aim
Automate software release process.

## Building Steps
1. Set up CodePipeline.
2. Define stages and actions.

## Tools and Prerequisites
- AWS CLI

## Required Services
- CodePipeline
EOL
            ;;
        37)
            cat > description.md <<EOL
# Project Name: Data Migration with DMS
## Aim
Migrate databases to AWS.

## Building Steps
1. Set up DMS.
2. Configure source and target databases.

## Tools and Prerequisites
- AWS CLI

## Required Services
- DMS
- RDS
EOL
            ;;
        38)
            cat > description.md <<EOL
# Project Name: Email Sending with SES
## Aim
Send transactional emails.

## Building Steps
1. Set up SES.
2. Verify domain/email.
3. Send email.

## Tools and Prerequisites
- AWS CLI

## Required Services
- SES
EOL
            ;;
        39)
            cat > description.md <<EOL
# Project Name: Data Analytics with Athena
## Aim
Query S3 data.

## Building Steps
1. Set up Athena.
2. Create tables.
3. Run queries.

## Tools and Prerequisites
- AWS CLI

## Required Services
- Athena
- S3
EOL
            ;;
        40)
            cat > description.md <<EOL
# Project Name: Serverless Backend with Amplify
## Aim
Build serverless backends.

## Building Steps
1. Set up Amplify backend.
2. Define functions and APIs.

## Tools and Prerequisites
- AWS CLI
- Amplify CLI

## Required Services
- Amplify
- Lambda
EOL
            ;;
    esac

    cd ..
done

echo "Set 4 created successfully!"
