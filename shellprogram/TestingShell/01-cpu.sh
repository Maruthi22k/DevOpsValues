
#!/bin/bash
echo "The current running script is: $0"
echo "Hello, $1!"

if [[ $# -ne 2 ]];then

    echo "Usage: validate.sh [username] [password]"
    exit 1
fi