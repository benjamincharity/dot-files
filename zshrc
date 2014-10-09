# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"

export NODE_PATH=$NODE_PATH:/usr/local/lib/node_modules
export PATH=/usr/local/share/npm/bin:$PATH
# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh
unsetopt correct_all

# Customize to your needs...

  alias status='git status'
  alias st='status'
  alias add='git add'
  alias ga='git add -A :/'
  alias gc='git commit -am'
  # need to give it a new branch name, creates the new branch and switches to it
  alias gcb='git checkout -b'
  # for alan/kanwei
  alias use='rvm gemset use'
  alias t='tmux -u'
  # copy current directory path
  alias gd='pwd | pbcopy'
  # go to copied directory path
  alias pd='cd `pbpaste`'
  alias cr='cmus-remote'
  alias growl='growlnotify'
  alias mg='mongod run --config /usr/local/Cellar/mongodb/2.0.1-x86_64/mongod.conf'
  alias mate='/usr/local.old/bin/mate'
  alias mg183='mongod run --config /usr/local/Cellar/mongodb/1.8.3-x86_64/mongod.conf'
  alias mg145='~/mongo/mongo-1.4.5/bin/mongod --dbpath ~/mongo/mongo-1.4.5/data/'
  alias mate='/usr/local/bin/mate'
  alias gemi='sudo gem install –no-ri –no-rdoc'
  alias gpom='git push origin master'
  alias gm='git push'
  alias gp='git pull'
  alias gs='git status'
  alias gpod='git push origin develop'
  alias gphm='git push heroku master'
  alias gpogh='git push origin gh-pages'
  alias gpuogh='git pull origin gh-pages'
  alias gd='git diff | mvim'
  alias python='python -m SimpleHTTPServer'
  alias l='ls -la'
  alias -s scss"=mvim -o"
  alias php "php54 -S localhost:8000"

  # ionic
  alias build='ionic build ios'
  # postgres
  alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
  alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

  # for mysql
  alias mysqlstart='mysql.server start'
  alias mysqlstop='mysql.server stop'

  # sshfs shortcuts
  alias tbfs='[[ -d ~/tourbuzz-vagrant ]] || mkdir ~/tourbuzz-vagrant; sshfs tourbuzz-vagrant:/usr/src/tourbuzz ~/tourbuzz-vagrant'

  # boxes
  alias tb-dev='ssh dev.tourbuzz.net -t "screen -x MainScreen"'

  export CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar
  export EDITOR=vim
  export NODE_PATH=/usr/local/lib/node
  export PATH=/usr/local/bin:/AdobeAIRSDK/bin:/usr/local/share/npm/bin:/opt/local/bin:$PATH

  # Stuff for rvm
  unsetopt auto_name_dirs
  [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

  PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

  #alias unicorn="unicorn_rails -c ~/.unicorn.rb"

  set -o vi

  # make search up and down work, so partially type and hit up/down to
  # find relevant stuff
  # https://coderwall.com/p/jpj_6q
  autoload -U up-line-or-beginning-search
  autoload -U down-line-or-beginning-search
  zle -N up-line-or-beginning-search
  zle -N down-line-or-beginning-search
  bindkey "^[[A" up-line-or-beginning-search # Up
  bindkey "^[[B" down-line-or-beginning-search # Down

  # If you are using iTerm2's feature allowing you to open new tabs / windows
  # and "Reuse Previous Tab's Directory" then you will want to add the
  # following line to the bottom of your .zshrc
  #__rvm_project_rvmrc
export NODE_PATH="/usr/local/lib/node_modules"
