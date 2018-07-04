#!/bin/bash
#set -o xtrace #enables debug

set -e
source ./ci-helpers.sh

log_task "Check for linting issues"
run_step "npm run lint"

log_task 'Check for spelling mistakes'
run_step "npm run spellcheck"

log_task 'Check for broken internal links (TODO: REPLACE IT, because it detects false positives)'
run_step "npm run internalbroken"

log_task 'Check for broken external links'
run_step "npm run externalbroken"
