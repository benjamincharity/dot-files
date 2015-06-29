#
# EXPORTS/PATHS
#
# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
# Define the theme to load
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"
export PATH=~/.dot-files:~/.rbenv/shims/bin:/usr/local/bin:/usr/bin:/usr/local/share/npm/bin:/opt/local/bin:$PATH
export EDITOR=vim
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules
# Change python path
export vi_cv_path_python=usr/local/Cellar/python
### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


#
# Which plugins would you like to load?
# Plugins can be found in ~/.oh-my-zsh/plugins/* or ~/.oh-my-zsh/custom/plugins/*
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew aws bower frontend-search grunt jsontools node npm sublime terminalapp urltools zsh-per-directory-history zsh-syntax-highlighting zsh-history-substring-search)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all



#
# General Alias'
#
# Copy current directory path
alias gd='pwd | pbcopy'
# Go to copied directory path
alias pd='cd `pbpaste`'
# Use the MacVim application
# This throws python error due to YouCompleteMe
#alias mvim="/Applications/MacVim.app/contents/MacOS/MacVim"
# Delete Vim swap files
alias cleanswap='find ~/.vim/swap_files -type f | xargs rm -f'
# Shortcut to edit Vim's JSHint options
alias editjshint='mvim /Users/bc/.dot-files/vim/bundle/lint.vim/js/jshint/options.js'
# Shortcut to edit Angular Fullstack generator templates
alias editfullstack='mvim /Users/bc/Dropbox/Resources/AngularFullstack\ Edited\ Templates'



#
# Navigation
#
# Go to the code directory
alias code='cd ~/Code/; ls -1F . | grep /'
# Go to the projects directory
alias projects='cd ~/Dropbox/Projects/; ls -1F . | grep /'
# Go to the open source directory and list subfolders
alias opensource='cd ~/Code/open-source/; ls -1F . | grep /'
# Go to KenzieLane directory and list subfolders
alias kl='cd ~/Code/kenzielane/; ls -1F . | grep /'
# Go to the Ripple directory and list subfolders
alias moment='cd ~/Code/moment/; ls -1F . | grep /'
# Go to the KnowMe directory and list subfolders
alias knowme='cd ~/Code/knowme/; ls -1F . | grep /'
# Go to the my personal site directory and list subfolders
alias benjamin='cd ~/Code/benjamincharity/; ls -1F . | grep /'
# Go to my dot files
alias dotfiles='cd /Users/bc/.dot-files; ls -1F . | grep /'
# Create a directory and immediately cd into it
# http://superuser.com/questions/152794/is-there-a-shortcut-to-mkdir-foo-and-immediately-cd-into-it
function mkdircd {
  command mkdir $1 && cd $1
}



#
# Apps
#
# Open Visual Studio Code
alias vs='/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Atom'
alias vsc='/Applications/Visual\ Studio\ Code.app/Contents/MacOS/Atom'



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
# Git Grep
alias gg='git grep'

#
# Postgres
#
# Start
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
# Stop
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'


#
# Mongo
#
# Start
alias mongostart="launchctl start org.mongodb.mongod"
# Stop
alias mongostop="launchctl stop org.mongodb.mongod"

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



#
# Moment
#
# Build Dev
alias connect="./build-dev"
# Build Prod
alias connectprod="./build-prod"


#
# Bower
#
# Install
function bi {
  command bower install $1 --save
}
# Install for dev
function bid {
  command bower install $1 --save-dev
}
# Uninstall
function bu {
  command bower uninstall $1 --save
}
# Uninstall for dev
function bud {
  command bower uninstall $1 --save-dev
}
