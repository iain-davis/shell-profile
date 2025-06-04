#!/bin/bash
echo -e Configuring shell with support for ${Green}gradle${Reset}...
export GRADLE_OPTS=-Dorg.gradle.daemon=false
alias gw='./gradlew'
alias gcc='./gradlew clean check'
alias gccr='./gradlew clean check jettyRun'
alias gccrw='./gradlew clean check jettyRunWar'
alias subPublish='_id_sub_publish'

function _id_sub_publish() {
  if [ -z "$1" ]; then
    echo "A subproject directory is required for this command"
    exit;
  fi

  ./gradlew "$1":publish
}
