#!/bin/bash

# Create directories and description files for projects 11-20
for i in {11..20}; do
    mkdir -p "AWS_Project_$i"
    cd "AWS_Project_$i"

    case $i in
        11)
            cat > description.md <<EOL
# Project Name: Serverless Functions with Step Functions
## Aim
Create serverless workflows.

## Building Steps
1. Create Step Functions state machine.
2. Define workflow steps.

## Tools and Prerequisites
- AWS CLI
- Lambda functions

## Required Services
- Step Functions
- Lambda
EOL
            ;;
        12)
            cat > description.md <<EOL
# Project Name: Data Streaming with Kinesis
## Aim
Process real-time data.

## Building Steps
1. Create Kinesis data stream.
2. Produce/consume data.

## Tools and Prerequisites
- AWS CLI

## Required Services
- Kinesis
EOL
            ;;
        13)
            cat > description.md <<EOL
# Project Name: Machine Learning with SageMaker
## Aim
Build ML models.

## Building Steps
1. Create SageMaker notebook instance.
2. Develop and train model.

## Tools and Prerequisites
- AWS CLI
- ML data

## Required Services
- SageMaker
- S3
EOL
            ;;
        14)
            cat > description.md <<EOL
# Project Name: Identity and Access Management (IAM)
## Aim
Manage AWS resource access.

## Building Steps
1. Create IAM users/groups/roles.
2. Assign policies.

## Tools and Prerequisites
- AWS CLI

## Required Services
- IAM
EOL
            ;;
        15)
            cat > description.md <<EOL
# Project Name: Network Security with VPC and Security Groups
## Aim
Secure AWS resources.

## Building Steps
1. Create VPC.
2. Configure subnets, route tables.
3. Set up Security Groups.

## Tools and Prerequisites
- AWS CLI

## Required Services
- VPC
- Security Groups
EOL
            ;;
        16)
            cat > description.md <<EOL
# Project Name: Monitoring with CloudWatch
## Aim
Monitor AWS resources.

## Building Steps
1. Create CloudWatch alarms.
2. Set up dashboards.

## Tools and Prerequisites
- AWS CLI

## Required Services
- CloudWatch
EOL
            ;;
        17)
            cat > description.md <<EOL
# Project Name: Database Migration with DMS
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
        18)
            cat > description.md <<EOL
# Project Name: Content Management with CMS
## Aim
Manage content with AWS services.

## Building Steps
1. Choose a CMS.
2. Integrate with AWS services.

## Tools and Prerequisites
- AWS CLI

## Required Services
- S3
- Lambda
EOL
            ;;
        19)
            cat > description.md <<EOL
# Project Name: Event-Driven Architecture with SNS
## Aim
Handle event notifications.

## Building Steps
1. Create SNS topic.
2. Subscribe to topic.

## Tools and Prerequisites
- AWS CLI

## Required Services
- SNS
EOL
            ;;
        20)
            cat > description.md <<EOL
# Project Name: Serverless Websites with Amplify
## Aim
Build serverless web applications.

## Building Steps
1. Set up Amplify project.
2. Develop frontend/backend.

## Tools and Prerequisites
- AWS CLI
- Amplify CLI

## Required Services
- Amplify
- S3
EOL
            ;;
    esac

    cd ..
done

echo "Set 2 created successfully!"
