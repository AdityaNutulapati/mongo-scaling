#!/bin/bash
echo "hello"
 # To get the latest package lists
 brew install atlas
atlas cluster update $1 --projectId 644298165b26bb5f7b771ce5 --tier $2