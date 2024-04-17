Terraform script based on your detailed steps to set up Database Migration with DMS:

```hcl
provider "aws" {
  region = "us-east-1" # Choose your desired AWS region
}

# Create DMS Replication Instance
resource "aws_dms_replication_instance" "example_replication_instance" {
  replication_instance_id = "example-replication-instance"
  allocated_storage       = 50
  engine_version          = "3.4.3"
  replication_instance_class = "dms.t2.micro"
}

# Create DMS Endpoint for Source Database
resource "aws_dms_endpoint" "source_endpoint" {
  endpoint_id            = "source-endpoint"
  endpoint_type          = "source"
  engine_name            = "mysql"
  username               = "source_username"
  password               = "source_password"
  server_name            = "source_server_name"
  port                   = 3306
}

# Create DMS Endpoint for Target Database
resource "aws_dms_endpoint" "target_endpoint" {
  endpoint_id            = "target-endpoint"
  endpoint_type          = "target"
  engine_name            = "aurora"
  username               = "target_username"
  password               = "target_password"
  server_name            = "target_server_name"
  port                   = 3306
}

# Create DMS Replication Task
resource "aws_dms_replication_task" "example_replication_task" {
  migration_type                = "full-load"
  replication_instance_arn     = aws_dms_replication_instance.example_replication_instance.arn
  source_endpoint_arn          = aws_dms_endpoint.source_endpoint.arn
  target_endpoint_arn          = aws_dms_endpoint.target_endpoint.arn
  table_mappings               = <<EOF
{
  "rules": [
    {
      "rule-type": "selection",
      "rule-id": "1",
      "rule-name": "1",
      "object-locator": {
        "schema-name": "source_schema",
        "table-name": "%"
      },
      "rule-action": "include"
    }
  ]
}
EOF
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

Replace the placeholder values (`source_username`, `source_password`, `source_server_name`, `target_username`, `target_password`, `target_server_name`, `source_schema`) with your actual database connection details and schema name.

After executing these commands, Terraform will:

1. Create a DMS replication instance.
2. Create DMS source and target endpoints.
3. Create a DMS replication task to migrate data from the source to the target database
