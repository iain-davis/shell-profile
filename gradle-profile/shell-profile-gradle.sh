echo Setting up gradle related commands...
export GRADLE_OPTS=-Dorg.gradle.daemon=false
alias gcc='./gradlew clean check'
alias gccr='./gradlew clean check jettyRun'
alias gccrw='./gradlew clean check jettyRunWar'
