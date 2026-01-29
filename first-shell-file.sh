#!/bin/bash

echo "Hello, World!"

USER_ID=$(id -u)
Current_User=$(whoami)
Currebynt_Hostname=$(hostname)
Current
echo "Your user ID is: $USER_ID"

if [ USER_ID -eq 0 ]; then
    echo "You are running this script as the root user."
else
    echo "You are running this script as a regular user."
fi

Time = $(date)
echo "Current date and time: $Time"

if[$Current_User -ne 0]; then
    echo "You are not root user, installing nginx..."
    echo "check user name $Current_User"
    sudo su -
dnf install nginx -y
fi