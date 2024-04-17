### Project: Object Storage with S3

#### Aim
Store and retrieve files using Amazon S3.

#### Tools and Prerequisites
- AWS Account
- AWS CLI installed and configured

#### Required Services
- Amazon S3

---

### Building Steps

#### Step 1: Create S3 Bucket
1. **Log in** to the AWS Management Console.
2. Navigate to **Services** and select **S3**.
3. Click **Create bucket**.
4. **Bucket Name and Region**:
   - **Bucket name**: Enter a unique name for your bucket.
   - **Region**: Choose a region closest to you or your users.
5. **Configure Options**:
   - Keep the default settings or configure as per your requirements.
6. **Set Permissions**:
   - Uncheck **Block all public access** if you want to make the bucket publicly accessible (Caution: This makes all objects public).
   - Acknowledge the warning and click **Next**.
7. **Review**:
   - Review your settings and click **Create bucket**.

#### Step 2: Upload Files to S3 Bucket
1. **Select Bucket**:
   - From the S3 dashboard, click on the bucket you just created.
2. **Upload Files**:
   - Click **Upload**.
   - **Add files**: Select files from your computer to upload.
   - **Set permissions**: Choose permissions for the uploaded files (e.g., Grant public read access).
   - Click **Upload**.
3. **Upload Complete**:
   - Once the upload is complete, click **Close**.

---

By following these steps, you've successfully set up object storage using Amazon S3 and uploaded files to your S3 bucket. Remember to manage bucket permissions and configurations carefully to ensure the security and accessibility of your stored files.
