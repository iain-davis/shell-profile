# shell-profile
Series of shell scripts to set up my bash environment the way I like it.

NOTE: The scripts rely on `realpath` and the `_git_branch_complete` function in `shell-profile-git.sh` relies on `sed`, `sort`, and `uniq`. On Windows machines, all of those are installed by Git when Git Bash is installed. Depending on your installation choices they may _only_ be available in Git Bash or in a shell wrapped around Git Bash (i.e., ConEmu executing Git Bash as the inner shell).

# Installation
1. Clone the repository
2. Add `source /path/to/shell-profile/shell-profile.sh` to your `.bash_profile`
3. (Optionally) add `GIT_EDITOR=MyFavoriteCUITextEditor` to your `.bash_profile` sometime after the line above to override my setting for the text editor in bash shells

