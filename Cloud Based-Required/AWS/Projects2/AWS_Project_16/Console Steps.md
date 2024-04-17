### Project: Monitoring with CloudWatch

#### Aim
Monitor AWS resources using CloudWatch.

#### Tools and Prerequisites
- AWS CLI

#### Required Services
- CloudWatch

---

### Building Steps

#### Step 1: Create CloudWatch Alarms
1. **Log in** to the AWS Management Console.
2. Navigate to **Services** and select **CloudWatch**.
3. In the CloudWatch dashboard, click **Alarms** in the left sidebar.
4. Click **Create Alarm**.
5. **Select metric**:
   - Choose a metric to monitor (e.g., EC2 CPUUtilization).
6. **Define alarm**:
   - **Name**: Enter a name for the alarm (e.g., `HighCPUUsageAlarm`).
   - **Description**: Enter a description.
   - **Threshold**: Set the threshold for the metric (e.g., `>= 80`).
   - **Period**: Choose a period (e.g., `5 Minutes`).
   - **Statistic**: Choose a statistic (e.g., `Average`).
   - **Actions**: Select an SNS topic or create a new one to receive notifications.
7. Click **Next**.
8. **Configure Actions**:
   - Add actions to perform when the alarm state changes.
9. Click **Next**.
10. **Review and Create**:
    - Review the alarm details.
11. Click **Create Alarm**.

#### Step 2: Set Up Dashboards
1. **Dashboards**:
   - Click **Dashboards** in the CloudWatch dashboard.
   - Click **Create dashboard**.
2. **Name and Description**:
   - **Dashboard name**: Enter a name for the dashboard (e.g., `MyDashboard`).
   - **Description**: Enter a description.
3. **Add to dashboard**:
   - Click **Add widget**.
   - Choose the type of widget (e.g., Line, Stacked Area).
   - Configure the widget settings (e.g., Metric, Statistic, Period).
   - Add more widgets as needed.
4. Click **Create widget**.
5. Click **Save dashboard**.

---

By following these detailed steps in the AWS Management Console, you've successfully created CloudWatch alarms to monitor AWS resources and set up a dashboard to visualize the metrics
