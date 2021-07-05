#!/bin/bash

IMAGES_ENV_FILE_PATH=$1
COMMIT_SHA=$2

SHORT_COMMIT_SHA=$(echo "${COMMIT_SHA}" | cut -c1-8)
IMAGES_FOR_RELEASE=$(git tag --points-at "${COMMIT_SHA}" | grep "release=" | sed "s/release=//")
echo "***"
while read -r IMAGE_FOR_RELEASE
do
   sed -i "s/${IMAGE_FOR_RELEASE}=latest/${IMAGE_FOR_RELEASE}=release-${SHORT_COMMIT_SHA}/" "$IMAGES_ENV_FILE_PATH"
done <<< "$IMAGES_FOR_RELEASE"
cat "$IMAGES_ENV_FILE_PATH"
echo "***"

sed -i "s/=latest/=${SHORT_COMMIT_SHA}/" "$IMAGES_ENV_FILE_PATH"
