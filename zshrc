#
# EXPORTS/PATHS
#
# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
# Define the theme to load
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"
# Items in path:
#   ~/.dot-files
#   ~/.rbenv/shims/bin
#   /usr/local/bin
#   /usr/bin
#   ~/.npm
#   /opt/local/bin
#   /usr/local/bin/npm
#   /usr/local/bin/node
#   $PATH
export PATH=~/.dot-files:/usr/local/bin:/usr/bin:~/.npm:/opt/local/bin:/usr/local/bin/npm:/usr/local/bin/node:/usr/local/heroku/bin:~/.rbenv/shims:~/.rbenv/bin:$PATH
export EDITOR=vim
export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules
# Change python path
export vi_cv_path_python=usr/local/Cellar/python

#
# Auto update without a prompt
DISABLE_UPDATE_PROMPT=true

#
# Which plugins would you like to load?
# Plugins can be found in ~/.oh-my-zsh/plugins/* or ~/.oh-my-zsh/custom/plugins/*
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(brew aws bower jsontools node npm sublime terminalapp urltools zsh-per-directory-history zsh-syntax-highlighting zsh-history-substring-search send git-it-on)




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



#
# Navigation
#
# Go to the code directory
# Conflicts with vscode 'code .'
#alias code='cd ~/Code/; ls -1F . | grep /'
# Go to the projects directory
alias projects='cd ~/Dropbox/Projects/; ls -1F . | grep /'
# Go to the open source directory and list subfolders
alias opensource='cd ~/Code/open-source/; ls -1F . | grep /'
# Go to the design directory and list subfolders
alias design='cd ~/Design/; ls -1F . | grep /'
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
# Go to ScreenFlow captures
alias screenflow='cd /Users/bc/Dropbox/ScreenFlow'
# Create a directory and immediately cd into it
# http://superuser.com/questions/152794/is-there-a-shortcut-to-mkdir-foo-and-immediately-cd-into-it
function mkdircd {
  command mkdir $1 && cd $1
}



#
# Apps
#
# Open Visual Studio Code
alias vsc='/Applications/Visual\ Studio\ Code.app'
alias vs='/Applications/Visual\ Studio\ Code.app'



#
# GIT
#
# Let Hub wrap Github commands with some sugar
#eval '$(hub alias -s)'
# Status
alias st='status'
alias gs='git status'
# Add all untracked files
alias ga='git add -A :/'
# Stash, pull, pop
alias spp='git stash && git pull && git stash pop'
# Stash, pull, pop, start node
alias spps='git stash && git pull && git stash pop && node index.js'
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
# Get a list of all changes since the latest release
alias gr='git log `git describe --tags --abbrev=0`..HEAD --oneline'



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
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
# bind P and N for EMACS mode
bindkey -M emacs '^P' history-substring-search-up
bindkey -M emacs '^N' history-substring-search-down
# bind k and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down



#
# Bower
#
# Install
function bis {
  command bower install $1 --save
}
# Install for dev
function bisd {
  command bower install $1 --save-dev
}
# Uninstall
function bui {
  command bower uninstall $1 --save
}
# Uninstall for dev
function buid {
  command bower uninstall $1 --save-dev
}



#
# NPM
#
# Show a list of all possible NPM scripts in a directory
alias run='ntl'



#
# Fun
#
# Generate a random ASCII cow
alias cow='vaca'


#
# GIFs
# Originally found here: https://gist.github.com/SlexAxton/4989674
# NOTE: I removed the if/else catch for `--good` since without this parameter the quality is
# terrible.
#
gifify() {
  if [[ -n "$1" ]]; then
    ffmpeg -i $1 -r 10 -vcodec png out-static-%05d.png
    time convert -verbose +dither -layers Optimize -resize 600x600\> out-static*.png  GIF:- | gifsicle --colors 128 --delay=5 --loop --optimize=3 --multifile - > $1.gif
    rm out-static*.png
  else
    echo "proper usage: gifify <input_movie.mov>. You DO need to include extension."
  fi
}

#
# RBENV
#
#eval "$(rbenv init -)"

