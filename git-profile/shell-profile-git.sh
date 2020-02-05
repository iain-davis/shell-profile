echo Setting up git related shell commands...
# Completion handler that returns choices by populating Bash array COMPREPLY
# (filtered by the currently entered word ($2) via compgen builtin)
# With thanks to: https://stackoverflow.com/questions/46696156/git-autocomplete-for-custom-bash-functions
_git_branch_complete() {
    branches=$(git branch -al|sed -E 's/^[\* ] (remotes\/origin\/)*(.*)$/\2/'|sort|uniq) # Extract the list of all branches local and remote
    COMPREPLY=($(compgen -W "$branches" -- "$2"))                                        # Add the branch names to tab completion's dictionary
}

# Configure nano to be the git editor
export GIT_EDITOR=nano

# Aliases without arguments
alias gs='git status'
alias gb='git branch'
alias gba='git branch -a'
alias toss='git add . && git reset --hard'
alias swap='git checkout -'

# Aliases that have optional arguments
alias push='_id_git_push'
alias pull='_id_git_pull'
alias shortstat='git diff --shortstat master'

# Aliases that take branches as arguments
alias gc='git checkout'
alias gadd='git add . && git status'

# Has an argument, but not a branch
alias commit='git commit -m'
alias fetch='git fetch'
alias fullcommit='_id_full_commit'

function _id_get_current_branch() {
  git branch --no-color | grep -E '^\*' | awk '{print $2}' || echo "default_value"
}

function _id_full_commit() {
  if [ -z "$1" ]; then
    echo "A commit message is required for this command"
    exit;
  fi

  local branch=$(_id_get_current_branch)

  git add . && git commit -m "$1" && git push origin $branch
}

# TODO: Refactor these two functions to eliminate duplicated code
function _id_git_push() {
  if [ -z "$1" ]; then
    local branch=$(_id_get_current_branch)
  else
    local branch=$1
  fi
  git push origin --set-upstream $branch
}

function _id_git_pull() {
  if [ -z "$1" ]; then
    local branch=$(_id_get_current_branch)
  else
    local branch=$1
  fi
  git pull origin $branch
}

function _id_git_determine_branch() {
  if [ -z "$1"]; then
    return $(_id_get_current_branch)
  else
    return $1
  fi
}

complete -F _git_branch_complete gc
complete -F _git_branch_complete push
complete -F _git_branch_complete pull
