PATH="/usr/local/heroku/bin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:$PATH

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
