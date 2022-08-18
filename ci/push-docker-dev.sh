#!/bin/bash
echo "$docker_password" | docker login --username "$docker_username" --password-stdin
docker push "$docker_username/backend-$Tag-${GIT_COMMIT::8}" 
docker push "$docker_username/backend:latest-dev" 
docker push "$docker_username/frontend-$Tag-${GIT_COMMIT::8}" 
docker push "$docker_username/frontend:latest-dev" &
wait
