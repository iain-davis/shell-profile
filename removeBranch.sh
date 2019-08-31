#!/bin/bash
set -x;                      # Echo commands to the screen
git branch -D $1
git push origin :$1;
set +x                       # Stop echoing commands
