### Project: Event-Driven Architecture with SNS

#### Aim
Implement an event-driven architecture using Amazon Simple Notification Service (SNS).

#### Tools and Prerequisites
- AWS CLI

#### Required Services
- SNS

---

### Building Steps

#### Step 1: Create SNS Topic
1. **Log in** to the AWS Management Console.
2. Navigate to **Services** and select **SNS (Simple Notification Service)**.
3. In the SNS dashboard, click **Create topic**.
4. Enter a name for the topic (e.g., `MySNSTopic`).
5. Click **Create topic**.

#### Step 2: Create Subscribers
1. **Email Subscription**:
   - Select the newly created topic (`MySNSTopic`).
   - Click **Create subscription**.
   - Choose **Email** from the Protocol dropdown.
   - Enter your email address.
   - Click **Create subscription**.
   - Confirm the subscription by clicking the link sent to your email.
  
2. **Lambda Subscription**:
   - Navigate to **Services** and select **Lambda**.
   - Click **Create function**.
   - Enter a name for the function (e.g., `SNSEventLambda`).
   - Select a runtime (e.g., Node.js, Python).
   - Under **Permissions**, choose **Create a new role with basic Lambda permissions**.
   - Click **Create function**.
   - In the Lambda function configuration, scroll down to **Designer**.
   - Click on the **Add trigger** button.
   - Select **SNS** from the dropdown.
   - Choose the `MySNSTopic` from the **SNS topic** dropdown.
   - Click **Add**.

#### Step 3: Publish Messages to SNS Topic
1. Go back to the SNS dashboard.
2. Select the `MySNSTopic`.
3. Click **Publish message**.
4. Enter a subject and message.
5. Click **Publish message**.

---

By following these detailed steps in the AWS Management Console, you've successfully set up an event-driven architecture using Amazon SNS. Messages published to the SNS topic will trigger both the email subscriber and the Lambda function, allowing for event-driven processing of messages
