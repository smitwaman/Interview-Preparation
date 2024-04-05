To inject configuration data into a deployment using a ConfigMap in Kubernetes, you'll first need to create a ConfigMap containing your configuration data, and then reference that ConfigMap in your deployment manifest. Here's how you can do it:

1. **Create a ConfigMap:**

   Define your configuration data in a ConfigMap. This can be done using a YAML file or by using `kubectl create configmap` command. For example, let's say you have a configuration file named `app-config.properties`:

   ```properties
   # app-config.properties
   database.url=jdbc:mysql://localhost:3306/mydatabase
   database.username=myuser
   database.password=mypassword
   ```

   You can create a ConfigMap from this file using the following command:

   ```bash
   kubectl create configmap my-config --from-file=app-config.properties
   ```

2. **Reference ConfigMap in Deployment:**

   Modify your deployment manifest to reference the ConfigMap data. You can do this by mounting the ConfigMap as a volume or by setting environment variables from the ConfigMap data. Here's an example using environment variables:

   ```yaml
   apiVersion: apps/v1
   kind: Deployment
   metadata:
     name: myapp
   spec:
     replicas: 1
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
           image: myapp:latest
           env:
           - name: DATABASE_URL
             valueFrom:
               configMapKeyRef:
                 name: my-config
                 key: database.url
           - name: DATABASE_USERNAME
             valueFrom:
               configMapKeyRef:
                 name: my-config
                 key: database.username
           - name: DATABASE_PASSWORD
             valueFrom:
               configMapKeyRef:
                 name: my-config
                 key: database.password
   ```

   In this example, we're setting environment variables in the deployment container based on the values from the `my-config` ConfigMap.

3. **Apply the Deployment:**

   Apply the updated deployment manifest to create or update your deployment:

   ```bash
   kubectl apply -f my-deployment.yaml
   ```

With these steps, your deployment will use the configuration data from the ConfigMap to configure your application. Any changes to the ConfigMap will automatically be reflected in the deployment without requiring a redeployment of your application. This approach allows for easy management and updating of configuration data in Kubernetes.
