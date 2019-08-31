#!/bin/bash
# This script assumes that scriptDirectory has already been set and depends on shell-profile-git.sh

# Aliased scripts that take a branch as an argument
alias createBranch='$scriptDirectory/createBranch.sh'
alias removeBranch='$scriptDirectory/removeBranch.sh'

# Setup tab completion for the aliases
complete -F _git_branch_complete removeBranch
