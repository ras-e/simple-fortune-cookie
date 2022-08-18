#!/bin/bash
[[ -z "${GIT_COMMIT}" ]] && Tag='local' || Tag="${GIT_COMMIT::8}"
[[ -z "${docker_username}" ]] && DockerRepo='' || DockerRepo="${docker_username}/"
docker build -t "${DockerRepo}backend:latest-stag" -t "${DockerRepo}backend-$Tag" backend/
docker build -t "${DockerRepo}frontend:latest-stag" -t "${DockerRepo}frontend-$Tag" frontend/

