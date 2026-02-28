#!/bin/bash

echo "Hello, World!"

USER_ID=$(id -u)
CURRENT_USER=$(whoami)
CURRENT_HOSTNAME=$(hostname)

echo "Your user ID is: $USER_ID"
echo "Current user: $CURRENT_USER"
echo "Hostname: $CURRENT_HOSTNAME"

# Check if root
if [ "$USER_ID" -eq 0 ]; then
    echo "You are running this script as root user."
    dnf install nginx -y
    echo "nginx installed successfully."
else
    echo "You are not root. Please run this script as root."
    exit 1
fi

TIME=$(date)
echo "Current date and time: $TIME"