#!/bin/bash
echo "Beginning build for the alphaTest branch"

if [ -z "$1" ]
then
    echo "Specify branch to build for alpha"
    exit;
fi

# With thanks to: https://stackoverflow.com/a/25149786/24700
if [[ `git status --porcelain` ]]; then
  echo "There are uncommitted changes. Commit or toss before continuing."
  exit;
fi

set -x;                       # Echo commands to the screen
git checkout $1            && # Checkout the feature branch
git pull origin $1         && # Pull latest commits for the feature branch
./gradlew clean check      && # Confirm branch's tests are passing
git checkout master        && # Switch to master
git pull origin master     && # Pull latest commits for the master branch
./gradlew clean check      && # confirm that master's tests are passing
git checkout $1            && # Switch to the feature branch
git pull origin $1         && # Pull latest commits for the feature branch
git merge master           && # Merge master into the feature branch
./gradlew clean check      && # Confirm tests still pass after merge
git push origin $1         && # Push merged changes to the feature branch
git checkout alphaTest     && # Switch to the alpha branch
git pull origin alphaTest  && # Pull latest commits for the alpha branch
./gradlew clean check      && # Confirm tests are passing on alpha branch
git merge $1               && # Merge feature branch into the alpha branch
./gradlew clean check      && # Confirm tests are still passing post merge
git push origin alphaTest;    # Push changes to alpha
set +x                        # Stop echoing commands
