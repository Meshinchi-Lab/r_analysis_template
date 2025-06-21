#!/bin/bash 

set -eou 

REPO=$1
TEMPLATE="Meshinchi-Lab/analysis_template"

gh repo create $REPO \
--description "An example R analysis template repo" \
--template $TEMPLATE \
--clone \
--private

# Wait briefly to ensure repo is fully available
sleep 5

# Trigger the repository_dispatch event
gh api repos/$TEMPLATE/dispatches -f "event_type=template-generated"

gh run list