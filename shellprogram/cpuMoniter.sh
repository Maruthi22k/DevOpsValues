#!/bin/bash

CPU=$(top -bn1 | awk '/Cpu\(s\)/ {print 100 - $8}')
MEM=$(free | awk '/Mem:/ {printf "%.0f", $3/$2 * 100}')
DISK=$(df / | awk 'NR==2 {gsub("%",""); print $5}')

echo "CPU Usage  : ${CPU}%"
echo "Memory     : ${MEM}%"
echo "Disk Usage : ${DISK}%"

if (( ${CPU%.*} > 80 )); then
    echo "WARNING: High CPU usage"
fi

if [ "$MEM" -gt 80 ]; then
    echo "WARNING: High Memory usage"
fi

if [ "$DISK" -gt 80 ]; then
    echo "WARNING: High Disk usage"
fi

