#!/bin/bash
echo "hello"
apt-get update  # To get the latest package lists
apt-get install atlas -y
atlas cluster update $1 --projectId 644298165b26bb5f7b771ce5 --tier $2