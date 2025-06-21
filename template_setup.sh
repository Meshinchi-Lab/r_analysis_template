#!/bin/bash 

set -eou 

# name of the current repository
REPO=$(git config --get remote.origin.url | sed -E "s/http.+com\/(.+).git/\1/")
Echo "Setting up $REPO"

# Trigger the repository_dispatch event
gh api repos/$REPO/dispatches -f "event_type=template-generated" 

# wait for the test to run
wait 10

# list the gh actions run
gh run list --status success --json status

# pull the changes from the remote repository
git pull 