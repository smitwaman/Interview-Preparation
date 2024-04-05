Rolling Update Deployment is a deployment strategy in Kubernetes that gradually updates pods to a new version while maintaining application availability. It replaces old pods with new ones in a controlled manner, ensuring that the application remains accessible throughout the update process. This strategy is suitable for applications that require continuous availability with zero or minimal downtime.

Here's an example of how to perform a rolling update deployment in Kubernetes:

1. **Deployment Setup:**
   
   Let's assume we have a Deployment named `myapp` with version 1.0 already running in our Kubernetes cluster.

2. **Update Deployment to Version 2.0:**

   Update the image version in the Deployment manifest to version 2.0:
   ```yaml
   # myapp-deployment.yaml
   apiVersion: apps/v1
   kind: Deployment
   metadata:
     name: myapp
   spec:
     replicas: 3
     selector:
       matchLabels:
         app: myapp
     template:
       metadata:
         labels:
           app: myapp
       spec:
         containers:
         - name: myapp
           image: myapp:2.0
           ports:
           - containerPort: 80
   ```
   Apply the updated Deployment manifest:
   ```bash
   kubectl apply -f myapp-deployment.yaml --record
   ```

3. **Monitor Deployment Progress:**

   Monitor the deployment rollout status to ensure the new version is rolled out successfully:
   ```bash
   kubectl rollout status deployment myapp
   ```

   This command will indicate when the deployment is complete and all pods have been updated to the new version.

4. **Verify Deployment:**

   Once the rollout is complete, verify that the pods are running the new version:
   ```bash
   kubectl get pods -l app=myapp
   ```

   This command will show the pods with the updated version (`2.0`).

By using the Rolling Update deployment strategy, Kubernetes will gradually replace pods running the old version with pods running the new version, ensuring that the application remains available throughout the update process. The `kubectl rollout status` command can be used to monitor the progress of the deployment, and once complete, the application can be verified using `kubectl get pods`.
