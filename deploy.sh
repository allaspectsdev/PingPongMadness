#!/bin/bash
# Deploy Ping Pong (Madeline) to pingpongmadness.com
# Usage: ./deploy.sh

SERVER="root@172.233.144.78"
REMOTE_PATH="/var/www/pingpongmadness.com/index.html"
LOCAL_PATH="$(dirname "$0")/index.html"

echo "Deploying to pingpongmadness.com..."
scp -o StrictHostKeyChecking=no "$LOCAL_PATH" "$SERVER:$REMOTE_PATH"

if [ $? -eq 0 ]; then
  echo "Deployed successfully!"
else
  echo "Deploy failed!"
  exit 1
fi
