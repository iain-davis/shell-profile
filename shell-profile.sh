#!/bin/bash
# Get the directory in which the main shell script resides. With thanks to Darshan Rivka Whittle @ https://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself
# For this to work on macOS, 'realpath' needs to be installed: brew install coreutils
scriptDirectory=$(dirname "$(realpath -s "${BASH_SOURCE[0]}")")
source "$scriptDirectory/shell-profile-color.sh"
echo -e Configuring shell using scripts in ${Green}"$scriptDirectory"${Reset}...

# Start by clearing all aliases coming from other places
unalias -a

source "$scriptDirectory/git-profile/shell-profile-git.sh"
source "$scriptDirectory/gradle-profile/shell-profile-gradle.sh"
source "$scriptDirectory/git-with-gradle/shell-profile-git-with-gradle.sh"
source "$scriptDirectory/node-profile/node-profile.sh"
source "$scriptDirectory/shell-profile-ls.sh"

# Misc
alias h='history'                                         # Display bash command history
alias c='clear'                                           # Clear the console
alias killtask='taskkill -f -im'                          # Kill a process on windows. Example: killtask java.exe

export PATH="/c/Program Files/Terraform:$PATH"
