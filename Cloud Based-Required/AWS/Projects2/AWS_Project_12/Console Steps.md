### Project: Data Streaming with Kinesis

#### Aim
Process real-time data using Amazon Kinesis.

#### Tools and Prerequisites
- AWS CLI

#### Required Services
- Amazon Kinesis

---

### Building Steps

#### Step 1: Create Kinesis Data Stream
1. **Log in** to the AWS Management Console.
2. Navigate to **Services** and select **Kinesis**.
3. Click **Create data stream**.
4. **Data stream name**:
   - Enter a name for your data stream (e.g., `MyDataStream`).
5. **Number of shards**:
   - Enter the number of shards (e.g., `1` for this example).
6. Click **Create data stream**.

#### Step 2: Produce/Consume Data
##### Produce Data to Kinesis Data Stream
1. **Kinesis Dashboard**:
   - Go back to the Kinesis dashboard.
   - Select the data stream (`MyDataStream`).
2. **Produce Data**:
   - Click **Put data into stream**.
   - **Partition key**: Enter a partition key (e.g., `partitionKey`).
   - **Data**: Enter the data you want to send (e.g., `{"message": "Hello Kinesis"}`).
   - Click **Put data**.

##### Consume Data from Kinesis Data Stream
1. **Kinesis Dashboard**:
   - Select the data stream (`MyDataStream`).
2. **Consume Data**:
   - Click **Monitor** to view shard metrics.
   - **Shard Iterator**: Click on a shard ID to view details.
   - **Get records**: Click to retrieve data records.
   - You should see the data you sent earlier.

---

By following these detailed steps in the AWS Management Console, you've successfully created a Kinesis data stream and produced/consumed real-time data
