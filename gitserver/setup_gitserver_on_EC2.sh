!#/user/bin/env bash
## Run this script on the gitserver

# Install git if it does not exist
which git || sudo apt-get install -y git-core 

# Create user "git" and .ssh subdirectory and empty ssh authorized_keys file
sudo adduser git
sudo -u git mkdir -p ~git/.ssh
sudo -u git touch ~git/.ssh/authorized_keys

# Create git root folder
sudo mkdir -p /opt/git
sudo chown git /opt/git

# Initialize project's git repository
# mkdir /opt/git/project.git
# cd /opt/git/project.git
# git init --bare

# Reverse steps above by removing
# sudo rm -r /opt/git
# sudo deluser --remove-all-files git

