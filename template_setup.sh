#!/bin/bash 

set -eou 

# name of the current repository
REPO=$(git config --get remote.origin.url | sed -E "s/http.+com\/(.+).git/\1/")
Echo "Setting up $REPO"

# Trigger the repository_dispatch event
gh api repos/$REPO/dispatches -f "event_type=template-generated" &

# # Capture its PID
# CMD_PID=$!
# echo "The process ID is: $CMD_PID"

# # wait for it to finish
# wait $CMD_PID

sleep 10s

# list the gh actions run
gh run list --status success --json status

# pull the changes from the remote repository
git pull 