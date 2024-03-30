#!/bin/bash

# Stop script if an error occurs
set -e

# This script is used to pull the latest changes from the remote repository
REPOSITORIES=("bustruck-service" "users-service" "Tramoove_app" "infra")


for REPOSITORY in "${REPOSITORIES[@]}"
# Iterate over each repository and do git fetch then git pull
do
    (
    # Change directory to the repository directory
    cd "../../$REPOSITORY"
    # Fetch the latest changes
    git fetch
    # Pull the latest changes
    #git pull
    #echo "Repository $REPOSITORY updated successfully."
    )
done
