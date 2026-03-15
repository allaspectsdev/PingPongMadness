#!/bin/bash
# Deploy Ping Pong (Madeline) to pingpongmadness.com
# Usage: ./deploy.sh

SERVER="root@172.233.144.78"
REMOTE_DIR="/var/www/pingpongmadness.com"
DIR="$(dirname "$0")"

echo "Deploying to pingpongmadness.com..."
scp -o StrictHostKeyChecking=no \
  "$DIR/index.html" \
  "$DIR/og-image.png" \
  "$DIR/apple-touch-icon.png" \
  "$DIR/favicon.ico" \
  "$DIR/favicon-32x32.png" \
  "$SERVER:$REMOTE_DIR/"

if [ $? -eq 0 ]; then
  echo "Deployed successfully!"
else
  echo "Deploy failed!"
  exit 1
fi
