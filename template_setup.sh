#!/bin/bash 

set -eou 

# name of the template
TEMPLATE="Meshinchi-Lab/analysis_template"

# Trigger the repository_dispatch event
gh api repos/$TEMPLATE/dispatches -f "event_type=template-generated"

gh run list