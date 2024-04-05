Here's a detailed step-by-step guide for performing a Blue-Green Deployment in Kubernetes:

1. **Deployment Setup:**

   Start by creating two identical Deployments, one for each version of your application: `myapp-blue` and `myapp-green`. Initially, `myapp-blue` will serve live traffic while `myapp-green` remains idle.

2. **Update Green Deployment to Version 2.0:**

   Update the Deployment manifest for `myapp-green` to use version 2.0 of your application. Ensure that the new version is thoroughly tested and verified before proceeding.

   Example `myapp-green-deployment.yaml`:
   ```yaml
   apiVersion: apps/v1
   kind: Deployment
   metadata:
     name: myapp-green
   spec:
     replicas: 3
     selector:
       matchLabels:
         app: myapp-green
     template:
       metadata:
         labels:
           app: myapp-green
       spec:
         containers:
         - name: myapp
           image: myapp:2.0
           ports:
           - containerPort: 80
   ```

   Apply the updated Deployment:
   ```bash
   kubectl apply -f myapp-green-deployment.yaml --record
   ```

3. **Update Service to Route Traffic to Green:**

   Update the Service to direct traffic to the `myapp-green` Deployment. This step ensures that incoming requests are routed to the new version of the application.

   Example `myapp-service.yaml`:
   ```yaml
   apiVersion: v1
   kind: Service
   metadata:
     name: myapp
   spec:
     selector:
       app: myapp-green
     ports:
     - protocol: TCP
       port: 80
       targetPort: 80
   ```

   Apply the updated Service:
   ```bash
   kubectl apply -f myapp-service.yaml
   ```

4. **Verify Green Deployment:**

   Test the new version of your application (2.0) to ensure that it functions correctly and meets the desired requirements. You can access the application using its service endpoint and verify its behavior.

5. **Rollback (Optional):**

   If any issues arise with the new version (2.0) during testing or after routing live traffic, you can perform a rollback to the previous version (1.0) by updating the Service to route traffic back to the `myapp-blue` Deployment.

   Example rollback command:
   ```bash
   kubectl apply -f myapp-service.yaml
   ```

   This will revert the Service to its previous configuration, directing traffic back to the `myapp-blue` Deployment.

By following these detailed steps, you can perform a Blue-Green Deployment in Kubernetes, ensuring a smooth and reliable transition between different versions of your application while minimizing the risk of downtime.
