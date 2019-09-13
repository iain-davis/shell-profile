#!/bin/bash
if [ -z "$1" ]
then
    echo "Specify branch to build for master"
    exit;
fiset -x;                    # Echo commands to the screen
git checkout $1         && # Checkout the feature branch
git pull origin $1      && # Pull latest commits for the feature branch
./gradlew clean check   && # Confirm branch's tests are passing
git checkout master     && # Switch to master
git pull origin master  && # Pull latest commits for the master branch
./gradlew clean check   && # confirm that master's tests are passing
git checkout $1         && # Switch to the feature branch
git pull origin $1      && # Pull latest commits for the feature branch
git merge master        && # Merge master into the feature branch
./gradlew clean check   && # Confirm tests still pass after merge
git checkout master     && # Switch to the master branch
git pull origin master  && # Pull latest commits for the master branch
./gradlew clean check   && # Confirm tests are passing on master branch
git merge $1            && # Merge feature branch into the master branch
./gradlew clean check   && # Confirm tests are still passing post merge
git push origin master;    # Push changes to master
set +x                     # Stop echoing commands
