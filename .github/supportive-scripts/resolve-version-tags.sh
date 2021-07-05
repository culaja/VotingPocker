#!/bin/bash

IMAGES_ENV_FILE_PATH=$1
COMMIT_SHA=$2

SHORT_COMMIT_SHA=$(echo "${COMMIT_SHA}" | cut -c1-8)
IMAGES_FOR_RELEASE=$(git tag --points-at "${COMMIT_SHA}" | grep "release=" | sed "s/release=//")
echo "***"
echo "${IMAGES_FOR_RELEASE}"
echo "***"

sed -i "s/=latest/=${SHORT_COMMIT_SHA}/" "$IMAGES_ENV_FILE_PATH"
