#! /bin/bash/

USERID=$(id -u)

if [$USERID -ne 0];then
    echo "Please run this script with root user access"
    exit 1
fi

sudo systemctl status nginx
VALIDATE $? "Installing Nginx ... SUCCESS"
sudo systemctl stop nginx
VALIDATE $? "Stopping Nginx ... SUCCESS"
sudo systemctl disable nginx
VALIDATE $? "Disabling Nginx ... SUCCESS"



VALIDATE (){
    if [$1 -eq 0];then
        echo "$2 ... SUCCESS"
    else
        echo "$3 ... FAILURE"
    fi
}