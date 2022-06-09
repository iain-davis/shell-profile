#!/bin/bash
echo -e Configuring shell with support for ${Green}gradle${Reset}...
export GRADLE_OPTS=-Dorg.gradle.daemon=false
alias gw='./gradlew'
alias gcc='./gradlew clean check'
alias gccr='./gradlew clean check jettyRun'
alias gccrw='./gradlew clean check jettyRunWar'
