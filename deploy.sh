#!/bin/bash

# Variables
APP_NAME=my-java-app
BUILD_DIR=target  # Change this to the output directory of your build process
UAT_DIR=/var/www/html/$APP_NAME/uat
PROD_DIR=/var/www/html/$APP_NAME/prod

# Create deployment directories if they don't exist
mkdir -p $UAT_DIR
mkdir -p $PROD_DIR

# Copy built JAR file to the UAT directory
cp $BUILD_DIR/$APP_NAME-*.jar $UAT_DIR/$APP_NAME.jar

# Restart Nginx to serve the updated application (if necessary)
systemctl restart nginx


