#!/bin/bash

# Stop script if an error occurs
set -e

# Define your Docker repository name
REPOSITORY_HUB="darien0702"

# List of projects or images to update and upload
PROJECTS=("bustruck-service" "users-service")

# Iterate over each project or image
for PROJECT in "${PROJECTS[@]}"
do
    (
    # Change directory to the project directory
    cd "../../$PROJECT"

    # Build the Docker image
    docker build -t $REPOSITORY_HUB/sisrstp-$PROJECT .

    # Tag the image with the latest version
    docker tag $REPOSITORY_HUB/sisrstp-$PROJECT $REPOSITORY_HUB/sisrstp-$PROJECT:latest

    # Push the latest version to the repository
    docker push $REPOSITORY_HUB/sisrstp-$PROJECT:latest

    #Second phase of the script, it will tag the image with the current timestamp and push it to the repository
    #So we can keep track of the versions of the images

    # Get the current timestamp to use as a version tag, e.g. 2020-12-31_23-59-59
    VERSION_TAG=$(date +"%Y-%m-%d_%H-%M-%S")

    # Tag the image with the timestamp as the version
    docker tag $REPOSITORY_HUB/sisrstp-$PROJECT $REPOSITORY_HUB/sisrstp-$PROJECT:$VERSION_TAG

    # Push the version-tagged image to the repository
    docker push $REPOSITORY_HUB/sisrstp-$PROJECT:$VERSION_TAG

    echo "Image $PROJECT updated and uploaded successfully."
    )
done
