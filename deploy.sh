#!/bin/bash
echo "🚀 Deploying Application on $(date)"

# Navigate to project
cd /home/ubuntu/deployment/backend || exit

# Pull latest code
git pull origin main

# Rebuild and restart containers
docker-compose down
docker-compose up -d --build
