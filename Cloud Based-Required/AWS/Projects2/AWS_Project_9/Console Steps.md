### Project: File Sharing with EFS on EC2 Ubuntu

#### Aim
Share files across EC2 instances running Ubuntu using Amazon Elastic File System (EFS).

#### Tools and Prerequisites
- AWS Account
- AWS CLI installed and configured
- EC2 instances running Ubuntu

#### Required Services
- Amazon EFS
- Amazon EC2

---

### Building Steps

#### Step 1: Create EFS File System
1. **Log in** to the AWS Management Console.
2. Navigate to **Services** and select **EFS**.
3. Click **Create file system**.
4. **Name**:
   - Enter a unique name for your file system (e.g., `MyEFS`).
5. **VPC**:
   - Choose the VPC where your EC2 instances are located.
6. **Mount Targets**:
   - Choose the subnet(s) where your EC2 instances are located.
7. Click **Create**.

#### Step 2: Mount to EC2 Instances (Ubuntu)
1. **EC2 Dashboard**:
   - Navigate to **Services** and select **EC2**.
2. **EC2 Instances**:
   - Select the EC2 instances running Ubuntu where you want to mount the EFS file system.
3. **Attach EFS**:
   - Click **Actions** -> **Attach File System**.
   - Choose the EFS file system (`MyEFS`) you created.
   - Specify the directory path on the instance (e.g., `/mnt/my-efs`).
  
#### Step 3: SSH into EC2 Ubuntu Instance
1. **SSH Connection**:
   - Open terminal on your local machine.
   - SSH into your EC2 Ubuntu instance:
     ```bash
     ssh -i /path/to/your-key.pem ubuntu@your-ec2-instance-ip
     ```

#### Step 4: Install and Mount EFS on Ubuntu
1. **Update Packages**:
   ```bash
   sudo apt-get update
   ```
2. **Install NFS Client**:
   ```bash
   sudo apt-get install -y nfs-common
   ```
3. **Create Mount Point**:
   ```bash
   sudo mkdir /mnt/my-efs
   ```
4. **Mount EFS**:
   - Get the DNS name of your EFS file system from the AWS Console.
   - Mount the EFS file system to the created directory:
     ```bash
     sudo mount -t nfs4 -o nfsvers=4.1,rsize=1048576,wsize=1048576,hard,timeo=600,retrans=2 your-efs-dns-name:/ /mnt/my-efs
     ```
  
#### Step 5: Verify Mount
1. **Check Mounted File System**:
   - Verify the EFS file system is mounted correctly:
     ```bash
     df -h
     ```
   - You should see your EFS file system mounted at `/mnt/my-efs`.

---

By following these detailed steps on an Ubuntu EC2 instance, you've successfully created an EFS file system and mounted it. This allows you to share files across multiple EC2 instances running Ubuntu using EFS.
