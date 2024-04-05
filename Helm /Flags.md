Sure, here are some common Helm commands along with their commonly used flags:

1. **Initialize Helm**:
   - Command: `helm init`
   - Flags:
     - `--client-only`: Initializes the Helm client only, without installing Tiller.
     - `--skip-refresh`: Skips updating the local repository cache.

2. **Search for Charts**:
   - Command: `helm search`
   - Flags:
     - `--version`: Searches for charts with a specific version.
     - `--regexp`: Allows searching using regular expressions.
     - `--devel`: Searches for charts in development repositories.

3. **Fetch a Chart**:
   - Command: `helm fetch`
   - Flags:
     - `--untar`: Extracts the chart to a directory after downloading.
     - `--untardir`: Specifies the directory to extract the chart to.

4. **Add a Chart Repository**:
   - Command: `helm repo add`
   - Flags:
     - None

5. **List Chart Repositories**:
   - Command: `helm repo list`
   - Flags:
     - None

6. **Update Chart Repositories**:
   - Command: `helm repo update`
   - Flags:
     - None

7. **Install a Chart**:
   - Command: `helm install`
   - Flags:
     - `--name`: Specifies the release name.
     - `--namespace`: Specifies the Kubernetes namespace to install the chart into.
     - `--values`: Specifies a YAML file containing override values.
     - `--set`: Sets individual values using inline syntax.

8. **Upgrade a Release**:
   - Command: `helm upgrade`
   - Flags:
     - `--install`: Installs the chart if it doesn't exist.
     - `--reuse-values`: Reuses the values from the previous release.
     - `--reset-values`: Resets all values to their defaults before applying new ones.

9. **Rollback a Release**:
   - Command: `helm rollback`
   - Flags:
     - None

10. **Delete a Release**:
    - Command: `helm delete`
    - Flags:
      - `--purge`: Deletes the release and removes its history from Helm.

11. **List Releases**:
    - Command: `helm ls`
    - Flags:
      - `--all`: Lists releases across all namespaces.
      - `--deleted`: Lists deleted releases.

12. **Inspect a Chart**:
    - Command: `helm inspect`
    - Flags:
      - `--values`: Shows the contents of the `values.yaml` file.
      - `--chart`: Shows the chart files.
      - `--readme`: Shows the contents of the `README.md` file.

These are some of the common Helm commands along with their frequently used flags. Flags provide additional options and customization when executing Helm commands
