# !#/bin/bash

R=\e[31m   ## Red color code
G=\e[32m  ## Green color code
Y=\e[33m  ## Yellow color code
B=\e[34m  ## Blue color code
M=\e[35m  ## Magenta color code
C=\e[36m  ## Cyan color code
W=\e[37m  ## White color code

USERID=$(id -u)

if [$USERID -eq 0];then
    echo -e "$G This is the root user $N"
    exit 1
fi

VALIDATE (){
    if [$1 -eq 0];then
        echo -e "$G $2 ... SUCCESS $N"
    else
        echo -e "$R $3 ... FAILURE $N"
    fi
}


dnf list installed nginx  ## meaning of this command is to check whether nginx is installed or not. If it is installed then it will return the package name and version otherwise it will return nothing.

if [$? -ne 0];then
    dnf install nginx -y
    VALIDATE $? "Installing Nginx ... FAILURE"
    exit 1
else
    echo -e "$G Installing already installed Nginx ...  $N"
fi

dnf list installed almalinux-release
if [$? -ne 0];then
    dnf install almalinux-release -y
    VALIDATE $? "Installing Almalinux Release ... FAILURE"
    exit 1
else
    VALIDATE 0 "Installing already installed Almalinux Release ... SUCCESS"
fi

