After creation of any API, webapp and artifact, there will need for deploy it on target system or webserver for its utilisation and service.

There are several techniques to deploy artifacts on web servers:

1. **Manual Deployment**: This involves manually copying the artifact files to the server using tools like FTP, SCP, or through a file manager provided by the hosting provider.

2. **Continuous Integration/Continuous Deployment (CI/CD)**: Automate the deployment process using CI/CD pipelines. Tools like Jenkins, GitLab CI/CD, and Travis CI can be used to automatically build, test, and deploy artifacts to the web server whenever changes are pushed to the repository.

3. **Containerization**: Use containerization platforms like Docker to package the artifact along with its dependencies into a container image, which can then be deployed on any server that supports Docker.

4. **Configuration Management Tools**: Tools like Ansible, Puppet, and Chef can be used to automate the deployment process by defining the desired state of the servers and deploying artifacts accordingly.

5. **Package Managers**: If your artifact is a software package, you can use package managers like npm, pip, or Maven to publish and deploy it to the web server.

6. **Serverless Deployment**: For serverless architectures, deploy artifacts as functions or services using platforms like AWS Lambda, Google Cloud Functions, or Azure Functions.

Choose the technique that best fits your project requirements, infrastructure, and team's expertise.
