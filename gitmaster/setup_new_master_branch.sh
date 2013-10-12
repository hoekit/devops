#!/usr/bin/env bash

read "Enter git server (e.g. git@gitserver:path/to/project.git): " GITSVR
git init
git add .
git commit -m "Initial commit"
git remote add origin $GITSVR
git push origin master
