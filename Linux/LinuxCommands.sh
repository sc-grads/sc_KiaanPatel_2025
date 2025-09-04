#!/bin/bash

# Directory Navigation
cd /etc                  # Change to /etc directory
cd ~                    # Go to home directory
cd -                    # Go back to the previous directory
pwd                     # Print current directory path, e.g., /home/user
ls                      # List files in current directory
ls -lh                  # List with human-readable sizes and details
ls -a                   # Show all files, including hidden ones
ls -la                  # Detailed list of all files, including hidden
ls -t                   # List files sorted by time, most recent first
ls -R                   # List files recursively in subdirectories
tree -d                 # Display directory structure in tree format

# File Creation and Removal
touch newfile.txt       # Create an empty file named newfile.txt
mkdir mydir             # Create a directory named mydir
mkdir -p /dir1/dir2/dir3 # Create nested directories /dir1/dir2/dir3
rmdir mydir             # Remove the empty directory mydir
rm file.txt             # Delete file.txt
rm -rf mydir            # Recursively remove mydir and its contents

# File Copying and Moving
cp file.txt file_copy.txt # Copy file.txt to file_copy.txt
cp -r dir1 dir2         # Copy dir1 to dir2 recursively
mv old.txt new.txt      # Rename old.txt to new.txt or move it

# File Viewing
cat file.txt            # Print entire contents of file.txt
more longfile.txt       # View longfile.txt page by page
less longfile.txt       # View longfile.txt with scrolling
head -n 5 file.txt      # Show first 5 lines of file.txt
tail -n 5 file.txt      # Show last 5 lines of file.txt
tail -f log.txt         # Follow log.txt in real-time

# File Searching and Comparison
find /home -name "*.txt" # Find all .txt files in /home
find . -iname "readme*" # Find files named "readme" (case-insensitive)
find . -name "*.txt" -ls # List details of all .txt files
find . -mtime 7         # Find files modified 7 days ago
find . -size +10M       # Find files larger than 10MB
find . -newer ref.txt   # Find files newer than ref.txt
find . -name "*.tmp" -exec rm {} \; # Remove all .tmp files
locate log              # Find files containing "log" using index
grep "error" log.txt    # Search for "error" in log.txt
grep -r "TODO" ~/projects # Recursively search for "TODO" in ~/projects
diff file1.txt file2.txt # Compare file1.txt and file2.txt line by line
sdiff file1.txt file2.txt # Side-by-side comparison of file1.txt and file2.txt
vimdiff file1.txt file2.txt # Visually compare file1.txt and file2.txt in Vim

# File Editing
vi file.txt             # Edit file.txt in Vi
vim file.txt            # Edit file.txt in Vim
view file.txt           # View file.txt in Vim read-only mode

# Permissions and Ownership
chmod 755 script.sh     # Set permissions to 755 (user=rwx, group/others=rx)
chgrp users file.txt    # Change group of file.txt to "users"
chown jane:staff file.txt # Set owner to "jane" and group to "staff" for file.txt
umask 022               # Set umask to 022 (new files 644, dirs 755)
groups                  # Show groups for the current user
id -Gn                  # List group names for the current user

# File Archiving and Compression
tar -cf archive.tar dir # Create a tar archive of dir called archive.tar
gzip file.txt           # Compress file.txt into file.txt.gz
gunzip file.txt.gz      # Uncompress file.txt.gz
zcat file.txt.gz        # Display contents of file.txt.gz
sort file.txt           # Sort lines in file.txt

# File Analysis
file sales.data         # Check the type of sales.data
strings binary.bin      # Extract printable strings from binary.bin
cut -d, -f2 file.csv    # Extract 2nd field from comma-separated file.csv

# System Information
uname -a                # Show all system and kernel info
uptime                  # Display system uptime and load average
df -h                   # Show disk space usage in human-readable format
free -h                 # Show memory usage in human-readable format
du                      # Estimate file and directory usage

# Process Management
ps -e                   # Show all processes
ps -ef                  # Show all processes with full details
ps -eH                  # Display processes in a tree format
ps -e --forest          # Display processes in a tree format (forest style)
ps -u jane              # Show processes for user "jane"
ps aux                  # List all running processes with details
pstree                  # Display processes in a tree format
top                     # Monitor system processes in real-time
htop                    # Enhanced interactive process viewer
jobs                    # Show all background jobs
fg %1                   # Bring job 1 to the foreground
bg %1                   # Resume job 1 in the background
kill -9 1234            # Forcefully kill process with PID 1234
pkill firefox           # Terminate all "firefox" processes
sleep 100 &             # Run sleep 100 in the background

# Shell Customization
alias ll='ls -l'        # Alias 'll' to 'ls -l'
alias                   # List all current aliases
unalias ll              # Remove the 'll' alias
unalias -a              # Remove all aliases
printenv                # Display all environment variables
export MY_VAR="Hello"   # Export MY_VAR with value "Hello"
unset MY_VAR            # Remove MY_VAR from the session
source ~/.bashrc        # Reload .bashrc after editing
which ls                # Show the location of the ls command
clear                   # Clear the terminal display
exit                    # Exit the current terminal session
man ls                  # Show manual for ls command

# Networking
ping google.com         # Ping google.com to check connectivity
ifconfig                # Show network interfaces (deprecated)
ip a                    # Show network interfaces (modern alternative)
netstat -tuln           # List active TCP/UDP ports
ssh user@remote_host    # SSH into user@remote_host
scp file.txt user@remote:/path # Copy file.txt to remote server
sftp user@remote        # Start secure file transfer with remote host
ftp ftp.example.com     # Start a basic FTP session

# Package Management (RPM)
yum search httpd        # Search for "httpd" packages
yum info httpd          # Show details about the httpd package
yum install -y httpd    # Install httpd without prompting
yum remove httpd        # Remove the httpd package
yum upgrade httpd       # Update the httpd package
dnf search nginx        # Search for "nginx" packages (RHEL 8+)
dnf info nginx          # Show details about the nginx package
dnf install -y nginx    # Install nginx without prompting
dnf remove nginx        # Remove the nginx package
dnf upgrade nginx       # Update the nginx package
rpm -qa                 # List all installed RPM packages
rpm -qf /usr/bin/ls     # Find which package owns /usr/bin/ls
rpm -ql httpd           # List files in the httpd package
rpm -ivh package.rpm    # Install package.rpm with verbose output
rpm -e httpd            # Remove the httpd package

# Package Management (DEB)
apt-cache search apache2 # Search for "apache2" packages
apt-cache show apache2  # Show details about the apache2 package
apt-get install -y apache2 # Install apache2 without prompting
apt-get remove apache2  # Remove apache2, leaving config files
apt-get purge apache2   # Purge apache2 and its config files
apt-get update          # Refresh the package index
apt-get upgrade         # Upgrade all packages
apt search nginx        # Search for "nginx" packages
apt install nginx       # Install nginx
apt purge nginx         # Purge nginx and its config
apt update              # Refresh package index
apt upgrade             # Upgrade all packages
apt autoremove          # Remove unused dependencies
dpkg -l                 # List all installed DEB packages
dpkg -S /usr/bin/cat    # Find which package owns /usr/bin/cat
dpkg -L apache2         # List files in the apache2 package
dpkg -i package.deb     # Install package.deb
dpkg -r apache2         # Remove the apache2 package

# Cron Scheduling
crontab mycrontab.txt   # Install crontab from mycrontab.txt
crontab -l              # List current cron jobs
crontab -e              # Edit the crontab
crontab -r              # Remove all cron jobs
