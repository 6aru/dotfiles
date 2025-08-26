. /etc/profile
[ -f /etc/bash_completion ] && . /etc/bash_completion
if [ -x /usr/lib/command-not-found ]; then
 command_not_found_handle() {
  if [ -f /var/lib/command-not-found/commands.db ]; then
   /usr/lib/command-not-found -- "$1"
  else
   echo "bash: $1: command not found" >&2
  fi
  return 127
 }
fi
if [ ! -e /usr/bin/sudo ]; then
 sudo() {
  if [ -e /usr/bin/sudo ]; then
   /usr/bin/sudo "$@"
  else
   "$@"
  fi
 }
fi

# General Aliases
# alias ls='ls --color=auto'
# alias ll='ls -alF'
alias grep='grep --color=auto'
alias update='sudo apt update && sudo apt upgrade'

# Navigation Aliases
alias ..='cd ..'
alias ...='cd ../..'

# Set your preferred text editor
export EDITOR="vim"

export PS1='\[\033[01;32m\]baru@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

# Don't save duplicated commands or commands starting with a space, and append to history file
export HISTCONTROL="erasedups:ignorespace"
shopt -s histappend

# Increase the size of the history file
export HISTSIZE=5000
export HISTFILESIZE=10000

# Add timestamps to history
export HISTTIMEFORMAT="%F %T "

cl() {
  cd "$1" && ls -alF
}

# Colorized man pages
export MANPAGER="less -s -M +Gg"
export LESS_TERMCAP_mb=$'\E[01;31m'  # begin blinking
export LESS_TERMCAP_md=$'\E[01;36m'  # begin bold
export LESS_TERMCAP_me=$'\E[0m'      # end attributes
export LESS_TERMCAP_se=$'\E[0m'      # end standout-mode
export LESS_TERMCAP_so=$'\E[01;44;33m' # begin standout-mode - info box
export LESS_TERMCAP_ue=$'\E[0m'      # end underline
export LESS_TERMCAP_us=$'\E[01;32m'  # begin underline

export PATH="$HOME/.fzf/bin:$PATH"
# Set up fzf key bindings and fuzzy completion
eval "$(fzf --bash)"

# A cleaner history search with fzf
export FZF_DEFAULT_OPTS="--height 40% --layout=reverse --border"
export FZF_DEFAULT_COMMAND="ag --hidden --ignore-vcs -g ''" # or find

eval "$(zoxide init bash)"

alias ls='eza --icons=always --color=always --long --no-permissions --no-user --no-time'
#alias ll='eza -l --git'
#alias la='eza -la --git'
#alias lt='eza --tree'

# 'll' provides a detailed, long list with Git status.
# It's kept intact to show permissions, owner, and time.
alias ll='eza --icons=always --color=always --long --git'

# 'la' provides a detailed, long list of all files (including hidden ones).
alias la='eza --icons=always --color=always --long --all --git'

# 'lt' provides a clean tree view with icons.
# It uses the flags you suggested to keep the output minimal and focused on structure.
alias lt='eza --icons=always --color=always --tree'

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export PATH="$HOME/.local/bin/:$PATH"

export FZF_DEFAULT_OPTS="--ansi --layout=reverse --height=50% --preview-window='right:60%' --preview='bat --color=always --style=header,grid,numbers --line-range :500 {}'"
