#!/bin/bash

# Variables
APP_NAME=hello-world-app
BUILD_NUMBER=$1  # Get build number from parameter
UAT_DIR=/var/www/html/$APP_NAME

# Create deployment directory
mkdir -p $UAT_DIR

# Copy built JAR to UAT directory
cp target/$APP_NAME-$BUILD_NUMBER-SNAPSHOT.jar $UAT_DIR/$APP_NAME.jar

# Restart Nginx (if necessary)
# systemctl restart nginx

