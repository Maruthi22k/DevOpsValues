#!/bin/bash

LOG_FILE="/var/log/app.log"

tail -Fn0 "$LOG_FILE" | while read -r LINE
do
    if echo "$LINE" | grep -E "ERROR|CRITICAL|FAILED" >/dev/null; then
        echo "ALERT: $LINE"
    fi
done


## Explanation: This script monitors a log file for lines containing "ERROR", "CRITICAL", or "FAILED" and prints an alert message for each match.
# tail -Fn0 "$LOG_FILE" | while read -r LINE    --> This command uses `tail` to follow the log file in real-time, and for each new line read, it executes the while loop.

## End of file: shellprogram/Moniterlogs.sh

