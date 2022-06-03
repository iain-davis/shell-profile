# shell-profile
Series of shell scripts to set up my bash environment the way I like it.

NOTE: The scripts rely on `realpath` and the `_git_branch_complete` function in `shell-profile-git.sh` relies on `sed`, `sort`, and `uniq`. On Windows machines, all of those are installed by Git when Git Bash is installed. Depending on your installation choices they may _only_ be available in Git Bash or in a shell wrapped around Git Bash (i.e., ConEmu executing Git Bash as the inner shell).

Notes For MacOS users:
* realpath is included in the coreutils package which can be installed by `brew install coreutils`
* If you prefer GNU ls, make sure brew's corebin is in the PATH early (for example: `export PATH="/opt/homebrew/opt/coreutils/libexec/gnubin:$PATH"`) and set the environment variable IDLSTYPE=GNU
* 

# Installation
1. Clone the repository
2. Add `source /path/to/shell-profile/shell-profile.sh` to your `.bash_profile`
3. (Optionally) add `GIT_EDITOR=MyFavoriteCUITextEditor` to your `.bash_profile` sometime after the line above to override my setting for the text editor in bash shells

# Resources
## Articles around some of the basic nuances
* Difference between .bashrc and .bash_profile: http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html
