# =========================================================================
# ~/.bashrc
# =========================================================================
# This file is a clean and organized version of your bash configuration.
# It includes fixes for the fzf preview error and new aliases for a
# more efficient command-line experience.

# Source global bash configuration files
. /etc/profile
[ -f /etc/bash_completion ] && . /etc/bash_completion

# =========================================================================
# Zoxide and FZF Configuration
# =========================================================================
# Zoxide is a smarter cd command. FZF is a fuzzy file finder.
# It is important to source zoxide first to ensure fzf functions correctly.
eval "$(zoxide init bash)"
export PATH="$HOME/.fzf/bin:$PATH"
eval "$(fzf --bash)"

# Consolidated FZF options to fix the 'bat' error. This single line
# correctly sets the preview window and command.
export FZF_DEFAULT_OPTS="--ansi --layout=reverse --height=50% --preview-window='right:60%' --preview='bat --color=always --style=header,grid,numbers --line-range :500 {}'"

# =========================================================================
# Aliases
# =========================================================================

# Navigation Aliases
alias ..='cd ..'
alias ...='cd ../..'

# Simple alias to reload bashrc
alias config='vim ~/.bashrc && source ~/.bashrc'

# Quickly navigate to home
alias home='cd ~'

# General Aliases
alias grep='grep --color=auto'
alias update='sudo apt update && sudo apt upgrade'

# eza Aliases (recommended alternative to ls)
# Uses icons, long list format, and git integration for a clean look.
alias ls='eza --icons=always --color=always --long --no-permissions --no-user --no-time'
alias ll='eza --icons=always --color=always --long --git'
alias la='eza --icons=always --color=always --long --all --git'
alias tree='eza --icons=always --color=always --tree'

# =========================================================================
# Custom Functions
# =========================================================================

# Custom function to change directory and list files
cl() {
  cd "$1" && ls -alF
}

# Add a function to your PS1 to show the current Git branch.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# =========================================================================
# Environment Variables
# =========================================================================

# Set your preferred text editor
export EDITOR="vim"

# Set a cleaner, more informative prompt that includes the Git branch.
export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\[\033[01;31m\]\$(parse_git_branch)\[\033[00m\]\$ "

# History settings to avoid duplicates and save more commands
export HISTCONTROL="erasedups:ignorespace"
shopt -s histappend
export HISTSIZE=5000
export HISTFILESIZE=10000
export HISTTIMEFORMAT="%F %T "

# Language settings
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Path additions
# export PATH="$HOME/.fzf/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# =========================================================================
# Colorized Man Pages
# =========================================================================
# This section enables colorized and formatted man pages.
export MANPAGER="less -s -M +Gg"
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;36m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# =========================================================================
# Fix for sudo if not installed (from original file)
# =========================================================================
if [ ! -e /usr/bin/sudo ]; then
 sudo() {
  if [ -e /usr/bin/sudo ];
  then
   /usr/bin/sudo "$@"
  else
   "$@"
  fi
 }
fi

# =========================================================================
# Command-not-found (from original file)
# =========================================================================
if [ -x /usr/lib/command-not-found ];
then
 command_not_found_handle() {
  if [ -f /var/lib/command-not-found/commands.db ]; then
   /usr/lib/command-not-found -- "$1"
  else
   echo "bash: $1: command not found" >&2
  fi
  return 127
 }
fi
