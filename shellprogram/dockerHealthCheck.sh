
#!/bin/bash

CONTAINERS=("nginx" "redis" "mysql")

for CONTAINER in "${CONTAINERS[@]}"; do

    STATUS=$(docker inspect \
        --format '{{.State.Status}}' \
        "$CONTAINER" 2>/dev/null)

    if [ "$STATUS" = "running" ]; then
        echo "$CONTAINER : RUNNING"
    else
        echo "$CONTAINER : STOPPED"
    fi

done

## Docker Container Health