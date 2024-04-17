### Project: Database Migration with DMS (Database Migration Service)

#### Aim
Migrate databases to AWS using Database Migration Service (DMS).

#### Tools and Prerequisites
- AWS CLI

#### Required Services
- DMS
- RDS

---

### Building Steps

#### Step 1: Set Up DMS
1. **Log in** to the AWS Management Console.
2. Navigate to **Services** and select **DMS (Database Migration Service)**.
3. In the DMS dashboard, click **Create Migration**.
4. **Choose the source database engine**:
   - Select the source database engine (e.g., MySQL, Oracle).
5. **Choose the target database engine**:
   - Select the target database engine (e.g., Amazon RDS MySQL, Amazon RDS PostgreSQL).
6. Click **Next**.

#### Step 2: Configure Source and Target Databases
1. **Source Database**:
   - **Endpoint configuration**:
     - **Endpoint type**: Select **Source endpoint**.
     - **Endpoint identifier**: Enter a name for the source endpoint.
     - **Source engine**: Select the source database engine.
     - **Server name**: Enter the source database server name or IP address.
     - **Port**: Enter the source database port number.
     - **Username**: Enter the source database username.
     - **Password**: Enter the source database password.
   - **Test connection**: Click **Test endpoint connection** to verify the source database connection.
2. **Target Database**:
   - **Endpoint configuration**:
     - **Endpoint type**: Select **Target endpoint**.
     - **Endpoint identifier**: Enter a name for the target endpoint.
     - **Target engine**: Select the target database engine.
     - **Server name**: Enter the target database server name or IP address.
     - **Port**: Enter the target database port number.
     - **Username**: Enter the target database username.
     - **Password**: Enter the target database password.
   - **Test connection**: Click **Test endpoint connection** to verify the target database connection.
3. **Migration type**:
   - Select the migration type (e.g., Migrate existing data and replicate ongoing changes).
4. **Replication instance**:
   - Select an existing replication instance or create a new one.
5. **Migration task settings**:
   - Enter a name for the migration task.
   - **Table mappings**: Define table mappings if needed.
6. Click **Create migration**.

---

By following these detailed steps in the AWS Management Console, you've successfully set up DMS and configured source and target databases for database migration
