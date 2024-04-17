#!/bin/bash

# Create directories and description files for projects 21-30
for i in {21..30}; do
    mkdir -p "AWS_Project_$i"
    cd "AWS_Project_$i"

    case $i in
        21)
            cat > description.md <<EOL
# Project Name: IoT with AWS IoT Core
## Aim
Connect and manage IoT devices.

## Building Steps
1. Create IoT Core.
2. Register devices.
3. Publish/subscribe to topics.

## Tools and Prerequisites
- AWS CLI

## Required Services
- IoT Core
EOL
            ;;
        22)
            cat > description.md <<EOL
# Project Name: Data Warehousing with Redshift
## Aim
Store and analyze large datasets.

## Building Steps
1. Create Redshift cluster.
2. Load data.
3. Query data.

## Tools and Prerequisites
- AWS CLI

## Required Services
- Redshift
EOL
            ;;
        23)
            cat > description.md <<EOL
# Project Name: Mobile Backend with Mobile Hub
## Aim
Develop mobile apps.

## Building Steps
1. Set up Mobile Hub.
2. Configure services.

## Tools and Prerequisites
- AWS CLI

## Required Services
- Mobile Hub
EOL
            ;;
        24)
            cat > description.md <<EOL
# Project Name: Serverless Data Processing with Glue
## Aim
ETL jobs for data transformation.

## Building Steps
1. Create Glue crawler.
2. Run ETL job.

## Tools and Prerequisites
- AWS CLI
- Data source

## Required Services
- Glue
- S3
- RDS
EOL
            ;;
        25)
            cat > description.md <<EOL
# Project Name: Real-time Analytics with Kinesis Analytics
## Aim
Analyze streaming data.

## Building Steps
1. Create Kinesis stream.
2. Set up Kinesis Analytics.

## Tools and Prerequisites
- AWS CLI

## Required Services
- Kinesis
- Kinesis Analytics
EOL
            ;;
        26)
            cat > description.md <<EOL
# Project Name: AI Services with Lex
## Aim
Build conversational interfaces.

## Building Steps
1. Create Lex bot.
2. Configure intents.
3. Test the bot.

## Tools and Prerequisites
- AWS CLI

## Required Services
- Lex
EOL
            ;;
        27)
            cat > description.md <<EOL
# Project Name: Batch Processing with Batch
## Aim
Run batch jobs.

## Building Steps
1. Set up Batch.
2. Create job definitions.
3. Submit jobs.

## Tools and Prerequisites
- AWS CLI

## Required Services
- Batch
EOL
            ;;
        28)
            cat > description.md <<EOL
# Project Name: Game Development with GameLift
## Aim
Host multiplayer game sessions.

## Building Steps
1. Set up GameLift.
2. Deploy game server.

## Tools and Prerequisites
- AWS CLI

## Required Services
- GameLift
EOL
            ;;
        29)
            cat > description.md <<EOL
# Project Name: Data Lakes with Lake Formation
## Aim
Manage data lakes.

## Building Steps
1. Set up Lake Formation.
2. Grant permissions.
3. Register data sources.

## Tools and Prerequisites
- AWS CLI

## Required Services
- Lake Formation
- S3
EOL
            ;;
        30)
            cat > description.md <<EOL
# Project Name: Data Encryption with KMS
## Aim
Secure data at rest and in transit.

## Building Steps
1. Create KMS key.
2. Encrypt/decrypt data.

## Tools and Prerequisites
- AWS CLI

## Required Services
- KMS
EOL
            ;;
    esac

    cd ..
done

echo "Set 3 created successfully!"
