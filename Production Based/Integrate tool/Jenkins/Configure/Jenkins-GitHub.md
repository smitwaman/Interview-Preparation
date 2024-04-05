Configuring Jenkins and GitHub integration involves setting up a webhook in GitHub to trigger Jenkins builds automatically whenever changes are pushed to a repository. Here's a detailed guide:

### Step 1: Install GitHub Integration Plugin in Jenkins
1. Log in to your Jenkins dashboard.
2. Navigate to "Manage Jenkins" > "Manage Plugins."
3. Go to the "Available" tab and search for "GitHub Integration Plugin."
4. Check the checkbox next to the plugin and click "Install without restart."
5. Once installed, restart Jenkins to apply the changes.

### Step 2: Generate Jenkins API Token
1. Log in to your Jenkins dashboard.
2. Click on your username at the top-right corner and select "Configure."
3. Scroll down to the "API Token" section and click on "Add new Token."
4. Enter a name for the token and click "Generate."
5. Note down the generated token as it will be needed later.

### Step 3: Configure GitHub Webhook
1. Navigate to your GitHub repository that you want to integrate with Jenkins.
2. Go to "Settings" > "Webhooks" > "Add webhook."
3. Enter the following details:
   - **Payload URL**: Enter the URL of your Jenkins server followed by `/github-webhook/` (e.g., `https://your-jenkins-domain/github-webhook/`).
   - **Content type**: Select "application/json."
   - **Secret**: Optionally, enter a secret token for added security (optional but recommended).
   - **Which events would you like to trigger this webhook?**: Select "Just the push event."
   - **Active**: Make sure the checkbox is checked to enable the webhook.
4. Click on "Add webhook" to save the configuration.

### Step 4: Configure Jenkins GitHub Integration
1. In Jenkins, go to "Manage Jenkins" > "Configure System."
2. Scroll down to the "GitHub" section and click on "Add GitHub Server."
3. Enter the following details:
   - **GitHub Server API URL**: Enter `https://api.github.com`.
   - **Credentials**: Click on "Add" and select "Secret text." Enter your GitHub username in the "Username" field and paste the API token generated in Step 2 in the "Secret" field.
4. Click on "Test connection" to verify that Jenkins can connect to GitHub using the provided credentials.
5. Save the configuration.

### Step 5: Configure Jenkins Job
1. Create or open the Jenkins job that you want to trigger with GitHub webhook.
2. Scroll down to the "Build Triggers" section.
3. Check the checkbox next to "GitHub hook trigger for GITScm polling."
4. Save the job configuration.

### Step 6: Test Webhook Integration
1. Make a change to the repository connected to the webhook (e.g., push a new commit).
2. Check the Jenkins dashboard to see if the job is triggered automatically.
3. Verify that the Jenkins job runs successfully and performs the desired actions.

By following these steps, you should be able to configure Jenkins and GitHub integration using webhooks. This allows you to automate builds and deployments in Jenkins whenever changes are pushed to your GitHub repositories.
