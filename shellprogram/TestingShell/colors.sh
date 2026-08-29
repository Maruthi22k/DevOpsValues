# !#/bin/bash

R=\e[31m   ## Red color code
G=\e[32m  ## Green color code
Y=\e[33m  ## Yellow color code
B=\e[34m  ## Blue color code
M=\e[35m  ## Magenta color code
C=\e[36m  ## Cyan color code
W=\e[37m  ## White color code

USERID=$(id -u)
echo -e "$R print the current user id: $USERID $N"
