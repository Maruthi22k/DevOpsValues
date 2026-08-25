#!/bin/bash

POD="$1"

if [ -z "$POD" ]; then
    echo "Usage: $0 <pod-name>"
    exit 1
fi

STATUS=$(kubectl get pod "$POD" \
    -o jsonpath='{.status.phase}' 2>/dev/null)

if [ "$STATUS" = "Running" ]; then
    echo "Pod $POD is Running"
else
    echo "Pod $POD is NOT Running"
    echo "Current status: $STATUS"
    exit 1
fi

## chmod +x check-pod.sh

## ./check-pod.sh nginx-pod