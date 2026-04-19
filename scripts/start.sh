#!/bin/bash

echo "Starting application"
cd /home/ec2-user/deployments/
nohup java -jar aws-app.jar > aws-app.out 2>&1 &