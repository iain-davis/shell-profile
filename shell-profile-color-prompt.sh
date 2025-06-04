#!/bin/bash
# PS1 Prompt Versions of the ANSI Color Strings
# With thanks to: https://stackoverflow.com/a/28938235
# shellcheck disable=SC2034

# Reset
P_Reset='\[\033[0m\]'           # Reset everything back to normal

# Regular Colors
P_Black='\[\033[0;30m\]'        # Black
P_Red='\[\033[0;31m\]'          # Red
P_Green='\[\033[0;32m\]'        # Green
P_Yellow='\[\033[0;33m\]'       # Yellow
P_Blue='\[\033[0;34m\]'         # Blue
P_Purple='\[\033[0;35m\]'       # Purple
P_Cyan='\[\033[0;36m\]'         # Cyan
P_White='\[\033[0;37m\]'        # White

# Bold/Bright
P_Grey='\[\033[1;30m\]'         # Bright Black = Grey
P_BRed='\[\033[1;31m\]'         # Red
P_BGreen='\[\033[1;32m\]'       # Green
P_BYellow='\[\033[1;33m\]'      # Yellow
P_BrightBlue='\[\033[1;34m\]'   # Bright Blue
P_BPurple='\[\033[1;35m\]'      # Purple
P_BCyan='\[\033[1;36m\]'        # Cyan
P_BWhite='\[\033[1;37m\]'       # White

# Underline
P_UBlack='\[\033[4;30m\]'       # Black
P_URed='\[\033[4;31m\]'         # Red
P_UGreen='\[\033[4;32m\]'       # Green
P_UYellow='\[\033[4;33m\]'      # Yellow
P_UBlue='\[\033[4;34m\]'        # Blue
P_UPurple='\[\033[4;35m\]'      # Purple
P_UCyan='\[\033[4;36m\]'        # Cyan
P_UWhite='\[\033[4;37m\]'       # White

# Background
P_On_Black='\[\033[40m\]'       # Black
P_On_Red='\[\033[41m\]'         # Red
P_On_Green='\[\033[42m\]'       # Green
P_On_Yellow='\[\033[43m\]'      # Yellow
P_On_Blue='\[\033[44m\]'        # Blue
P_On_Purple='\[\033[45m\]'      # Purple
P_On_Cyan='\[\033[46m\]'        # Cyan
P_On_White='\[\033[47m\]'       # White

# High Intensity
P_IBlack='\[\033[0;90m\]'       # Black
P_IRed='\[\033[0;91m\]'         # Red
P_IGreen='\[\033[0;92m\]'       # Green
P_IYellow='\[\033[0;93m\]'      # Yellow
P_IBlue='\[\033[0;94m\]'        # Blue
P_IPurple='\[\033[0;95m\]'      # Purple
P_ICyan='\[\033[0;96m\]'        # Cyan
P_IWhite='\[\033[0;97m\]'       # White

# Bold High Intensity
P_BIBlack='\[\033[1;90m\]'      # Black
P_BIRed='\[\033[1;91m\]'        # Red
P_BIGreen='\[\033[1;92m\]'      # Green
P_BIYellow='\[\033[1;93m\]'     # Yellow
P_BIBlue='\[\033[1;94m\]'       # Blue
P_BIPurple='\[\033[1;95m\]'     # Purple
P_BICyan='\[\033[1;96m\]'       # Cyan
P_BIWhite='\[\033[1;97m\]'      # White

# High Intensity backgrounds
P_On_IBlack='\[\033[0;100m\]'   # Black
P_On_IRed='\[\033[0;101m\]'     # Red
P_On_IGreen='\[\033[0;102m\]'   # Green
P_On_IYellow='\[\033[0;103m\]'  # Yellow
P_On_IBlue='\[\033[0;104m\]'    # Blue
P_On_IPurple='\[\033[0;105m\]'  # Purple
P_On_ICyan='\[\033[0;106m\]'    # Cyan
P_On_IWhite='\[\033[0;107m\]'   # White
