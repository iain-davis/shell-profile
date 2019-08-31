#!/bin/bash
echo Configuring shell...
scriptDirectory="$(dirname "${BASH_SOURCE[0]}")"

# Git related configuration
source "$scriptDirectory/git/shell-profile-git.sh"
source "$scriptDirectory/git-with-gradle/shell-profile-git-with-gradle.sh"

# Misc
alias h='history'
alias c='clear'
alias dir='ls'

alias cb='./createBranch.sh'
#alias removeBranch='./removeBranch.sh'
alias createBranch='./createBranch.sh'
alias buildAlpha='./buildAlpha.sh'
alias buildMaster='./buildMaster.sh'

# Register the completion handler for commands that operate on git branches
complete -F _git_branch_complete createBranch.sh
complete -F _git_branch_complete createBranch
complete -F _git_branch_complete buildAlpha.sh
complete -F _git_branch_complete buildAlpha
complete -F _git_branch_complete buildMaster.sh
complete -F _git_branch_complete buildMaster
complete -F _git_branch_complete removeBranch.sh
complete -F _git_branch_complete rb
