#!/bin/bash
#---------------------------------------------------------
#
# Push and tag the newly created Docker image.
#
#---------------------------------------------------------
tutor images push credentials
docker tag ${AWS_ECR_REGISTRY_CREDENTIALS}/${AWS_ECR_REPOSITORY_CREDENTIALS}:${REPOSITORY_TAG_CREDENTIALS} ${AWS_ECR_REGISTRY_CREDENTIALS}/${AWS_ECR_REPOSITORY_CREDENTIALS}:latest
docker push ${AWS_ECR_REGISTRY_CREDENTIALS}/${AWS_ECR_REPOSITORY_CREDENTIALS}:latest
