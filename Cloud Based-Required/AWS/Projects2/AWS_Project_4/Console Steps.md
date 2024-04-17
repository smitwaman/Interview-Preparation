# Project Name: Database Setup with RDS
# Aim
Set up a relational database.

# Tools and Prerequisites
- AWS CLI
- Database scripts

# Required Services
- RDS
Sure! Here's a detailed guide to set up a relational database using Amazon RDS in the AWS Management Console:

# Tools and Prerequisites
- AWS Account
- AWS CLI (Optional)
- Database scripts (e.g., SQL scripts for database creation, tables, etc.)

### Step 1: Launch RDS Instance
1. **Log in** to the AWS Management Console.
2. Navigate to **Services** and select **RDS** under the Database category.
3. Click **Create database**.
4. Select the **Standard Create** option.
5. Choose the **Database creation method**:
   - **Standard Create**: To create a new DB instance.
6. Choose the **Engine type**:
   - **MySQL**, **PostgreSQL**, **Oracle**, etc., based on your requirements.
7. Select the **DB instance size**:
   - For testing purposes, choose **Burstable classes (includes t classes)** and select **db.t2.micro** which is eligible for the AWS Free Tier.
8. Configure the **Settings**:
   - **DB instance identifier**: Provide a name for your DB instance.
   - **Master username**: Enter a username for the master user.
   - **Master password**: Enter and confirm a password for the master user.
9. Expand the **Additional configuration** section and configure other settings as per your requirements (e.g., VPC, Subnet group, Public accessibility).
10. Click **Create database**.

### Step 2: Choose Database Engine
1. After creating the DB instance, select the **Engine type** based on your chosen database engine (e.g., MySQL, PostgreSQL).
2. Choose the **DB instance class**:
   - Depending on your workload, select the appropriate instance class.
3. Configure other engine-specific settings such as version, license model, etc.
4. Click **Next**.

### Step 3: Configure Database Settings
1. Configure **DB instance size** and **Storage**:
   - Adjust the instance class and allocate storage based on your requirements.
2. Configure **Availability & durability**:
   - Select the appropriate settings for Multi-AZ deployments and backups.
3. Configure **Connectivity**:
   - **VPC**: Choose the VPC where you want to launch the DB instance.
   - **Subnet group**: Select the subnet group to specify the subnets for the DB instance.
   - **Public accessibility**: Choose **Yes** if you want the DB instance to be publicly accessible.
4. Configure **Database authentication**:
   - Select **Password authentication** or **Password and IAM authentication** based on your preference.
5. Click **Create database** to launch the RDS instance.

### Final Steps
1. Wait for the RDS instance to be **available**. This may take several minutes.
2. Once the RDS instance is **available**, note down the **Endpoint** (hostname) and **Port**.
3. Connect to the RDS instance using a database client or AWS CLI to execute your database scripts for creating databases, tables, etc.

Now, you have successfully set up a relational database using Amazon RDS. You can connect to this database and manage it using your preferred database client or tools provided by AWS. Remember to secure your RDS instance by configuring security groups, VPC, and other security settings as per your requirements.
