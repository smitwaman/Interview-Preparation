installing Jenkins on Linux:

1. **Update Package Index**: Ensure your package index is up-to-date by running:
   ```
   sudo apt update
   ```

2. **Install Java**: Jenkins requires Java to run. Install Java Development Kit (JDK) with the following command:
   ```
   sudo apt install default-jdk
   ```

3. **Download Jenkins**: You can download Jenkins' Debian package using `wget`:
   ```
   wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
   ```

4. **Add Jenkins Repository**: Add the Jenkins repository to your system's package sources:
   ```
   sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
   ```

5. **Update Package Index Again**: Update your package index to ensure you have access to the Jenkins package:
   ```
   sudo apt update
   ```

6. **Install Jenkins**: Finally, install Jenkins by running:
   ```
   sudo apt install jenkins
   ```

7. **Start Jenkins**: Start the Jenkins service:
   ```
   sudo systemctl start jenkins
   ```

8. **Enable Jenkins**: Enable Jenkins to start on boot:
   ```
   sudo systemctl enable jenkins
   ```

9. **Check Jenkins Status**: Verify that Jenkins is running properly:
   ```
   sudo systemctl status jenkins
   ```

10. **Access Jenkins Web Interface**: Open your web browser and navigate to `http://your_server_ip_or_domain:8080`. You should see the Jenkins setup wizard.

11. **Unlock Jenkins**: You'll need to unlock Jenkins by retrieving the initial administrator password. This can be found on your server by running:
    ```
    sudo cat /var/lib/jenkins/secrets/initialAdminPassword
    ```

12. **Follow Setup Wizard**: Paste the initial admin password into the Jenkins setup wizard and follow the prompts to complete the installation.

That's it! You've successfully installed Jenkins on your Linux system. You can now start creating jobs and managing your Jenkins instance.
