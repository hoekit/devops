#!/usr/bin/env bash

echo Initialize bare repository for project: $1

# TODO: No error checking for undefined arguments
sudo -u git mkdir -p /opt/git/$1.git
pushd /opt/git/$1.git && sudo -u git git init --bare
popd
echo done
