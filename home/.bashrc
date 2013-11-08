PATH="/usr/local/heroku/bin:$PATH"
export PATH=$HOME/bin:/usr/local/bin:$PATH

# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

source ~/.git-prompt.sh
PS1="\[$GREEN\]\t\[$RED\]-\[$BLUE\]\u\[$YELLOW\]\[$YELLOW\]\w\[\033[m\]\[$MAGENTA\]\$(__git_ps1)\[$WHITE\]\$ "

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
