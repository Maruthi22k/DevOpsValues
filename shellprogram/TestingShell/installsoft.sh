#!/bin/bash

echo "Installing software..."

USERID=$(id -u)
R=e


if [ $USERID -eq 0 ]; then
    echo "This is the root user"
    exit 1
fi


VALIDATE(){
    if [$1 -eq 0 ];then
        echo "$2 ...success"
    fi
}


dnf list installed nginx

if [ $? -eq 0 ]; then
    echo "Nginx is already installed .. Exiting" >>
    VALIDATE 1 "Nginx is already installed .. Exiting"
fi
    



dnf install nginx -y
validate $? "Nginx installation failed .. Exiting"

dnf list installed httpd 
validate $? "Httpd is already installed .. Exiting"

dnf install httpd -y
validate $? "Httpd installation failed .. Exiting"





