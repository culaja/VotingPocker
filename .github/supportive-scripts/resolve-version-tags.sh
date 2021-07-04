#!/bin/bash

IMAGES_ENV_FILE_PATH=$1
SHORT_SHA=$2

sed -i "s/=latest/=${SHORT_SHA}/" "$IMAGES_ENV_FILE_PATH"
