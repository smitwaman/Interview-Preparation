install Maven on Linux:

1. **Download Maven:**
   Open your terminal and navigate to the directory where you want to install Maven. Then, download the latest Maven distribution using `wget` or `curl`. You can get the link to the latest version from the Maven official website.

   ```bash
   wget https://downloads.apache.org/maven/maven-3/{VERSION}/binaries/apache-maven-{VERSION}-bin.tar.gz
   ```

   Replace `{VERSION}` with the specific version number you want to download.

2. **Extract the Archive:**
   Once the download is complete, extract the downloaded archive using `tar` command.

   ```bash
   tar -xvzf apache-maven-{VERSION}-bin.tar.gz
   ```

3. **Move Maven to /opt Directory:**
   It's recommended to move the extracted Maven folder to the `/opt` directory, which is a standard location for installing third-party software.

   ```bash
   sudo mv apache-maven-{VERSION} /opt
   ```

4. **Set Environment Variables:**
   Next, you need to set up environment variables to configure Maven. Open the `.bashrc` file using a text editor like `nano` or `vi`.

   ```bash
   nano ~/.bashrc
   ```

   Add the following lines at the end of the file to define `M2_HOME` and update the `PATH` variable to include Maven's `bin` directory.

   ```bash
   export M2_HOME=/opt/apache-maven-{VERSION}
   export PATH=$PATH:$M2_HOME/bin
   ```

   Save the file and exit the text editor.

5. **Apply Changes:**
   To apply the changes made to the `.bashrc` file, either log out and log back in or run the following command:

   ```bash
   source ~/.bashrc
   ```

6. **Verify Installation:**
   Finally, verify that Maven is installed correctly by running the following command:

   ```bash
   mvn -version
   ```

   You should see Maven's version and other information if the installation was successful.

That's it! Maven is now installed on your Linux system, and you can start using it for your Java projects.
