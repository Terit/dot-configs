export PATH="/usr/local/bin:/usr/local/sbin:~/bin:$PATH"

# ANDROID SDK
export ANDROID_HOME=/usr/local/opt/android-sdk

# POSTGRES
export PATH="/Applications/Postgres.app/Contents/Versions/9.4/bin:$PATH"

# GOPATH
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# NVM / NPM
export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
export PATH="$PATH:$HOME/.npm-packages/bin"

# GIT LIGHTNING BOLT STATUS
function git_dirty {
  local ST=$(git status --short 2> /dev/null)
  if [ -n "$ST" ]
  then echo -n "⚡ "
  else echo -n "✓ "
  fi
}
# COLOUR CODE THE CLI
# export PS1="\[\033[0;36m\]\w\[\033[m\](\033[0;32m\]$(git_dirty)\$(git branch 2>/dev/null | grep '^*' | colrm 1 2)\033[m\]) \$ "

# GIT AUTOCOMPLETE COMMANDS
# if [ -f ~/bin/.git-completion.bash ]; then
#   . ~/bin/.git-completion.bash
# fi

# RAILS AlIASES
alias rr='rake routes'
alias rc='rails c'
alias rs='rails s'
alias zc='zeus c'
alias zs='zeus s'
alias zr='zeus rake'
alias kill_ruby='kill -9 $(lsof -i tcp:3000 -t)'

# MBH NGROK SERVER
alias mbhx_ngrok='~/.mbhx_ngrok'

# Load RVM into a shell session *as a function*

export DYLD_LIBRARY_PATH="$DYLD_LIBRARY_PATH:/usr/local/mysql/lib"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
