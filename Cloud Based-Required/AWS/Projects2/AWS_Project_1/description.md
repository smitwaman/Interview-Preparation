Host a static website on AWS using the AWS Management Console:

### Tools and Prerequisites
- AWS Account
- AWS CLI (Optional)
- Website files (HTML, CSS, JavaScript, etc.)

### Step 1: Create an S3 Bucket
1. **Log in** to the AWS Management Console.
2. Navigate to **Services** and select **S3** under the Storage category.
3. Click **Create Bucket**.
4. Enter a **unique bucket name** and select a region.
5. Click **Next** through the remaining steps, leaving the default settings, and then click **Create bucket**.

### Step 2: Upload Website Files to the Bucket
1. In the S3 dashboard, click on the **name of the bucket** you just created.
2. Click **Upload**.
3. Click **Add files** and select the website files from your computer.
4. Click **Next** and then **Upload**.

### Step 3: Enable Static Website Hosting
1. In the bucket dashboard, click on the **Properties** tab.
2. Scroll down to the **Static website hosting** section and click **Edit**.
3. Select **Enable**.
4. For **Index document**, enter `index.html` (or the name of your homepage).
5. Click **Save changes**.

### Step 4: Configure Bucket Policy for Public Access
1. In the bucket dashboard, click on the **Permissions** tab.
2. Click **Bucket Policy**.
3. Paste the following policy, replacing `your-bucket-name` with your actual bucket name:
   ```json
   {
     "Version": "2012-10-17",
     "Statement": [
       {
         "Sid": "PublicReadGetObject",
         "Effect": "Allow",
         "Principal": "*",
         "Action": "s3:GetObject",
         "Resource": "arn:aws:s3:::your-bucket-name/*"
       }
     ]
   }
   ```
4. Click **Save**.

### Step 5: Test the Website
1. Go back to the **Static website hosting** section in the bucket properties.
2. You'll find an **Endpoint URL**. Copy and paste this URL into a web browser to test your website.

Your static website should now be hosted on AWS S3 and accessible via the provided endpoint URL.
