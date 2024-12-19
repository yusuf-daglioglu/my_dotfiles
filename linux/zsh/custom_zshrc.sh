##############################
# README
#
# 1-
# do not check commands if exist. because below scripts should only call
# from personal devices which should already have those command.
# otherwise performance should be an issue.
#
# 2-
# all scripts does not depend on oh-my-zsh.
# the only dependency is ZSH itself.
#
# 3-
# I prefer different color for different info.
# Sometimes terminals not rendering all colors well.
# In that case different colors can be catch easily.
#
# 4-
# All functions have 3 underscore character as prefix.
# To make sure it does not override another variable
# and do not print them when I click on TAB button
# on command prompt.
##############################

###########################
# CHANGE ONLY PROMPT
# it prints:
# - last exit code
# - current time
# - arrow ( --> )
# normally ZSH prints: 
# - username
# - machine-name
# - current root/user permission icon.
###########################
___WHITE_FOREGROUND_COLOR_START='%F{#ffffff}' # color of text itself
___FOREGROUND_COLOR_END='%f'
___BOLD_START='%B'
___BOLD_END='%b'
___BACKGROUND_COLOR_END='%k'
___BACKGROUND_COLOR_GREEN_START='%K{#6ebc00}'
___BACKGROUND_COLOR_RED_START='%K{#e20f0f}'
___BACKGROUND_COLOR_YELLOW_START='%K{#e7bd3d}'
___LAST_EXIT_CODE='%?'
___TIME='%T'
___LAST_EXIT_CODE_BLOCK=$___BACKGROUND_COLOR_GREEN_START'LAST EXIT CODE:'$___LAST_EXIT_CODE$___BACKGROUND_COLOR_END
___TIME_BLOCK=$___BACKGROUND_COLOR_RED_START$___TIME$___BACKGROUND_COLOR_END
___ARROW_BLOCK=$___BACKGROUND_COLOR_YELLOW_START'-->'$___BACKGROUND_COLOR_END

PS1=$___BOLD_START$___WHITE_FOREGROUND_COLOR_START$___LAST_EXIT_CODE_BLOCK' '$___TIME_BLOCK' '$___ARROW_BLOCK$___FOREGROUND_COLOR_END$BOLD_END' '


########################################
# PRINT INFO WHEN FILE CHANGE
# prints random 6 files and current directory.
########################################

____TPUT_BOLD="$(tput bold)"
____TPUT_WHITE="$(tput setf 7)"
____COLOR_BLUE="$____TPUT_BOLD$____TPUT_WHITE$(tput setab 4)"
____COLOR_RESET="$(tput sgr 0)"

# this is a standard function which is calling by ZSH every time directory changed.
function chpwd() {

  # this block is commented. It does the same as below code block which starts with "ls".
  # we keep this code in any case...
  # -  head -6   --> trims only 6 lines of output
  # -  .         --> search files on current dir
  # -  -name .   --> search regex. dot (.) is a special character to search all files.
  # find . -maxdepth 1 -mindepth 1 -name . -o -prune | head -6

  # "head -6" trims only 6 lines of output
  # -A --> do not print . and .. (dots)
  ls -A | head -6

  printf '%s\n' "$____COLOR_BLUE""current dir: $(pwd)$____COLOR_RESET"
}
