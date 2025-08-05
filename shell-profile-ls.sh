#!/usr/bin/env bash

# Determine which variant of 'ls' is in the path
if [[ "$(ls --version)" == *"GNU"* ]]                    # GNU's ls supports --version, but BSD's does not
then                                                     # Neither does the ls on Solaris, but I'm not trying to use Solaris
  ID_LS_TYPE="GNU"
else
  ID_LS_TYPE="BSD"
fi

# ls configuration
if [ $ID_LS_TYPE == "GNU" ]                               # GNU 'ls' is common on Linux distributions and can be installed on MacOS
then
  lsOptions='-lhF --color=auto --show-control-chars'      # Some basic defaults for ls. Doing this here so that it overrides any added by system level scripts
fi                                                        #   -l: long format
                                                          #   -h: human readable file sizes
                                                          #   -F: applies classifier symbols
                                                          #   --color=auto: applies color to output when run from a terminal
                                                          #   --show-control-chars: shows non-graphic characters as-is

if [ $ID_LS_TYPE == "BSD" ]                               # BSD 'ls' is what ships natively on MacOS
then
  lsOptions='-lhFGB'                                      # The basic defaults for ls in a form that is functional on BSD
                                                          #   -l: long format
                                                          #   -h: human readable file sizes
                                                          #   -F: applies classifier symbols
                                                          #   -G: applies color to output when run from a terminal
                                                          #   -B: shows non-graphic characters as-is
fi

# shellcheck disable=SC2139
alias ls="ls $lsOptions -gG"                              # My preferred long mode ls
                                                          #   -G: do not show group information
                                                          #   -g: long format without owner information

alias lw='ls -C'                                          # "wide mode" ls
# shellcheck disable=SC2139
alias ll="\ls $lsOptions"                                 # As the 'preferred long mode ls' above but with owner and group information showing
alias dir='ls'                                            # For those days when I'm reverting to the DOS part of my past. :)
