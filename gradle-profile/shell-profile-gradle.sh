#!/usr/bin/env bash
echo -e Configuring shell with support for ${Green}gradle${Reset}...
export GRADLE_OPTS=-Dorg.gradle.daemon=false
alias gw='./gradlew'
alias gcc='./gradlew clean check'
alias gccjr='./gradlew clean check jettyRun'
alias gccjrw='./gradlew clean check jettyRunWar'
alias gccr='./gradlew clean check run'

alias subPublish='_id_sub_publish'
function _id_sub_publish() {
  if [ -z "$1" ]; then
    echo "A subproject directory is required for this command"
    exit;
  fi

  ./gradlew "$1":publish
}
