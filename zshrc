# Needed for incorrect security issue:
# https://github.com/ohmyzsh/ohmyzsh/issues/6835#issuecomment-400571406
ZSH_DISABLE_COMPFIX=true

# Auto update without a prompt
zstyle ':omz:update' mode auto

#
# Which plugins would you like to load?
# Plugins can be found in ~/.oh-my-zsh/plugins/* or ~/.oh-my-zsh/custom/plugins/*
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(colors brew aws bower jsontools node npm sublime urltools zsh-syntax-highlighting zsh-history-substring-search git-it-on docker autoenv)


#
#
# EXPORTS/PATH
#
# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh
# set GOPATH
export GOPATH="$HOME"
# Define the theme to load
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"
# Items in path:
#   ~/.dot-files
#   $HOME/.rvm/bin
#   /Applications/MacVim.app/Contents/bin
#   /opt/homebrew/bin
#   $N_PREFIX/bin
#   $N_PREFIX/lib
#   $N_PREFIX/include
#   $N_PREFIX/share
#   /usr/local/bin
#   /usr/bin
#   ~/.npm
#   /opt/local/bin
#   /usr/local/bin/npm
#   ~/.npm-packages/bin
#   /usr/local/heroku/bin
#   /usr/local/Cellar/python@2/2.7.15/bin/python2
#   $HOME/.gem
#   $GOPATH/bin
#   /Users/bc/.local/bin
#   /Users/bc/Dropbox/Application\ Support/WebStorm/Webstorm\ Scripts
#   $PATH
export PATH=$N_PREFIX/bin:$N_PREFIX/lib:$N_PREFIX/include:$N_PREFIX/share:~/.dot-files:$HOME/.rvm/bin:/Applications/MacVim.app/Contents/bin:/opt/homebrew/bin:/usr/local/bin:/usr/bin:~/.npm:/opt/local/bin:/usr/local/bin/npm:~/.npm-packages/bin:/usr/local/heroku/bin:/usr/local/Cellar/python@2/2.7.15/bin/python2:$HOME/.gem:$GOPATH/bin:/Users/bc/.local/bin:/Users/bc/Dropbox/Application\ Support/WebStorm/Webstorm\ Scripts:$PATH
# MacVim as the editor
#export EDITOR=/Applications/MacVim.app/Contents/bin/mvim
# export EDITOR=/usr/local/bin/nvim
#export NODE_PATH=$NODE_PATH:/Users/bc/n/lib/node_modules
# Change python path
export vi_cv_path_python=usr/local/Cellar/python
# For `n`
export N_PREFIX="$HOME/n";
 [[ :$PATH: == *":$N_PREFIX/bin:"* ]] || PATH="$N_PREFIX/bin:$PATH"
# For GPG
export GPG_TTY=`tty`

#
# Auto update without a prompt
DISABLE_UPDATE_PROMPT=true

#
# Set default command for FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
# To apply the command to CTRL-T as well
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
# preview
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'"


#
# Init hub completions
# https://github.com/github/hub/blob/master/etc/README.md
fpath=(~/.zsh/completions $fpath)
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

#
# ZSH History Substring Search
# NOTE: This must be _after_ `oh-my-zsh.sh` is sourced
#
# bind UP and DOWN arrow keys
bindkey "$terminfo[kcuu1]" history-substring-search-up
bindkey "$terminfo[kcud1]" history-substring-search-down
# bind P and N for EMACS mode
#bindkey -M emacs '^P' history-substring-search-up
#bindkey -M emacs '^N' history-substring-search-down
# bind k and j for VI mode
#bindkey -M vicmd 'k' history-substring-search-up
#bindkey -M vicmd 'j' history-substring-search-down

# Commands history with dates
alias h="fc -li 1"



# Disable autocorrect
unsetopt correct_all
# Don't share history between windows
unsetopt share_history

#
# General Alias'
#
# Copy current directory path
alias pwd='pwd | pbcopy && pwd'
# Go to copied directory path
alias pd='cd `pbpaste`'
# Delete Vim swap files
alias cleanswap='find ~/.vim/swap_files -type f | xargs rm -f'
# Delete Vim swap files
alias cleannvimswap='find ~/.config/nvim/swap-files -type f | xargs rm -f'
# Get the current IP address
alias ipconfig='ifconfig | grep "inet " | grep -v 127.0.0.1'
# Use ngrok
alias ngrok='/Applications/ngrok'


#
# Navigation
#
# Go to the code directory
# 'code' conflicts with vscode 'code .'
alias codedir='cd ~/Code/; ls -1F . | grep /'
# Go to the projects directory
alias projects='cd ~/Dropbox/Projects/; ls -1F . | grep /'
# Go to the open source directory and list subfolders
alias opensource='cd ~/code/open-source/; ls -1F . | grep /'
# Go to the my personal site directory and list subfolders
alias benjamin='cd ~/code/benjamincharity/; ls -1F . | grep /'
# Go to my dot files
alias dotfiles='cd ~/.dot-files; ls -1F . | grep /'
# Go to ScreenFlow captures
# alias screenflow='cd ~/Dropbox/ScreenFlow'
# Create a directory and immediately cd into it
# http://superuser.com/questions/152794/is-there-a-shortcut-to-mkdir-foo-and-immediately-cd-into-it
function mkdircd {
  command mkdir $1 && cd $1
}
# Edit ngrok config
alias editngrok='nvim ~/.ngrok2/ngrok.yml'
# Edit hammer configs
alias edithammer='nvim ~/.hammerspoon/init.lua && nvim ~/.dot-files/hammerspoon/init.lua'
# Edit this file
alias editzshrc='nvim ~/.zshrc'
# Edit gitconfig
alias editgitconfig='nvim /Users/benjamin.charity/.dot-files/gitconfig'
# Edit nvim config
alias editnvim='nvim ~/.dot-files/nvim/init.vim'


#
# Apps
#
alias vsc='/Applications/Visual\ Studio\ Code.app'
alias vs='/Applications/Visual\ Studio\ Code.app'
# Make sure the cli is using the lastest version of vim
# alias vim='/Applications/MacVim.app/Contents/MacOS/Vim'
#alias vi='/Applications/MacVim.app/Contents/MacOS/Vim'
alias atom-beta='/Applications/Atom\ Beta.app/Contents/MacOS/Atom\ Beta'
alias atomb='/Applications/Atom\ Beta.app/Contents/MacOS/Atom\ Beta'
alias ws='open -a ~/Library/Application\ Support/JetBrains/Toolbox/apps/WebStorm/**/WebStorm.app'
# alias webstorm='open -a ~/Library/Application\ Support/JetBrains/Toolbox/apps/WebStorm/ch-0/211.7142.46/WebStorm.app'


#
# GIT
#
# Let Hub wrap Github commands with some sugar
alias git=hub
# Status
alias st="status"
alias gs="git status"
# Add all untracked files
alias ga="git add -A :/"
# List branches ordered by last commit
alias gb="git branch --sort=-committerdate"
# Stash, pull, pop
alias spp="git stash && git pull && git stash pop"
# Stash, pull, pop, start node
alias spps="git stash && git pull && git stash pop && node index.js"
# Commit with message
alias gc="git commit -am"
# Create and checkout new branch
alias gcb="git checkout -b"
# Git push and open the PRs view
alias gpp="git push && git prs"
# Git diff with NVim
alias gd="git diff | nvim"
# List view
alias l="ls -la"
# Git Grep
alias gg="git grep"
# Git Grep excluding spec files
alias ggns="git grep-no-spec"
# Get a list of all changes since the latest release
alias gr='git release'
# Unstage all commits on your current branch
alias unstageall='git reset $(git merge-base master $(git branch | grep \* | cut -d " " -f2))'
# Unstage all commits on your current branch, stage all files, begin commit process
alias squash="unstageall && git add -A && gc"
# Git log - oneline no-pager
alias glnp="git --no-pager log --oneline -n30"
# Helper function to do a WIP commit
function doGitWip {
  msg=$*
  if [[ $msg ]]
  then
    git add . && git commit -m "🚧 WIP: $msg [ci skip] 🚧" --no-verify
  else
    git add . && git commit -m "🚧 WIP: [ci skip] 🚧" --no-verify
  fi
}
function doGitWipVerify {
  msg=$*
  if [[ $msg ]]
  then
    git add . && git commit -m "WIP: $msg [ci skip]"
  else
    git add . && git commit -m "WIP: [ci skip]"
  fi
}
alias gwip=doGitWip
alias gwipv=doGitWipVerify
# show commits from all branches for current git user.
function my-commits-since {
    git log --all --author=$(git config user.email) --since=$@
}
# show commits from yesterday.
# if none were found, assume it's Monday and show commits from Friday.
function standupFunc {
    if [ -z "$(my-commits-since yesterday)" ]; then
        my-commits-since last.friday.midnight $@;
    else
        my-commits-since yesterday $@;
    fi
}
alias standup=standup

#
# Postgres
#
# Start
alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
# Stop
alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'


#
# GPG
#
alias gpgverify='gpg --export-secret-keys -a 83275B30A10F5202 > /dev/null && echo OK'




#
# NPM
#
# Show a list of all possible NPM scripts in a directory
alias run='ntl'
# List all global packages
alias npmglobal='npm list -g --depth=0'
# Promote a version to @latest on NPM
function promoteLatest {
  command npm dist-tag add @terminus/ui@$1 latest
}


#
# Yarn
#
alias yi='yarn install'
alias ya='yarn add'
alias yrm='yarn remove'
alias ys='yarn run start'
alias yga='yarn global add'
alias yad='yarn add --D'
alias yis='yarn install && yarn run start'
alias yt='yarn run test'
alias yl='yarn link'
alias yul='yarn unlink'
alias yb='yarn run build'
alias yr='yarn run'
alias yro='yarn outdated'
alias ygo='yarn global outdated'
function yae {
  command yarn add $1@latest --exact $2
}

#
# Weather
#
alias weather='curl wttr.in/30341'

#
# Fun
#
# Generate a random ASCII cow
alias cow='vaca'


#
# SSH
#
# SSH into whatbox
alias sshwhatbox='ssh benjamincharity@leda.whatbox.ca'
# SSH into hassio
alias sshhassio='ssh root@hassio.local'


#
# Notes generation
# https://github.com/ahmadassaf/code-notes
#
alias findnotes='notes -x node_modules/ -x .DS_Store'


#
# Explore a webpack generated sourcemap
#
function explore {
  if [[ -n "$1" ]]; then
    source-map-explorer dist/vendor."$1".bundle.js dist/vendor."$1".bundle.js.map
  else
    echo "proper usage: explore <bundleId>."
  fi
}


#
# GIFs
# Originally found here: https://gist.github.com/SlexAxton/4989674
# NOTE: I removed the if/else catch for `--good` since without this parameter the quality is
# terrible.
#
function gifify {
  if [[ -n "$1" ]]; then
    ffmpeg -i $1 -r 10 -vcodec png out-static-%05d.png
    time convert -verbose +dither -layers Optimize -resize 600x600\> out-static*.png  GIF:- | gifsicle --colors 128 --delay=5 --loop --optimize=3 --multifile - > $1.gif
    rm out-static*.png
  else
    echo "proper usage: gifify <input_movie.mov>. You DO need to include extension."
  fi
}



#
###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#

if type complete &>/dev/null; then
  _npm_completion () {
    local words cword
    if type _get_comp_words_by_ref &>/dev/null; then
      _get_comp_words_by_ref -n = -n @ -w words -i cword
    else
      cword="$COMP_CWORD"
      words=("${COMP_WORDS[@]}")
    fi

    local si="$IFS"
    IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
                           COMP_LINE="$COMP_LINE" \
                           COMP_POINT="$COMP_POINT" \
                           npm completion -- "${words[@]}" \
                           2>/dev/null)) || return $?
    IFS="$si"
  }
  complete -o default -F _npm_completion npm
elif type compdef &>/dev/null; then
  _npm_completion() {
    local si=$IFS
    compadd -- $(COMP_CWORD=$((CURRENT-1)) \
                 COMP_LINE=$BUFFER \
                 COMP_POINT=0 \
                 npm completion -- "${words[@]}" \
                 2>/dev/null)
    IFS=$si
  }
  compdef _npm_completion npm
elif type compctl &>/dev/null; then
  _npm_completion () {
    local cword line point words si
    read -Ac words
    read -cn cword
    let cword-=1
    read -l line
    read -ln point
    si="$IFS"
    IFS=$'\n' reply=($(COMP_CWORD="$cword" \
                       COMP_LINE="$line" \
                       COMP_POINT="$point" \
                       npm completion -- "${words[@]}" \
                       2>/dev/null)) || return $?
    IFS="$si"
  }
  compctl -K _npm_completion npm
fi
###-end-npm-completion-###

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"


# Load Angular CLI autocompletion.
source <(ng completion script)

# pnpm
export PNPM_HOME="/Users/bc/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# bun completions
[ -s "/Users/bc/.bun/_bun" ] && source "/Users/bc/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"


# Herd injected PHP 8.4 configuration.
export HERD_PHP_84_INI_SCAN_DIR="/Users/bc/Library/Application Support/Herd/config/php/84/"


# Herd injected PHP binary.
export PATH="/Users/bc/Library/Application Support/Herd/bin/":$PATH
