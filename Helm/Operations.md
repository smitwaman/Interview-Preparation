let's go through some of the common Helm commands with examples:

1. **Initialize Helm**:
   - Command: `helm init`
   - Description: Initializes Helm on the local machine and installs Tiller into the Kubernetes cluster.
   - Example: 
     ```
     helm init
     ```

2. **Search for Charts**:
   - Command: `helm search`
   - Description: Searches for charts in the Helm chart repositories based on keywords or chart names.
   - Example: 
     ```
     helm search repo wordpress
     ```

3. **Fetch a Chart**:
   - Command: `helm fetch`
   - Description: Downloads a chart from a Helm chart repository to the local filesystem without installing it.
   - Example: 
     ```
     helm fetch stable/wordpress
     ```

4. **Add a Chart Repository**:
   - Command: `helm repo add`
   - Description: Adds a new Helm chart repository to the list of repositories that Helm searches when performing operations.
   - Example: 
     ```
     helm repo add stable https://charts.helm.sh/stable
     ```

5. **List Chart Repositories**:
   - Command: `helm repo list`
   - Description: Lists all the configured Helm chart repositories along with their URLs.
   - Example: 
     ```
     helm repo list
     ```

6. **Update Chart Repositories**:
   - Command: `helm repo update`
   - Description: Updates the local cache of Helm chart repositories.
   - Example: 
     ```
     helm repo update
     ```

7. **Install a Chart**:
   - Command: `helm install`
   - Description: Installs a Helm chart onto a Kubernetes cluster.
   - Example: 
     ```
     helm install stable/wordpress --name my-wordpress
     ```

8. **Upgrade a Release**:
   - Command: `helm upgrade`
   - Description: Upgrades a deployed release to a new version of the chart or applies changes to the configuration values.
   - Example: 
     ```
     helm upgrade my-wordpress stable/wordpress --set persistence.size=10Gi
     ```

9. **Rollback a Release**:
   - Command: `helm rollback`
   - Description: Rolls back a release to a previous version.
   - Example: 
     ```
     helm rollback my-wordpress 1
     ```

10. **Delete a Release**:
    - Command: `helm delete`
    - Description: Deletes a deployed release from the Kubernetes cluster.
    - Example: 
      ```
      helm delete my-wordpress
      ```

11. **List Releases**:
    - Command: `helm ls`
    - Description: Lists all the releases deployed on the Kubernetes cluster.
    - Example: 
      ```
      helm ls
      ```

12. **Inspect a Chart**:
    - Command: `helm inspect`
    - Description: Displays information about a Helm chart.
    - Example: 
      ```
      helm inspect values stable/wordpress
      ```

These examples demonstrate how to use Helm commands to manage Helm charts and releases on Kubernetes clusters. Each command performs a specific action, such as searching for charts, installing or upgrading releases, and managing repositories
