#!/bin/bash
#set -o xtrace #enables debug

set -e
source ./ci-helpers.sh

log_task "Install JavaScript tool dependencies"
run_step "npm install"

log_task "Install Ruby tool dependencies"
run_step "gem install --no-ri --no-rdoc awesome_bot"
