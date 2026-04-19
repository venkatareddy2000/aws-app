#!/bin/bash

echo "Starting backup process..."

DEPLOY_DIR="/home/ec2-user/deployments"
BACKUP_DIR="$DEPLOY_DIR/backup"

mkdir -p $BACKUP_DIR

FILE="$DEPLOY_DIR/aws-app.jar"

if [ -f "$FILE" ]; then
    DATE=$(date +%d-%m-%Y)
    
    BACKUP_FILE="$BACKUP_DIR/aws-app-$DATE.jar"
    
    mv $FILE $BACKUP_FILE
    
    echo "Backup created: $BACKUP_FILE"
else
    echo "No existing JAR found, skipping backup"
fi