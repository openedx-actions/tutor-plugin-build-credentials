#!/bin/bash
#---------------------------------------------------------
#
# - Download and tutor-install the MFE plugin.
# - Set the URL of the Docker image so that we can push to a
#   public repository in a later step.
# - build the environment files
#
#---------------------------------------------------------

pip install git+https://github.com/lpm0073/tutor-contrib-credentials@v13.0.2
tutor plugins enable credentials
tutor config save --set CREDENTIALS_DOCKER_IMAGE=${DOCKER_IMAGE}
