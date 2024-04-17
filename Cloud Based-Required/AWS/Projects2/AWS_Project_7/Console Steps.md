### Project: Content Delivery Network with CloudFront

#### Aim
Speed up content delivery using Amazon CloudFront.

#### Tools and Prerequisites
- AWS Account
- AWS CLI installed and configured
- S3 bucket with content to distribute

#### Required Services
- Amazon CloudFront
- Amazon S3

---

### Building Steps

#### Step 1: Create CloudFront Distribution
1. **Log in** to the AWS Management Console.
2. Navigate to **Services** and select **CloudFront**.
3. Click **Create Distribution**.
4. **Select Distribution Type**:
   - **Web**: Choose this for websites and web applications.
5. **Create Distribution**:
   - **Origin Domain Name**: Select your S3 bucket from the dropdown.
   - **Origin Path**: Leave it empty.
   - **Origin ID**: Auto-populated, or customize if needed.
6. **Configure Origin Settings**:
   - **Restrict Bucket Access**: Choose **Yes** to create an Origin Access Identity (OAI).
   - **Grant Read Permissions on Bucket**: Choose **Yes, Update Bucket Policy**.
7. **Default Cache Behavior Settings**:
   - **Viewer Protocol Policy**: Choose **Redirect HTTP to HTTPS**.
   - **Allowed HTTP Methods**: Choose **GET, HEAD**.
8. **Distribution Settings**:
   - **Price Class**: Choose the desired price class.
   - **Alternate Domain Names (CNAMEs)**: Enter any custom domain names or leave blank.
   - **SSL Certificate**: Choose **Default CloudFront Certificate** or select a custom certificate.
   - **Default Root Object**: Enter `index.html` or leave blank.
9. Click **Create Distribution**.

#### Step 2: Configure Origin
1. After creating the CloudFront distribution, click on the **ID** of your distribution to view details.
2. **Origin Settings**:
   - Verify the **Origin Domain Name** is pointing to your S3 bucket.
   - **Origin Path**: Ensure it's empty.
   - **Origin ID**: Check or modify if needed.
3. **Origin Access Identity (OAI)**:
   - Verify the OAI is created and associated with your S3 bucket.
4. **Behavior Settings**:
   - Review the cache settings and adjust as needed.
5. **SSL Certificate**:
   - Ensure the SSL certificate is correctly configured.
6. **General**:
   - Verify other settings and adjust as per your requirements.

---

By following these steps, you've successfully set up a Content Delivery Network using Amazon CloudFront to speed up content delivery from your Amazon S3 bucket.
