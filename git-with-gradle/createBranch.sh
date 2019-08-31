#!/bin/bash
set -x;                      # Echo commands to the screen
git checkout master       && # Checkout master branch
git pull origin master    && # Pull latest commits for the master branch
./gradlew clean check     && # Make sure master branch's tests are passing
git checkout -b $1        && # Create new branch
git push origin $1;          #
set +x                       # Stop echoing commands
