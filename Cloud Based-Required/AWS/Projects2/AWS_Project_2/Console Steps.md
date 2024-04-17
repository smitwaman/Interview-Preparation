Build following project with detailed AWS console steps 

## Aim
Deploy a dynamic website using EC2.



Detailed guide to deploy a dynamic website using EC2 with Ubuntu on AWS through the AWS Management Console:

# Tools and Prerequisites
- AWS Account
- AWS CLI (Optional)
- Web server setup files (e.g., web application code, database setup, etc.)

# Step 1: Launch EC2 Instance Using Ubuntu
1. **Log in** to the AWS Management Console.
2. Navigate to **Services** and select **EC2** under the Compute category.
3. Click **Launch Instance**.
4. Choose an **Amazon Machine Image (AMI)**. Select **Ubuntu Server** (e.g., Ubuntu Server 20.04 LTS).
5. Choose an **Instance Type**. For a simple website, **t2.micro** is sufficient and eligible for the AWS Free Tier.
6. Click **Next** through the remaining steps, leaving the default settings.
7. In the **Configure Security Group** step:
   - Create a new security group.
   - Add a rule to allow **HTTP** (port 80) and **HTTPS** (port 443) traffic from anywhere (0.0.0.0/0).
   - Also, add a rule to allow **SSH** (port 22) traffic from your IP address for secure SSH access.
8. Review the instance details and click **Launch**.
9. Select an existing **key pair** or create a new one, then click **Launch Instances**.

# Step 2: Install Web Server
1. Once the instance is running, **Connect** to the instance using SSH. You can use the SSH client on your local machine or the browser-based SSH client provided by AWS.
2. Update the package lists for package manager:
   ```
   sudo apt update
   ```
3. Install the **Apache web server**:
   ```
   sudo apt install apache2 -y
   ```
4. Start the Apache service:
   ```
   sudo systemctl start apache2
   ```
5. Enable Apache to start on boot:
   ```
   sudo systemctl enable apache2
   ```

# Step 3: Deploy Website Code
1. **Upload Website Files**:
   - You can use **SCP** (Secure Copy Protocol) to upload your website files to the EC2 instance.
     ```
     scp -i path_to_key_pair.pem path_to_website_files ubuntu@your_ec2_public_ip:/var/www/html/
     ```
   - Replace `path_to_key_pair.pem`, `path_to_website_files`, and `your_ec2_public_ip` with your actual values.
2. **Configure Apache for the Website**:
   - Create a new configuration file for your website:
     ```
     sudo nano /etc/apache2/sites-available/your_website.conf
     ```
   - Add the following content, replacing `your_domain_or_ip` with your domain name or EC2 public IP:
     ```
     <VirtualHost *:80>
         ServerAdmin webmaster@your_domain_or_ip
         DocumentRoot /var/www/html/
         ServerName your_domain_or_ip
         ErrorLog ${APACHE_LOG_DIR}/error.log
         CustomLog ${APACHE_LOG_DIR}/access.log combined
     </VirtualHost>
     ```
   - Enable the website:
     ```
     sudo a2ensite your_website.conf
     ```
   - Disable the default site:
     ```
     sudo a2dissite 000-default.conf
     ```
   - Reload Apache to apply changes:
     ```
     sudo systemctl reload apache2
     ```

Now, your dynamic website should be deployed and accessible via the public IP address or domain name associated with your EC2 instance.

Remember to replace placeholders like `path_to_key_pair.pem`, `path_to_website_files`, `your_domain_or_ip`, etc., with your actual values
