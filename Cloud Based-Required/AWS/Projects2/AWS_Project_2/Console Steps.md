# Project Name: Dynamic Website with EC2
# Aim
Deploy a dynamic website using EC2.

Certainly! Here's a detailed guide to deploy a dynamic website using EC2 on AWS through the AWS Management Console:

# Tools and Prerequisites
- AWS Account
- AWS CLI (Optional)
- Web server setup files (e.g., web application code, database setup, etc.)

# Step 1: Launch EC2 Instance
1. **Log in** to the AWS Management Console.
2. Navigate to **Services** and select **EC2** under the Compute category.
3. Click **Launch Instance**.
4. Choose an **Amazon Machine Image (AMI)**. For example, select **Amazon Linux 2 AMI**.
5. Choose an **Instance Type**. For a simple website, **t2.micro** is sufficient and eligible for the AWS Free Tier.
6. Click **Next** through the remaining steps, leaving the default settings.
7. In the **Configure Security Group** step:
   - Create a new security group.
   - Add a rule to allow **HTTP** (port 80) and **HTTPS** (port 443) traffic from anywhere (0.0.0.0/0).
8. Review the instance details and click **Launch**.
9. Select an existing **key pair** or create a new one, then click **Launch Instances**.

# Step 2: Install Web Server
1. Once the instance is running, **Connect** to the instance using SSH. You can use the SSH client on your local machine or the browser-based SSH client provided by AWS.
2. Update the package lists for package manager:
   ```
   sudo yum update -y
   ```
3. Install the **Apache web server** (for Amazon Linux 2):
   ```
   sudo yum install httpd -y
   ```
4. Start the Apache service:
   ```
   sudo systemctl start httpd
   ```
5. Enable Apache to start on boot:
   ```
   sudo systemctl enable httpd
   ```

# Step 3: Deploy Website Code
1. **Upload Website Files**:
   - You can use **SCP** (Secure Copy Protocol) to upload your website files to the EC2 instance.
     ```
     scp -i path_to_key_pair.pem path_to_website_files ec2-user@your_ec2_public_ip:/var/www/html/
     ```
   - Replace `path_to_key_pair.pem`, `path_to_website_files`, and `your_ec2_public_ip` with your actual values.
2. **Configure Apache for the Website**:
   - Create a new configuration file for your website:
     ```
     sudo nano /etc/httpd/conf.d/your_website.conf
     ```
   - Add the following content, replacing `your_domain_or_ip` with your domain name or EC2 public IP:
     ```
     <VirtualHost *:80>
         ServerAdmin webmaster@your_domain_or_ip
         DocumentRoot /var/www/html/
         ServerName your_domain_or_ip
         ErrorLog logs/your_domain_or_ip-error_log
         CustomLog logs/your_domain_or_ip-access_log common
     </VirtualHost>
     ```
   - Save and close the file.
3. **Restart Apache** to apply the changes:
   ```
   sudo systemctl restart httpd
   ```

Now, your dynamic website should be deployed and accessible via the public IP address or domain name associated with your EC2 instance.

Remember to replace placeholders like `path_to_key_pair.pem`, `path_to_website_files`, `your_domain_or_ip`, etc., with your actual values.

