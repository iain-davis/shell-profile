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
