Terraform script to create CloudWatch alarms and a CloudWatch dashboard.

### Prerequisites
- Install Terraform
- AWS CLI configured with appropriate credentials

### Terraform Configuration Files

#### `main.tf`
```hcl
provider "aws" {
  region = "us-east-1" # Choose your desired AWS region
}

# Create CloudWatch Metric Alarm
resource "aws_cloudwatch_metric_alarm" "high_cpu_usage_alarm" {
  alarm_name          = "HighCPUUsageAlarm"
  comparison_operator = "GreaterThanOrEqualToThreshold"
  evaluation_periods  = "1"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "300"
  statistic           = "Average"
  threshold           = "80"
  alarm_description   = "Alarm when CPU utilization is >= 80%"
  alarm_actions       = [aws_sns_topic.cloudwatch_alerts.arn]

  dimensions = {
    InstanceId = "YOUR_INSTANCE_ID" # Replace with your EC2 instance ID
  }
}

# Create SNS Topic for CloudWatch Alerts
resource "aws_sns_topic" "cloudwatch_alerts" {
  name = "CloudWatchAlertsTopic"
}

# Create CloudWatch Dashboard
resource "aws_cloudwatch_dashboard" "my_dashboard" {
  dashboard_name = "MyDashboard"
  dashboard_body = <<EOF
{
  "widgets": [
    {
      "type": "metric",
      "x": 0,
      "y": 0,
      "width": 12,
      "height": 6,
      "properties": {
        "view": "timeSeries",
        "metrics": [
          [ "AWS/EC2", "CPUUtilization", "InstanceId", "YOUR_INSTANCE_ID" ]
        ],
        "region": "us-east-1",
        "stat": "Average",
        "period": 300
      }
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

After executing these commands in the given sequence, Terraform will:

1. Create a CloudWatch metric alarm named `HighCPUUsageAlarm` to monitor CPU utilization of an EC2 instance.
2. Create an SNS topic named `CloudWatchAlertsTopic` to handle CloudWatch alarm notifications.
3. Create a CloudWatch dashboard named `MyDashboard` with a metric widget displaying CPU utilization.

Note: Replace `YOUR_INSTANCE_ID` with your actual EC2 instance ID in the script
