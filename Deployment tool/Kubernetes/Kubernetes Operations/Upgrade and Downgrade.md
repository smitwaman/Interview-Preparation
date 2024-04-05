let's go through an example of upgrading from version 1.0 to version 2.0 using Rolling Update deployment strategy in Kubernetes, followed by an example of rolling back to version 1.0.

**Upgrade from Version 1.0 to Version 2.0:**

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
   kubectl apply -f myapp-deployment.yaml
   ```

3. **Monitor Deployment Progress:**
   Monitor the deployment rollout status to ensure the new version is rolled out successfully:
   ```bash
   kubectl rollout status deployment myapp
   ```

**Rollback from Version 2.0 to Version 1.0:**

1. **Trigger Rollback:**
   If issues occur after the upgrade, trigger a rollback to the previous version (1.0):
   ```bash
   kubectl rollout undo deployment myapp
   ```

2. **Monitor Rollback Progress:**
   Monitor the rollout status to ensure the rollback is completed successfully:
   ```bash
   kubectl rollout status deployment myapp
   ```

3. **Verify Rollback:**
   Verify that the pods are running the previous version (1.0):
   ```bash
   kubectl get pods -l app=myapp
   ```

This example demonstrates how to upgrade from version 1.0 to version 2.0 using Rolling Update deployment strategy in Kubernetes and how to roll back to the previous version in case of issues or failures. The key commands used are `kubectl apply` to apply the updated Deployment manifest, `kubectl rollout status` to monitor deployment progress, and `kubectl rollout undo` to trigger the rollback.
