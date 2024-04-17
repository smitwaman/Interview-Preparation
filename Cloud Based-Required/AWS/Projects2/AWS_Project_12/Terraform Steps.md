Terraform script to create a Kinesis data stream.

### Prerequisites
- Install Terraform
- AWS CLI configured with appropriate credentials

### Terraform Configuration Files

#### `main.tf`
```hcl
provider "aws" {
  region = "us-east-1" # Choose your desired AWS region
}

# Create Kinesis Data Stream
resource "aws_kinesis_stream" "my_data_stream" {
  name             = "MyDataStream"
  shard_count      = 1
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

1. Create a Kinesis data stream named `MyDataStream` with one shard.

### Producing and Consuming Data
For producing and consuming data, Terraform does not directly handle real-time data operations. You can use AWS CLI or SDKs to interact with the Kinesis data stream to produce and consume data as shown in the AWS console steps.

#### Example AWS CLI Commands
##### Produce Data
```bash
aws kinesis put-record --stream-name MyDataStream --partition-key partitionKey --data '{"message": "Hello Kinesis"}'
```

##### Consume Data
```bash
aws kinesis get-shard-iterator --stream-name MyDataStream --shard-id shardId --shard-iterator-type TRIM_HORIZON
aws kinesis get-records --shard-iterator yourShardIterator
```

Remember to replace placeholders like `partitionKey`, `shardId`, and `yourShardIterator` with actual values.

You can execute these commands in your terminal to produce and consume data from the Kinesis data stream created by Terraform
