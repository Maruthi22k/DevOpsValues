#!/bin/bash

START_TIME=$(date +%s)

echo "Start time is = $START_TIME"

sleep=10

END_TIME=$(date +%s)

echo "End time is = $END_TIME"

Total_time=$((END_TIME-START_TIME))

echo "Total Time taken to Execute = $Total_time"