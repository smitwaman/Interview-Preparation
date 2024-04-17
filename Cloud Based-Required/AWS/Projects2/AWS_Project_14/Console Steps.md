### Project: Identity and Access Management (IAM)

#### Aim
Manage AWS resource access using IAM.

#### Tools and Prerequisites
- AWS CLI

#### Required Services
- IAM

---

### Building Steps

#### Step 1: Create IAM Users
1. **Log in** to the AWS Management Console.
2. Navigate to **Services** and select **IAM**.
3. In the IAM dashboard, click **Users** on the left sidebar.
4. Click **Add user**.
5. **User name**:
   - Enter a name for the user (e.g., `JohnDoe`).
6. **Access type**:
   - Select **Programmatic access** and/or **AWS Management Console access**.
7. Click **Next**.
8. **Set permissions**:
   - Choose **Attach existing policies directly**.
   - Select policies to attach (e.g., `AmazonS3FullAccess`).
9. Click **Next**.
10. **Review**:
    - Review the user details and permissions.
11. Click **Create user**.
12. **Download** or **copy** the **Access key ID** and **Secret access key**.

#### Step 2: Create IAM Groups
1. **IAM Dashboard**:
   - Click **Groups** on the left sidebar.
2. Click **Create New Group**.
3. **Group name**:
   - Enter a name for the group (e.g., `Developers`).
4. **Attach policy**:
   - Search and select policies to attach (e.g., `AmazonEC2FullAccess`).
5. Click **Create group**.

#### Step 3: Create IAM Roles
1. **IAM Dashboard**:
   - Click **Roles** on the left sidebar.
2. Click **Create role**.
3. **Select type of trusted entity**:
   - Choose **AWS service**.
4. **Choose the service that will use this role**:
   - Select a service (e.g., `EC2`).
5. Click **Next**.
6. **Attach permissions policies**:
   - Search and select policies to attach (e.g., `AmazonDynamoDBFullAccess`).
7. Click **Next**.
8. **Review**:
   - Review the role details and permissions.
9. **Role name**:
   - Enter a name for the role (e.g., `EC2FullAccessRole`).
10. Click **Create role**.

#### Step 4: Assign Policies
1. **IAM Dashboard**:
   - Navigate to **Users**, **Groups**, or **Roles**.
2. Select the user, group, or role to which you want to assign policies.
3. Click **Add permissions** or **Attach policies**.
4. **Attach existing policies directly**:
   - Select policies to attach (e.g., `AmazonRDSFullAccess`).
5. Click **Next** or **Attach policy**.

---

By following these detailed steps in the AWS Management Console, you've successfully created IAM users, groups, roles, and assigned policies to manage AWS resource access
