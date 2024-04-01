

1. **Navigating the File System**:
   - `ls`: List files and directories in the current directory.
     - Example: `ls`
   - `cd`: Change the current directory.
     - Example: `cd /etc`
   - `pwd`: Print the current working directory.
     - Example: `pwd`

2. **Viewing and Editing Files**:
   - `cat`: Display the contents of a file.
     - Example: `cat file.txt`
   - `less` or `more`: View file contents page by page.
     - Example: `less file.txt`
   - `nano` or `vim`: Text editors for viewing and editing files.
     - Example: `nano file.txt`

3. **Managing Files and Directories**:
   - `cp`: Copy files and directories.
     - Example: `cp file1.txt file2.txt`
   - `mv`: Move or rename files and directories.
     - Example: `mv file1.txt new_directory/`
   - `rm`: Remove files and directories.
     - Example: `rm file.txt`
   - `mkdir`: Create directories.
     - Example: `mkdir new_directory`
   - `rmdir`: Remove empty directories.
     - Example: `rmdir empty_directory`

4. **File System Information**:
   - `df`: Display disk space usage.
     - Example: `df -h`
   - `du`: Show directory space usage.
     - Example: `du -sh directory`
   - `stat`: Display file or file system status.
     - Example: `stat file.txt`
   - `lsblk`: List block devices.
     - Example: `lsblk`

5. **User and Group Management**:
   - `adduser` or `useradd`: Create a new user.
     - Example: `adduser newuser`
   - `deluser` or `userdel`: Delete a user.
     - Example: `deluser olduser`
   - `passwd`: Change a user's password.
     - Example: `passwd username`
   - `groupadd`: Create a new group.
     - Example: `groupadd newgroup`
   - `usermod`: Modify user attributes.
     - Example: `usermod -aG groupname username`

6. **Permissions Management**:
   - `chmod`: Change file permissions.
     - Example: `chmod 755 file.txt`
   - `chown`: Change file ownership.
     - Example: `chown user:group file.txt`
   - `chgrp`: Change group ownership.
     - Example: `chgrp group file.txt`

7. **Process Management**:
   - `ps`: Display information about running processes.
     - Example: `ps aux`
   - `top` or `htop`: Interactive process viewer.
     - Example: `top`
   - `kill`: Terminate processes by PID.
     - Example: `kill PID`
   - `killall`: Terminate processes by name.
     - Example: `killall process_name`

8. **Network Operations**:
   - `ping`: Check network connectivity to a host.
     - Example: `ping google.com`
   - `ifconfig` or `ip`: Display and configure network interfaces.
     - Example: `ifconfig`
   - `netstat`: Display network connections, routing tables, and interface statistics.
     - Example: `netstat -tuln`
   - `ssh`: Securely access remote systems.
     - Example: `ssh user@hostname`
   - `scp`: Securely copy files between hosts.
     - Example: `scp file.txt user@hostname:/path`

9. **System Information**:
   - `uname`: Display system information.
     - Example: `uname -a`
   - `hostname`: Display or set the system hostname.
     - Example: `hostname`
   - `uptime`: Show system uptime and load averages.
     - Example: `uptime`
   - `free`: Display system memory usage.
     - Example: `free -m`

10. **Package Management**:
    - `apt` (Debian-based systems) or `yum` (Red Hat-based systems): Install, update, and manage software packages.
      - Example: `sudo apt install package_name`
    - `dpkg` (Debian-based systems) or `rpm` (Red Hat-based systems): Package management at a lower level.
      - Example: `sudo dpkg -i package.deb`

11. **System Control and Services**:
    - `systemctl`: Control systemd services.
      - Example: `sudo systemctl start service_name`
    - `service`: Control System V (SysV) init system services.
      - Example: `sudo service apache2 restart`
    - `shutdown`: Shut down or restart the system.
      - Example: `sudo shutdown -r now`

12. **Monitoring and Logging**:
    - `tail`: Display the last part of a file (e.g., log files).
      - Example: `tail -n 20 /var/log/syslog`
    - `grep`: Search for patterns in files.
      - Example: `grep "error" /var/log/syslog`
    - `journalctl`: Query and display system logs.
      - Example: `journalctl -u nginx.service`

13. **Security and Firewall**:
    - `ufw` or `iptables`: Configure firewall rules.
      - Example: `sudo ufw allow 22/tcp`
    - `sestatus`: Display the status of SELinux.
      - Example: `sestatus`
    - `sudo`: Execute commands with superuser privileges.
      - Example: `sudo command`

14. **Backup and Compression**:
    - `tar`: Archive files into a single file.
      - Example: `tar -czvf archive.tar.gz directory`
    - `gzip`, `bzip2`, `xz`: Compress and decompress files.
      - Example: `gzip file.txt`
    - `rsync`: Synchronize files and directories.
      - Example: `rsync -avz source/ destination/`

15. **Text Processing**:
    - `awk`: Process text files using pattern scanning and processing language.
      - Example: `awk '{print $1}' file.txt`
    - `sed`: Stream editor for filtering and transforming text.
      - Example: `sed 's/old/new/' file.txt`

