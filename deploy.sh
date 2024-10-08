#!/bin/bash

# Variables
APP_NAME=my-java-app  # Change this to match the artifact name in pom.xml
BUILD_DIR=target      # Maven's default output directory
UAT_DEPLOY_DIR=/var/lib/jenkins/workspace/my-java-app-uat

# Create deployment directory if it doesn't exist
mkdir -p $UAT_DEPLOY_DIR

# Copy built JAR file to the UAT directory
cp $BUILD_DIR/$APP_NAME-*.jar $UAT_DEPLOY_DIR/$APP_NAME.jar

# Restart Nginx to serve the updated application
sudo systemctl restart nginx
