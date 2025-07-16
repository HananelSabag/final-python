#!/bin/bash
cd /home/ec2-user/app

# Stop any previous container if running
docker stop flask-app || true
docker rm flask-app || true

# Build the image and run it
docker build -t flask-app .
docker run -d -p 5000:5000 --name flask-app flask-app 