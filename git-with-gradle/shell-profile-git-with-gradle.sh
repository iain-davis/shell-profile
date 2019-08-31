#!/bin/bash
echo Setting up git-gradle combination commands...
# This script assumes that scriptDirectory has already been set and depends on shell-profile-git.sh

# Aliased scripts that take a branch as an argument that need tab completion
alias cb='"$scriptDirectory/git-with-gradle/createBranch.sh"'
alias createBranch='"$scriptDirectory/git-with-gradle/createBranch.sh"'
alias removeBranch='"$scriptDirectory/git-with-gradle/removeBranch.sh"'
alias buildAlpha='"$scriptDirectory/git-with-gradle/buildAlpha.sh"'
alias buildMaster='"$scriptDirectory/git-with-gradle/buildMaster.sh"'

# Setup tab completion for the aliases
complete -F _git_branch_complete cb
complete -F _git_branch_complete createBranch
complete -F _git_branch_complete removeBranch
complete -F _git_branch_complete buildAlpha
complete -F _git_branch_complete buildMaster
