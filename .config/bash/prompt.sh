#!/bin/env bash

function find_git_dirty {
  git_dirty=$([[ `gst 2>/dev/null | wc -l` -gt '1' ]] && echo '* ')
}

PROMPT_COMMAND="find_git_dirty; $PROMPT_COMMAND"

# ANSI color codes
RS="\[\033[0m\]"    # reset
HC="\[\033[1m\]"    # hicolor
UL="\[\033[4m\]"    # underline
#bold=$(tput bold)
INV="\[\033[7m\]"   # inverse background and foreground
FBLK="\[\033[30m\]" # foreground black
FRED="\[\033[31m\]" # foreground red
FGRN="\[\033[32m\]" # foreground green
FYEL="\[\033[33m\]" # foreground yellow
FBLE="\[\033[34m\]" # foreground blue
FMAG="\[\033[35m\]" # foreground magenta
FCYN="\[\033[36m\]" # foreground cyan
FWHT="\[\033[37m\]" # foreground white
BBLK="\[\033[40m\]" # background black
BRED="\[\033[41m\]" # background red
BGRN="\[\033[42m\]" # background green
BYEL="\[\033[43m\]" # background yellow
BBLE="\[\033[44m\]" # background blue
BMAG="\[\033[45m\]" # background magenta
BCYN="\[\033[46m\]" # background cyan
BWHT="\[\033[47m\]" # background white
FG="\[\033[15m\]"
BG1="\[\033[48;5;237m\]"
BYEL2="\[\033[48;5;214m\]"
FBG="\[\033[38;5;235m\]"

PS1="$BYEL2$FBG$HC[${debian_chroot:+($debian_chroot)}\u@\h]$RS $bold$FBLE\w$RS \$(_scm_prompt  '%s')$FRED\$git_dirty$RS\$ "
