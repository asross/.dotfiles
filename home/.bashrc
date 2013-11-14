PATH="/usr/local/heroku/bin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:$PATH

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

export BLACK='0;30m'
export BLUE='0;34m'
export GREEN='0;32m'
export CYAN='0;36m'
export RED='0;31m'
export PURPLE='0;35m'
export BROWN='0;33m'
export BLUE='0;34m'
export GREEN='0;32m'
export CYAN='0;36m'
export RED='0;31m'
export PURPLE='0;35m'
export BROWN='0;33m'

source ~/.git-completion.bash
source ~/.git-prompt.sh
PS1="¶\[\e[1m\]\$(__git_ps1)\[\e[m\] \[\e[$BROWN\]\w\[\e[m\] "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
