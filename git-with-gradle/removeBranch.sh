#!/bin/bash
set -x;                      # Echo commands to the screen
git branch -D $1             # Delete local replica of the branch
git push origin :$1;         # Delete remote replica of the branch
set +x                       # Stop echoing commands
