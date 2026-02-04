#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "root user access required"
    exit 1
else
    echo "you are root user"

fi

validation(){

    if [ $1 -ne 0 ]; then
        echo "you most not install software take root user"
        exit 1
    else
        echo "you are root user you can install software"

    fi
}

dnf install nginx -y
validation $? "nginx installation "

dnf install mysql -y
validation $? "mysql installation "

dnf install node.js -y
validation $? "node.js installation "