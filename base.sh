#!/usr/bin/env bash

# /opt/lxd-executor/base.sh

#CUSTOM_ENV_CI_BUILD_REF_NAME=stretch-unstable
#CUSTOM_ENV_CI_BUILD_REF_SLUG=stretch-unstable
#CUSTOM_ENV_CI_DEFAULT_BRANCH=stretch-unstable
#CUSTOM_ENV_CI_JOB_NAME=build1
#CUSTOM_ENV_CI_COMMIT_REF_SLUG=stretch-unstable
#CUSTOM_ENV_CI_BUILD_STAGE=pre-postinstall
#CUSTOM_ENV_CI_JOB_STAGE=pre-postinstall
#CUSTOM_ENV_CI_BUILD_REF_NAME=stretch-unstable
#CUSTOM_ENV_CI_BUILD_NAME=build1
#CUSTOM_ENV_CI_PROJECT_TITLE=yunohost
#CUSTOM_ENV_CI_RUNNER_EXECUTABLE_ARCH=linux/amd64
#CUSTOM_ENV_CI_PROJECT_NAMESPACE=yunohost
#CUSTOM_ENV_CI_COMMIT_REF_NAME=stretch-unstable
#CUSTOM_ENV_CI_PROJECT_NAME=yunohost
#CUSTOM_ENV_CI_PROJECT_DIR=/builds/yunohost/yunohost
CONTAINER_ID="runner-$CUSTOM_ENV_CI_RUNNER_ID-project-$CUSTOM_ENV_CI_PROJECT_ID-concurrent-$CUSTOM_ENV_CI_CONCURRENT_PROJECT_ID-$CUSTOM_ENV_CI_JOB_ID"
DEBIAN_VERSION="$CUSTOM_ENV_DEBIAN_VERSION"
DEBIAN_VERSION=$(echo $CUSTOM_ENV_CI_JOB_IMAGE | cut -d':' -f1)
if [ -z "$DEBIAN_VERSION" ]
then
    DEBIAN_VERSION="stretch"
fi
SNAPSHOT_NAME=$(echo $CUSTOM_ENV_CI_JOB_IMAGE | cut -d':' -f2)
if [ -z "$SNAPSHOT_NAME" ]
then
    SNAPSHOT_NAME="after-postinstall"
fi
PROJECT_DIR="$CUSTOM_ENV_CI_PROJECT_DIR"
PROJECT_NAME="$CUSTOM_ENV_CI_PROJECT_NAME"