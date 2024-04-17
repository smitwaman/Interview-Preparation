### Project: Messaging with SQS

#### Aim
Decouple application components using Amazon Simple Queue Service (SQS).

#### Tools and Prerequisites
- AWS Account
- AWS CLI installed and configured

#### Required Services
- Amazon SQS

---

### Building Steps

#### Step 1: Create SQS Queue
1. **Log in** to the AWS Management Console.
2. Navigate to **Services** and select **SQS**.
3. Click **Create New Queue**.
4. **Queue Name**:
   - Enter a unique name for your queue (e.g., `MyQueue`).
5. **Type**:
   - Choose **Standard Queue** (or FIFO if required).
6. **Configure Queue**:
   - Leave other settings as default or configure as per your requirements.
7. Click **Quick-Create Queue**.

#### Step 2: Send/Receive Messages
1. **Send Message**:
   - Select the queue you just created from the SQS dashboard.
   - Click **Send and receive messages** -> **Send a message**.
   - Enter a message body (e.g., `Hello, SQS!`).
   - Click **Send Message**.
2. **Receive Message**:
   - After sending the message, click **Send and receive messages** -> **Start Polling for Messages**.
   - The message you sent should appear in the **Messages Available** section.
   - Select the message, and its details will appear below.
   - Click **Delete Message** to remove it from the queue.

---

By following these steps in the AWS Management Console, you've successfully created an SQS queue and sent/received messages. This helps in decoupling application components and ensuring reliable message delivery between different parts of your application
