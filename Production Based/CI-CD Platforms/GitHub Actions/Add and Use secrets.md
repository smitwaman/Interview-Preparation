Adding secrets to GitHub Actions involves storing sensitive information like API keys, passwords, or tokens securely so they can be used in your workflows without exposing them in your codebase. Here are the steps to add secrets to GitHub Actions:

### Adding Secrets to GitHub Repository

1. **Navigate to Your Repository**  
   Open your GitHub repository where you want to add the secrets.

2. **Go to Settings**  
   Click on the `Settings` tab at the top-right corner of the repository.

3. **Navigate to Secrets**  
   In the left sidebar, click on `Secrets`.

4. **Click on "New Repository Secret"**  
   On the top-right corner, click on the `New repository secret` button.

5. **Add Secret Name and Value**  
   - **Name:** Enter a name for the secret (e.g., `API_KEY`, `DOCKER_USERNAME`).
   - **Value:** Enter the value for the secret (e.g., your API key, Docker username).

6. **Click on "Add Secret"**  
   Click the `Add secret` button to save the secret.

### Using Secrets in GitHub Actions Workflow

Once you have added the secrets to your repository, you can use them in your GitHub Actions workflow YAML files as environment variables.

```yaml
name: Use Secrets in Workflow

on:
  push:
    branches:
      - main

jobs:
  use-secrets:
    runs-on: ubuntu-latest

    steps:
    - name: Checkout Code
      uses: actions/checkout@v2

    - name: Print Secret
      run: echo ${{ secrets.API_KEY }}
```

In the above example:

- We added a secret named `API_KEY` to the repository.
- In the workflow, we used `${{ secrets.API_KEY }}` to access the value of the `API_KEY` secret.
- The `Print Secret` step will print the value of the `API_KEY` secret when the workflow runs.

### Summary

- **Add Secrets to Repository**: Navigate to `Settings` -> `Secrets` -> `New repository secret` -> Enter `Name` and `Value` -> `Add secret`.
  
- **Use Secrets in Workflow**: Access secrets in workflow YAML files using `${{ secrets.SECRET_NAME }}`.

By following these steps, you can securely store and use secrets in your GitHub Actions workflows without exposing them in your codebase.
