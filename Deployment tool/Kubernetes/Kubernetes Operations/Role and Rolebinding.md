To create a user in Kubernetes with access only to pods and services configuration and with read, write, and execute access, you would need to set up Role-Based Access Control (RBAC). RBAC allows you to define fine-grained access control policies for different users or groups within a Kubernetes cluster.

Here's how you can create a user with the required access:

1. **Create a Role:**

   First, create a Role that defines the permissions for accessing pods and services configuration. We'll name it `pod-service-access` in this example.

   ```yaml
   # pod-service-access-role.yaml
   apiVersion: rbac.authorization.k8s.io/v1
   kind: Role
   metadata:
     namespace: <namespace>  # Specify the namespace where the resources are located
     name: pod-service-access
   rules:
   - apiGroups: [""]
     resources: ["pods", "services"]
     verbs: ["get", "list", "watch", "create", "update", "delete"]
   ```

   Apply the Role configuration:
   ```bash
   kubectl apply -f pod-service-access-role.yaml
   ```

2. **Create a Role Binding:**

   Next, create a RoleBinding to bind the Role to the user or group. We'll create a RoleBinding named `pod-service-access-binding` in this example.

   ```yaml
   # pod-service-access-binding.yaml
   apiVersion: rbac.authorization.k8s.io/v1
   kind: RoleBinding
   metadata:
     name: pod-service-access-binding
     namespace: <namespace>  # Specify the namespace where the Role is defined
   subjects:
   - kind: User
     name: <username>  # Replace <username> with the username of the user
   roleRef:
     kind: Role
     name: pod-service-access
     apiGroup: rbac.authorization.k8s.io
   ```

   Apply the RoleBinding configuration:
   ```bash
   kubectl apply -f pod-service-access-binding.yaml
   ```

Replace `<namespace>` with the namespace where the resources are located, and `<username>` with the username of the user you want to grant access to. 

After applying these configurations, the user specified will have read, write, and execute access to pods and services configuration within the specified namespace. They will be able to perform actions such as listing, creating, updating, and deleting pods and services. Make sure to adjust the configurations according to your specific requirements and namespace structure.
