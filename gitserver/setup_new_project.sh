#!/usr/bin/env bash

echo Initialize bare repository for project: $1
mkdir -p /opt/git/$1.git
pushd $1.git
git init --bare
popd
echo done
