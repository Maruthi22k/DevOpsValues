#!/bin/bash

Number=$(id -u)
if [ $Number -ne 0 ]; then
    echo "Please run proper way ity failure"
    exit 1

else
    echo "Please install Sucess"

dnf install httpd -y

if [$? -ne 0];then
    echo "Install httpd failed"
    exit 1
else 
    echo "Install httpd Sucess"

dnf install mysql -y

if [$? -ne 0];then
    echo "Install failed mysql"
    exit 1
else 
    echo "Install mysql Sucess"

fi
fi
fi