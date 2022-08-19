#!/bin/bash
echo "$docker_password" | docker login --username "$docker_username" --password-stdin
docker push "$docker_username/backend-$Tag" 
docker push "$docker_username/backend:latest-stag" 
docker push "$docker_username/frontend-$Tag" 
docker push "$docker_username/frontend:latest-stag" &
wait
