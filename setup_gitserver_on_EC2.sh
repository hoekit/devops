!#/user/bin/env bash
## Run this script on the gitserver

# Install git if it does not exist
which git || sudo apt-get install -y git-core 

# Create user "git"
sudo adduser git
su git
mkdir ~/.ssh

# Create git root folder
sudo mkdir /opt/git
sudo chown git /opt/git

# Initialize project's git repository
# mkdir /opt/git/project.git
# cd /opt/git/project.git
# git init --bare

