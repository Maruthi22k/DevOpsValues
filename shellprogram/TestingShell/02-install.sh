#!/bin/bash

USERID=$(id -u)
echo "print the current user id: $USERID"

if [ $USERID -ne 0 ]; then
    echo "Please run this script with root user access"
    exit 1
fi

echo "Installing Nginx"
# dnf install nginx -y

if [ $? -ne 0 ]; then
    echo "print the value of the last executed command: $?"
    echo "Installing Nginx ... FAILURE"
    exit 1
else
    echo "Installing Nginx ... SUCCESS"
    echo "print the value of the last executed command: $?"
fi

# dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "Installing MySQL ... FAILURE"
    exit 1
else
    echo "Installing MySQL ... SUCCESS"
    echo "print the value of the last executed command: $?"
fi

# dnf install nodejs -y

if [ $? -ne 0 ]; then
    echo "Installing nodejs ... FAILURE"
    exit 1
else
    echo "Installing nodejs ... SUCCESS"
    echo "print the value of the last executed command: $?"
fi