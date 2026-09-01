# !#/bin/bash

R=\e[31m   ## Red color code
G=\e[32m  ## Green color code
Y=\e[33m  ## Yellow color code
B=\e[34m  ## Blue color code\

USERID=$(id -u)

LOG_FILE="/var/log/softinstall.log"

if [ $USERID -eq 0 ]; then
    echo -e "$R This is the root user $N"  
    exit 1
fi

VALIDATE(){ # functions receive inputs through args just like shell script args
    if [ $1 -ne 0 ]; then
        echo -e "Installing $2 ... $R FAILURE $N" | tee -a $LOG_FILE      ## what is use of | tee -a $LOG_FILE? answer: The | tee -a $LOG_FILE command is used to append the output of the echo command to a log file while also displaying it on the terminal. The -a option ensures that the output is appended to the log file rather than overwriting it.
        exit 1
    else
        echo -e "Installing $2 ... $G SUCCESS $N" | tee -a $LOG_FILE
    fi
}


dnf list installed nginx  
if [ $? -ne 0 ]; then
    dnf install nginx -y | tee -a $LOG_FILE 
    VALIDATE $? "Nginx"
else
    echo -e "$G Nginx is already installed ... $N" | tee -a $LOG_FILE
fi

dnf list installed httpd

if [ $? -ne 0 ]; then
    dnf install httpd -y | tee -a $LOG_FILE   ## appending logs to the  httpd installation logs to the log file
    VALIDATE $? "Httpd"
else
    echo -e "$G Httpd is already installed ... $N" | tee -a $LOG_FILE
fi


## what is use of -e in echo command? answer: The -e option in the echo command enables the interpretation of backslash escapes, allowing for formatting and special characters to be displayed correctly in the output.
## what is use of | tee -a $LOG_FILE? answer: The | tee -a $LOG_FILE command is used to append the output of the dnf install nginx -y command to a log file 
