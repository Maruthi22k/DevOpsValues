#! /bin/bash/

USERID=$(id -u)
echo "print the current user id: $USERID"

if [$USERID -ne 0];then
    echo "Please run this script with root user access"
    exit 1
fi

VALIDATION (){
    if [$1 -eq 0];then
        echo "$2 ... SUCCESS"
    else
        echo "$2 ... FAILURE"
}


dnf install nginx -y
VALIDATION $? "Installing Nginx"

dnf stop nginx -y
VALIDATION $? "Stopping Nginx"

dnf disable nginx -y
VALIDATION $? "Disabling Nginx"
