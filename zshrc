#
# EXPORTS/PATHS
#
# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
# Define the theme to load
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"
export PATH=/bin:/usr/bin:/usr/local/bin:/usr/local/share/npm/bin:/opt/local/bin:$PATH
export EDITOR=vim
# TODO: Do I need both of these Node paths?
#       If so, can they be combined like other path options?
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules
export NODE_PATH=/usr/local/lib/node
# Change python path
export vi_cv_path_python=usr/local/Cellar/python
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


#
# Which plugins would you like to load?
# Plugins can be found in ~/.oh-my-zsh/plugins/* or ~/.oh-my-zsh/custom/plugins/*
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git zsh-per-directory-history zsh-syntax-highlighting zsh-history-substring-search)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all


#
# General Alias'
#
# Copy current directory path
alias gd='pwd | pbcopy'
# Go to copied directory path
alias pd='cd `pbpaste`'


#
# GIT
#
# Status
alias st='status'
alias gs='git status'
# Add all untracked files
alias ga='git add -A :/'
# Commit with message
alias gc='git commit -am'
# Create and checkout new branch
alias gcb='git checkout -b'
# Git push origin master
alias gpom='git push origin master'
# Git push origin develop
alias gpod='git push origin develop'
# Git push heroku master
alias gphm='git push heroku master'
# Git push
alias gm='git push'
# Git pull
alias gp='git pull'
# Git diff with MacVim
alias gd='git diff | mvim'
# List view
alias l='ls -la'


#
# Postgres
#
# Start
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
# Stop
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'


#
# MySQL
#
# Start
alias mysqlstart='mysql.server start'
# Stop
alias mysqlstop='mysql.server stop'


#
# ZSH History Substring Search
#
# bind UP and DOWN arrow keys
zmodload zsh/terminfo
# TODO: Cannot get the up/down keys working
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
# bind P and N for EMACS mode
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down
# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
