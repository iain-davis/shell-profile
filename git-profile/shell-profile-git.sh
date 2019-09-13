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
alias toss='git add . && git reset --hard'
alias swap='git checkout -'

# Aliases that take branches as arguments
alias gc='git checkout'
alias push='git push origin'
alias pull='git pull origin'
alias gadd='git add . && git status'
alias commit='git commit -m'
alias fetch='git fetch'

complete -F _git_branch_complete gc
complete -F _git_branch_complete push
complete -F _git_branch_complete pull
