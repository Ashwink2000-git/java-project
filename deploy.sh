#!/bin/bash

# Variables
APP_NAME=my-java-app # Change this to your application's name (as defined in your pom.xml)
BUILD_DIR=target     # Maven's default output directory
UAT_DIR=/var/www/html/$APP_NAME/uat
PROD_DIR=/var/www/html/$APP_NAME/prod

# Create deployment directories if they don't exist
mkdir -p $UAT_DIR
mkdir -p $PROD_DIR

# Copy built JAR file to the UAT directory
cp $BUILD_DIR/$APP_NAME-*.jar $UAT_DIR/$APP_NAME.jar

# Restart Nginx to serve the updated application (if necessary)
systemctl restart nginx


