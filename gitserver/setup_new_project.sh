#!/usr/bin/env bash

# Request project name
read -p "Enter project name: " PRJ

# Create git repository
sudo -u git mkdir -p /opt/git/$PRJ.git

# Initialize git repository
pushd /opt/git/$PRJ.git && sudo -u git git init --bare
popd
