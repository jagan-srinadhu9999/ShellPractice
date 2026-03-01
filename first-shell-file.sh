#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo -e "${G}Hello, World!${N}"

USER_ID=$(id -u)
CURRENT_USER=$(whoami)
CURRENT_HOSTNAME=$(hostname)

echo "Your user ID is: $USER_ID"
echo "Current user: $CURRENT_USER"
echo "Hostname: $CURRENT_HOSTNAME"

# Check if root
if [ "$USER_ID" -eq 0 ]; then

    printf "${G} You are running this script as root user.${N} "
    dnf install nginx -y
    echo -e "${G}nginx installed successfully.${N}"
    nginx -version

else
    echo -e "${R}You are not root. Please run this script as root.${N}"
    exit 1
fi

TIME=$(date)
echo "Current date and time: $TIME"

_uninstall_nginx() {
    echo "Uninstalling nginx..."
    # dnf remove nginx -y
    # echo "nginx uninstalled successfully."

# Define NGINX related packages for Debian/Ubuntu
PACKAGES="nginx nginx-common nginx-full nginx-core"

# 1. Stop NGINX service
echo "Stopping NGINX service..."
sudo systemctl stop nginx
sudo systemctl disable nginx

# 2. Purge NGINX packages and configuration files
# The --purge option removes everything related to the package including config files
echo "Purging NGINX packages and configuration files..."
sudo apt-get purge -y $PACKAGES

# 3. Remove automatically installed dependencies that are no longer needed
echo "Removing unused dependencies..."
sudo apt-get autoremove -y
sudo apt-get clean

# 4. Manually remove any remaining configuration and log directories
# This step is crucial for a clean removal, as package managers sometimes leave non-empty directories
echo "Removing residual configuration and log directories..."
sudo rm -rf /etc/nginx
sudo rm -rf /var/log/nginx
sudo rm -rf /usr/share/nginx

# 5. Verify uninstallation (optional)
echo "Verification: Checking for remaining NGINX packages..."
dpkg -l | grep -i nginx

echo -e "${G}NGINX uninstallation complete.${N}"

}

_uninstall_nginx

TIME=$(date)
echo "Current date and time: $TIME"
