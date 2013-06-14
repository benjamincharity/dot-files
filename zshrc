# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"

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
  alias add='git add'
  alias gaa='git add .'
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

  # postgres
  alias pgstart='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
  alias pgstop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'

  # for mysql
  alias mysqlstart='mysql.server start'
  alias mysqlstop='mysql.server stop'

  export CLASSPATH=$CLASSPATH:/usr/local/Cellar/clojure-contrib/1.2.0/clojure-contrib.jar
  export EDITOR=vim
  export NODE_PATH=/usr/local/lib/node
  export PATH=/usr/local/bin:/AdobeAIRSDK/bin:$PATH

  # Patient pad sdk
  export PATH=$PATH:/Developer/android-sdk-mac_x86/tools

  # Stuff for rvm
  unsetopt auto_name_dirs
  [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

  PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

  #alias unicorn="unicorn_rails -c ~/.unicorn.rb"

  # enable auto completion for git flow
  source ~/.git-flow-completion.zsh
