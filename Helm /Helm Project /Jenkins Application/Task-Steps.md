To create a Helm chart for deploying Jenkins with three replicas in the `jenkins` namespace, along with a ConfigMap for Jenkins user credentials and RBAC rules for restricting access to resources within the namespace, follow these steps:

1. **Create Helm Chart**:
   Create a new Helm chart for Jenkins deployment.
   ```bash
   helm create jenkins
   ```

2. **Edit Chart Metadata (Chart.yaml)**:
   Update the `Chart.yaml` file with appropriate metadata.
   ```yaml
   apiVersion: v2
   name: jenkins
   version: 1.0.0
   ```

3. **Edit Default Configuration Values (values.yaml)**:
   Update the `values.yaml` file with default configuration values.
   ```yaml
   image:
     repository: jenkins/jenkins
     tag: latest
     pullPolicy: IfNotPresent

   replicas: 3
   ```

4. **Create ConfigMap YAML (templates/configmap.yaml)**:
   Define the ConfigMap for storing the Jenkins user credentials.
   ```yaml
   apiVersion: v1
   kind: ConfigMap
   metadata:
     name: jenkins-user-config
     namespace: jenkins
   data:
     username: admin
     password: password123
   ```

5. **Create RBAC YAML (templates/rbac.yaml)**:
   Define RBAC rules for restricting access to resources within the namespace.
   ```yaml
   apiVersion: rbac.authorization.k8s.io/v1
   kind: Role
   metadata:
     name: jenkins-role
     namespace: jenkins
   rules:
     - apiGroups: [""]
       resources: ["pods", "services", "configmaps"]
       verbs: ["get", "list", "watch"]
   ---
   apiVersion: rbac.authorization.k8s.io/v1
   kind: RoleBinding
   metadata:
     name: jenkins-role-binding
     namespace: jenkins
   roleRef:
     apiGroup: rbac.authorization.k8s.io
     kind: Role
     name: jenkins-role
   subjects:
     - kind: ServiceAccount
       name: default
       namespace: jenkins
   ```

6. **Update Deployment YAML (templates/deployment.yaml)**:
   Update the Deployment YAML file to use the ConfigMap for Jenkins user credentials and set the number of replicas.
   ```yaml
   ...
   spec:
     replicas: {{ .Values.replicas }}
     containers:
       - name: {{ .Chart.Name }}
         image: "{{ .Values.image.repository }}:{{ .Values.image.tag }}"
         imagePullPolicy: {{ .Values.image.pullPolicy }}
         env:
           - name: JENKINS_USER
             valueFrom:
               configMapKeyRef:
                 name: jenkins-user-config
                 key: username
           - name: JENKINS_PASS
             valueFrom:
               configMapKeyRef:
                 name: jenkins-user-config
                 key: password
   ...
   ```

7. **Package the Helm Chart**:
   ```bash
   helm package jenkins
   ```

8. **Push the Chart to Helm Registry**:
   Push the packaged chart (`jenkins-1.0.0.tgz`) to your Helm registry.
   ```bash
   curl --data-binary "@jenkins-1.0.0.tgz" https://<helm-registry-url>/api/charts
   ```

Replace `<helm-registry-url>` with the URL of your Helm registry.

By following these steps, you'll create a Helm chart for Jenkins deployment in the `jenkins` namespace with three replicas, a ConfigMap for storing Jenkins user credentials, and RBAC rules for restricting access to resources within the namespace. Additionally, the packaged chart will be pushed to your Helm registry for distribution and installation. Adjust the configurations as needed for your specific deployment requirements
