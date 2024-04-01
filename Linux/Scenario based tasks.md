Scenario-based practice tasks for Linux along with steps and commands:

1. **File Management**:
   - **Step 1: Create a directory and file:**
     ```bash
     mkdir ~/documents
     echo "Some text" > ~/documents/notes.txt
     ```
   - **Step 2: Copy and move files:**
     ```bash
     cp ~/documents/notes.txt ~/backup_notes.txt
     mv ~/backup_notes.txt ~/archive/
     ```
   - **Step 3: Delete the original file:**
     ```bash
     rm ~/documents/notes.txt
     ```

2. **User Management**:
   - **Step 1: Create a new user:**
     ```bash
     sudo adduser devuser
     ```
   - **Step 2: Set a password:**
     ```bash
     sudo passwd devuser
     ```
   - **Step 3: Grant sudo privileges:**
     ```bash
     sudo usermod -aG sudo devuser
     ```

3. **Package Management**:
   - **Step 1: Install Apache:**
     ```bash
     sudo apt update
     sudo apt install apache2
     ```
   - **Step 2: Start Apache:**
     ```bash
     sudo systemctl start apache2
     ```
   - **Step 3: Install MySQL and PHP:**
     ```bash
     sudo apt install mysql-server php
     ```

4. **Network Configuration**:
   - **Step 1: View network interfaces:**
     ```bash
     ifconfig -a
     ```
   - **Step 2: Configure static IP address:**
     ```bash
     sudo nano /etc/network/interfaces
     ```
   - **Step 3: Edit DNS settings:**
     ```bash
     sudo nano /etc/resolv.conf
     ```

5. **Process Management**:
   - **Step 1: List running processes:**
     ```bash
     ps aux
     ```
   - **Step 2: Identify Apache process:**
     ```bash
     ps aux | grep apache2
     ```
   - **Step 3: Terminate Apache process:**
     ```bash
     sudo systemctl stop apache2
     ```

6. **Backup and Restore**:
   - **Step 1: Create backup archive:**
     ```bash
     tar -czvf backup.tar.gz ~/documents
     ```
   - **Step 2: Delete original directory:**
     ```bash
     rm -r ~/documents
     ```
   - **Step 3: Restore backup:**
     ```bash
     tar -xzvf backup.tar.gz -C ~/
     ```

7. **Security Hardening**:
   - **Step 1: Configure firewall:**
     ```bash
     sudo ufw allow 22/tcp
     sudo ufw allow 80/tcp
     sudo ufw enable
     ```
   - **Step 2: Disable root SSH access:**
     ```bash
     sudo nano /etc/ssh/sshd_config
     ```
     Set `PermitRootLogin no`.
   - **Step 3: Set up SSH key-based authentication:**
     ```bash
     ssh-copy-id devuser@hostname
     ```
     Follow prompts to add SSH key.

8. **Monitoring and Logging**:
   - **Step 1: Monitor logs in real-time:**
     ```bash
     tail -f /var/log/syslog
     ```
   - **Step 2: Search for errors:**
     ```bash
     grep "error" /var/log/syslog
     ```
   - **Step 3: Install log monitoring tool:**
     ```bash
     sudo apt install logwatch
     ```

9. **Shell Scripting**:
   - **Step 1: Display date and time:**
     ```bash
     echo "Current date and time: $(date)"
     ```
   - **Step 2: Check disk usage and send email alert:**
     ```bash
     df -h | mail -s "Disk Usage Alert" admin@example.com
     ```
   - **Step 3: Automate backup process:**
     ```bash
     #!/bin/bash
     tar -czvf backup_$(date +%Y%m%d).tar.gz /path/to/backup
     ```

10. **Containerization**:
    - **Step 1: Install Docker:**
      ```bash
      sudo apt update
      sudo apt install docker.io
      ```
    - **Step 2: Pull nginx Docker image:**
      ```bash
      sudo docker pull nginx
      ```
    - **Step 3: Run nginx container:**
      ```bash
      sudo docker run -d -p 80:80 --name mynginx nginx
      ```

These steps and commands provide a practical approach to performing various tasks in a Linux environment. You can practice these scenarios on a Linux machine or a virtual machine to improve your skills.
