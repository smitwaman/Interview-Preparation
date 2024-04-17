
#!/bin/bash

# Create directories and description.txt files for 40 Azure cloud projects
for i in {1..40}; do
    mkdir -p "Azure_Project_$i"
    cd "Azure_Project_$i"

    case $i in
        1)
            cat > description.txt <<EOL
Project Name: Static Website Hosting
Aim: Host a static website on Azure.

Building Steps:
1. Create an Azure Storage Account.
2. Upload website files to the storage account.
3. Configure static website hosting in the storage account.
4. Optionally, use Azure CDN for content delivery.

Tools and Prerequisites:
- Azure CLI
- Website files

Required Services:
- Azure Storage Account
- Azure CDN (optional)
EOL
            ;;
        2)
            cat > description.txt <<EOL
Project Name: Web App Deployment
Aim: Deploy a web application using Azure Web Apps.

Building Steps:
1. Create an Azure Web App.
2. Configure deployment settings.
3. Deploy web application code.

Tools and Prerequisites:
- Azure CLI
- Web application code

Required Services:
- Azure Web Apps
EOL
            ;;
        3)
            cat > description.txt <<EOL
Project Name: Virtual Machines Setup
Aim: Deploy virtual machines on Azure.

Building Steps:
1. Create a Virtual Network.
2. Launch Azure Virtual Machines.
3. Configure security settings.

Tools and Prerequisites:
- Azure CLI
- Virtual Machine setup files

Required Services:
- Azure Virtual Machines
- Virtual Network
EOL
            ;;
        4)
            cat > description.txt <<EOL
Project Name: Database Deployment with Azure SQL Database
Aim: Set up a relational database.

Building Steps:
1. Create an Azure SQL Database.
2. Configure database settings.
3. Connect and manage the database.

Tools and Prerequisites:
- Azure CLI
- Database scripts

Required Services:
- Azure SQL Database
EOL
            ;;
        5)
            cat > description.txt <<EOL
Project Name: Serverless Functions with Azure Functions
Aim: Create serverless functions.

Building Steps:
1. Create an Azure Functions App.
2. Develop and deploy functions.

Tools and Prerequisites:
- Azure CLI
- Function code

Required Services:
- Azure Functions
EOL
            ;;
        6)
            cat > description.txt <<EOL
Project Name: Blob Storage with Azure Blob Storage
Aim: Store and retrieve files.

Building Steps:
1. Create an Azure Storage Account.
2. Set up Blob containers.
3. Upload and manage files.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure Blob Storage
EOL
            ;;
        7)
            cat > description.txt <<EOL
Project Name: Content Delivery with Azure CDN
Aim: Speed up content delivery.

Building Steps:
1. Create an Azure CDN profile.
2. Configure CDN endpoint.
3. Link to content source.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure CDN
EOL
            ;;
        8)
            cat > description.txt <<EOL
Project Name: Messaging with Azure Service Bus
Aim: Decouple application components.

Building Steps:
1. Create an Azure Service Bus namespace.
2. Create queues or topics.
3. Send/receive messages.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure Service Bus
EOL
            ;;
        9)
            cat > description.txt <<EOL
Project Name: File Sharing with Azure Files
Aim: Share file-based data across services.

Building Steps:
1. Create an Azure File Share.
2. Mount to Azure Virtual Machines.

Tools and Prerequisites:
- Azure CLI
- Azure Virtual Machines

Required Services:
- Azure Files
EOL
            ;;
        10)
            cat > description.txt <<EOL
Project Name: Container Orchestration with Azure Kubernetes Service (AKS)
Aim: Deploy and manage Docker containers.

Building Steps:
1. Create an AKS cluster.
2. Deploy applications using YAML manifests.

Tools and Prerequisites:
- Azure CLI
- Docker
- Kubernetes manifests

Required Services:
- Azure Kubernetes Service (AKS)
EOL
            ;;
        11)
            cat > description.txt <<EOL
Project Name: CI/CD with Azure DevOps
Aim: Implement continuous integration and deployment.

Building Steps:
1. Set up Azure DevOps project.
2. Configure pipelines.
3. Build and deploy code.

Tools and Prerequisites:
- Azure CLI
- Azure DevOps account

Required Services:
- Azure DevOps
EOL
            ;;
        12)
            cat > description.txt <<EOL
Project Name: AI Services with Azure Cognitive Services
Aim: Integrate AI capabilities.

Building Steps:
1. Create a Cognitive Services resource.
2. Choose desired services (e.g., Vision, Speech).
3. Integrate with application.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure Cognitive Services
EOL
            ;;
        13)
            cat > description.txt <<EOL
Project Name: Data Warehousing with Azure Synapse Analytics
Aim: Analyze large datasets.

Building Steps:
1. Create an Azure Synapse Analytics workspace.
2. Load and query data.

Tools and Prerequisites:
- Azure CLI
- Data source

Required Services:
- Azure Synapse Analytics
EOL
            ;;
        14)
            cat > description.txt <<EOL
Project Name: Identity and Access Management (IAM) with Azure AD
Aim: Manage user identities and access.

Building Steps:
1. Set up Azure AD.
2. Configure users, groups, and roles.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure Active Directory (AD)
EOL
            ;;
        15)
            cat > description.txt <<EOL
Project Name: Networking with Azure Virtual Network
Aim: Connect and isolate resources.

Building Steps:
1. Create an Azure Virtual Network.
2. Define subnets, NSGs, and routing.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure Virtual Network
EOL
            ;;
        16)
            cat > description.txt <<EOL
Project Name: Monitoring with Azure Monitor
Aim: Monitor Azure resources and applications.

Building Steps:
1. Set up Azure Monitor.
2. Create and configure monitoring alerts.
3. Review metrics and logs.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure Monitor
EOL
            ;;
        17)
            cat > description.txt <<EOL
Project Name: Data Migration with Azure Data Migration Service
Aim: Migrate databases to Azure.

Building Steps:
1. Set up Azure Data Migration Service.
2. Configure source and target databases.
3. Perform migration.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure Data Migration Service
EOL
            ;;
        18)
            cat > description.txt <<EOL
Project Name: Content Management with Azure Content Delivery Network (CDN)
Aim: Manage and deliver content efficiently.

Building Steps:
1. Create Azure CDN profile.
2. Configure CDN settings.
3. Link to content source.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure CDN
EOL
            ;;
        19)
            cat > description.txt <<EOL
Project Name: Security with Azure Security Center
Aim: Enhance cloud security posture.

Building Steps:
1. Set up Azure Security Center.
2. Configure security policies.
3. Monitor security alerts.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure Security Center
EOL
            ;;
        20)
            cat > description.txt <<EOL
Project Name: AI Infrastructure with Azure Machine Learning
Aim: Build and deploy machine learning models.

Building Steps:
1. Set up Azure Machine Learning workspace.
2. Develop and train machine learning models.
3. Deploy models as web services.

Tools and Prerequisites:
- Azure CLI
- Machine learning data

Required Services:
- Azure Machine Learning
EOL
            ;;
        21)
            cat > description.txt <<EOL
Project Name: IoT Hub for IoT Solutions
Aim: Manage and monitor IoT devices.

Building Steps:
1. Create an Azure IoT Hub.
2. Register and manage devices.
3. Send and receive messages.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure IoT Hub
EOL
            ;;
        22)
            cat > description.txt <<EOL
Project Name: Big Data Analytics with Azure HDInsight
Aim: Analyze large datasets using big data technologies.

Building Steps:
1. Create Azure HDInsight cluster.
2. Deploy and manage big data applications.
3. Run analytics jobs.

Tools and Prerequisites:
- Azure CLI
- Big data tools

Required Services:
- Azure HDInsight
EOL
            ;;
        23)
            cat > description.txt <<EOL
Project Name: Event-Driven Architecture with Azure Event Grid
Aim: React to events from Azure services.

Building Steps:
1. Create Azure Event Grid topic.
2. Subscribe to events.
3. Handle events in applications.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure Event Grid
EOL
            ;;
        24)
            cat > description.txt <<EOL
Project Name: Serverless Integration with Logic Apps
Aim: Integrate services and automate workflows.

Building Steps:
1. Create Azure Logic App.
2. Define triggers and actions.
3. Test and monitor the workflow.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure Logic Apps
EOL
            ;;
        25)
            cat > description.txt <<EOL
Project Name: Data Visualization with Power BI
Aim: Create interactive dashboards and reports.

Building Steps:
1. Set up Power BI workspace.
2. Connect to data sources.
3. Design and publish reports.

Tools and Prerequisites:
- Power BI Desktop
- Azure services

Required Services:
- Power BI
EOL
            ;;
        26)
            cat > description.txt <<EOL
Project Name: API Management with Azure API Management
Aim: Publish, secure, and manage APIs.

Building Steps:
1. Create Azure API Management instance.
2. Define APIs, products, and policies.
3. Test and deploy APIs.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure API Management
EOL
            ;;
        27)
            cat > description.txt <<EOL
Project Name: Database Scalability with Cosmos DB
Aim: Achieve global distribution and high availability.

Building Steps:
1. Create Azure Cosmos DB account.
2. Choose API (e.g., SQL, MongoDB).
3. Configure and manage data.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure Cosmos DB
EOL
            ;;
        28)
            cat > description.txt <<EOL
Project Name: Data Streaming with Azure Stream Analytics
Aim: Process and analyze real-time data streams.

Building Steps:
1. Create Azure Stream Analytics job.
2. Define input, query, and output.
3. Run and monitor the job.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure Stream Analytics
EOL
            ;;
        29)
            cat > description.txt <<EOL
Project Name: Identity Protection with Azure Active Directory Identity Protection
Aim: Detect and respond to identity risks.

Building Steps:
1. Set up Azure AD Identity Protection.
2. Configure risk policies.
3. Monitor and remediate risks.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure Active Directory (AD) Identity Protection
EOL
            ;;
        30)
            cat > description.txt <<EOL
Project Name: Hybrid Cloud with Azure Arc
Aim: Manage on-premises and cloud resources from Azure.

Building Steps:
1. Set up Azure Arc.
2. Connect and manage hybrid resources.
3. Apply Azure management capabilities.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure Arc
EOL
            ;;
        31)
            cat > description.txt <<EOL
Project Name: Backup and Recovery with Azure Backup
Aim: Protect data and applications.

Building Steps:
1. Set up Azure Backup vault.
2. Configure backup policies.
3. Restore data when needed.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure Backup
EOL
            ;;
        32)
            cat > description.txt <<EOL
Project Name: CDN with Azure Front Door
Aim: Accelerate global application delivery.

Building Steps:
1. Create Azure Front Door instance.
2. Configure routing and load balancing.
3. Optimize content delivery.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure Front Door
EOL
            ;;
        33)
            cat > description.txt <<EOL
Project Name: Virtual Desktop with Azure Virtual Desktop
Aim: Deliver virtual apps and desktops.

Building Steps:
1. Set up Azure Virtual Desktop workspace.
2. Deploy virtual machines.
3. Publish applications.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure Virtual Desktop
EOL
            ;;
        34)
            cat > description.txt <<EOL
Project Name: API Gateway with Azure API Gateway
Aim: Build, secure, and manage APIs.


Building Steps:
1. Create Azure API Gateway instance.
2. Define APIs, operations, and policies.
3. Test and deploy APIs.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure API Gateway
EOL
            ;;
        35)
            cat > description.txt <<EOL
Project Name: Data Lake with Azure Data Lake Storage
Aim: Store and analyze big data.

Building Steps:
1. Create Azure Data Lake Storage account.
2. Configure file systems and directories.
3. Upload and process data.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure Data Lake Storage
EOL
            ;;
        36)
            cat > description.txt <<EOL
Project Name: Event Hubs for Real-time Data Streaming
Aim: Ingest and process large-scale event data.

Building Steps:
1. Create Azure Event Hubs namespace.
2. Define event hubs and partitions.
3. Send and receive events.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure Event Hubs
EOL
            ;;
        37)
            cat > description.txt <<EOL
Project Name: Data Factory for ETL Processes
Aim: Extract, transform, and load data.

Building Steps:
1. Set up Azure Data Factory instance.
2. Define data sources, transformations, and sinks.
3. Execute and monitor pipelines.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure Data Factory
EOL
            ;;
        38)
            cat > description.txt <<EOL
Project Name: Identity Management with Azure AD B2C
Aim: Provide identity solutions for customer-facing apps.

Building Steps:
1. Set up Azure AD B2C tenant.
2. Configure user flows and policies.
3. Integrate with applications.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure AD B2C
EOL
            ;;
        39)
            cat > description.txt <<EOL
Project Name: Network Security with Azure Firewall
Aim: Protect network resources.

Building Steps:
1. Create Azure Firewall instance.
2. Define network rules and policies.
3. Monitor and manage firewall.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure Firewall
EOL
            ;;
        40)
            cat > description.txt <<EOL
Project Name: Azure Functions for Event-Driven Architectures
Aim: Execute serverless functions in response to events.

Building Steps:
1. Set up Azure Functions App.
2. Develop functions triggered by events.
3. Deploy and monitor functions.

Tools and Prerequisites:
- Azure CLI

Required Services:
- Azure Functions
EOL
            ;;
    esac

    cd ..
done

echo "Directory structure and description.txt files created successfully!"
