#!/bin/bash 

set -eou 

# name of the current repository
REPO=$(git config --get remote.origin.url | sed -E "s/http.+com\/(.+).git/\1/")

# Trigger the repository_dispatch event
gh api repos/$REPO/dispatches -f "event_type=template-generated"

gh run list