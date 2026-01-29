#!/bin/bash

echo "Hello, World!"

USER_ID=$(id -u)
echo "Your user ID is: $USER_ID"

if [ USER_ID -eq 0 ]; then
    echo "You are running this script as the root user."
else
    echo "You are running this script as a regular user."
fi

