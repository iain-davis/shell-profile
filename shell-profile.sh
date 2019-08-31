#!/bin/bash
scriptDirectory=$(dirname "$(realpath -s "$BASH_SOURCE[0]")") # Get the directory in which the main shell script resides. With thanks to Darshan Rivka Whittle @ https://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself
echo Configuring shell using scripts in $scriptDirectory

# Git related configuration
source "$scriptDirectory/git/shell-profile-git.sh"
source "$scriptDirectory/git-with-gradle/shell-profile-git-with-gradle.sh"

# Misc
alias h='history'
alias c='clear'
alias dir='ls'
