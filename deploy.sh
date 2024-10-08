APP_NAME=my-java-app
UAT_WORKSPACE=/var/lib/jenkins/workspace/my-java-app-uat
PRODUCTION_WORKSPACE=/var/lib/jenkins/workspace/my-java-app-production
JAR_FILE=$UAT_WORKSPACE/target/$APP_NAME-1.0-SNAPSHOT.jar

echo "Checking if UAT workspace exists: $UAT_WORKSPACE"
if [ ! -d "$UAT_WORKSPACE" ]; then
    echo "Error: UAT workspace not found!"
    exit 1
fi

echo "Checking if JAR file exists: $JAR_FILE"
if [ -f "$JAR_FILE" ]; then
    echo "Copying $JAR_FILE to production workspace."
    cp "$JAR_FILE" "$PRODUCTION_WORKSPACE/my-java-app.jar"
else
    echo "Error: JAR file not found in UAT workspace!"
    ls -al $UAT_WORKSPACE/target
    exit 1
fi
