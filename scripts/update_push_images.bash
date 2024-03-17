#!/bin/bash

# Stop script if an error occurs
set -e

# Define your Docker repository name
REPOSITORY="sisrstp"

# List of projects or images to update and upload
PROJECTS=("bustruck-service" "users-service")

# Iterate over each project or image
for PROJECT in "${PROJECTS[@]}"
do
    (
    # Change directory to the project directory
    cd "../../$PROJECT"

    # Build the Docker image
    docker build -t $REPOSITORY/$PROJECT .

    # Tag the image with the latest version
    docker tag $REPOSITORY/$PROJECT $REPOSITORY/$PROJECT:latest

    # Push the latest version to the repository
    docker push $REPOSITORY/$PROJECT:latest

    # Get the current timestamp to use as a version tag
    VERSION_TAG=$(date +"%Y%m%d%H%M%S")

    # Tag the image with the timestamp as the version
    docker tag $REPOSITORY/$PROJECT $REPOSITORY/$PROJECT:$VERSION_TAG

    # Push the version-tagged image to the repository
    docker push $REPOSITORY/$PROJECT:$VERSION_TAG

    echo "Image $PROJECT updated and uploaded successfully."
    )
done
