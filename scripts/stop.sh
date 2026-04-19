#!/bin/bash

echo "Stopping application"
pkill -f aws-app.jar || true