Creating a serverless API using AWS Lambda and API Gateway through the AWS Management Console:

---

### Project: Create a Serverless API

#### Aim
Set up a serverless API using AWS Lambda and API Gateway.

#### Prerequisites
- AWS Account
- Lambda function code packaged as `lambda_function_payload.zip`

#### Tools
- AWS Management Console
- Web Browser or Postman for testing

---

### Building Steps

#### Step 1: Write Lambda Function
1. **Prepare Lambda Function Package**: 
   - Write your Lambda function code and include necessary dependencies.
   - Zip the code and dependencies into a package (e.g., `lambda_function_payload.zip`).

#### Step 2: Create Lambda Function
1. **Log in** to the AWS Management Console.
2. Navigate to **Services** and select **Lambda**.
3. Click **Create function**.
4. **Choose Author from scratch**.
5. **Function name**: Enter `MyApiLambda`.
6. **Runtime**: Choose `Node.js 14.x`.
7. **Role**: Choose **Create a new role with basic Lambda permissions**.
8. Click **Create function**.
9. **Upload Lambda Package**:
   - Under **Function code**, choose **Upload a .zip file**.
   - Upload `lambda_function_payload.zip`.
   - **Handler**: Enter `index.handler`.
10. Click **Save**.

#### Step 3: Create API Gateway
1. Navigate to **Services** and select **API Gateway**.
2. Click **Create API**.
3. **Select Protocol**:
   - **REST API**: Select.
4. **Configure API**:
   - **API name**: Enter `MyApiGateway`.
   - **Endpoint Type**: Choose **Regional**.
5. Click **Create API**.

#### Step 4: Configure Endpoints
1. **Create Resource**:
   - Select **Resources** under your API.
   - Click **Create Resource**.
   - **Resource Name**: Enter `myendpoint`.
   - **Resource Path**: Enter `myendpoint`.
   - **Resource Type**: Select **Resource**.
   - Click **Create Resource**.
2. **Create Method**:
   - With `myendpoint` selected, click **Create Method**.
   - **HTTP method**: Choose **GET**.
   - Click the checkmark to save.
3. **Configure Method**:
   - Choose **Lambda Function** for integration.
   - **Lambda Region**: Choose your Lambda function's region.
   - **Lambda Function**: Enter `MyApiLambda`.
   - Click **Save**.
4. **Deploy API**:
   - Select **Actions** -> **Deploy API**.
   - **Deployment stage**: Choose **[New Stage]** and enter `prod`.
   - Click **Deploy**.

#### Step 5: Test API
1. Note the **Invoke URL** from the **Stages** tab in API Gateway.
2. Open a web browser or use Postman.
3. Navigate to `https://<Invoke URL>/prod/myendpoint` to test your serverless API.

---

Now, you have successfully set up a serverless API using AWS Lambda and API Gateway. Remember to replace placeholders and adjust configurations as per your specific requirements.
