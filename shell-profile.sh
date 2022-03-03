#!/bin/bash
scriptDirectory=$(dirname "$(realpath -s "$BASH_SOURCE[0]")") # Get the directory in which the main shell script resides. With thanks to Darshan Rivka Whittle @ https://stackoverflow.com/questions/4774054/reliable-way-for-a-bash-script-to-get-the-full-path-to-itself
echo Configuring shell using scripts in $scriptDirectory

# Start by clearing all aliases coming from other places
unalias -a

unameString=`uname`
source "$scriptDirectory/git-profile/shell-profile-git.sh"
source "$scriptDirectory/gradle-profile/shell-profile-gradle.sh"
source "$scriptDirectory/git-with-gradle/shell-profile-git-with-gradle.sh"

source "$scriptDirectory/node-profile/node-profile.sh"

# ls configuration
if [[ "Darwin" == "$unameString" ]]
then
  lsOptions='-lhFGB'                                      # The basic defaults for ls in a form that is functional on BSD and MacOS
                                                          #   -l: long format
                                                          #   -h: human readable file sizes
                                                          #   -F: applies classifier symbols
                                                          #   -G: applies color to output when run from a terminal
                                                          #   -B: shows non-graphic characters as-is
else
  lsOptions='-lhF --color=auto --show-control-chars'      # Some basic defaults for ls. Doing this here so that it overrides any added by system level scripts
fi                                                        #   -l: long format
                                                          #   -h: human readable file sizes
                                                          #   -F: applies classifier symbols
                                                          #   --color=auto: applies color to output when run from a terminal
                                                          #   --show-control-chars: shows non-graphic characters as-is

alias ls="ls $lsOptions -gG"                              # My preferred long mode ls
                                                          #   -G: do not show group information
                                                          #   -g: long format without owner information

alias lw='ls -C'                                          # "wide mode" ls
alias ll="\ls $lsOptions"                                 # As the 'preferred long mode ls' above but with owner and group information showing
alias dir='ls'                                            # For those days when I'm reverting to the DOS part of my past. :)

# Misc
alias h='history'                                         # Display bash command history
alias c='clear'                                           # Clear the console
alias killtask='taskkill -f -im'                          # Kill a process on windows. Example: killtask java.exe
