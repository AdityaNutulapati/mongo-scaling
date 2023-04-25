#!/bin/bash
xcode-select --install
# set | grep TERM
# curl -fsSL -o install.sh https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh
# ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# /bin/bash install.sh
# nano ~/.bash_profile
# echo "hello"
# export PATH=/usr/local/bin:$PATH
# source ~/.bash_profile
# brew doctor
sudo apt-get install --only-upgrade mongodb-atlas-cli
 # To get the latest package lists
# atlas cluster update $1 --projectId 644298165b26bb5f7b771ce5 --tier $2