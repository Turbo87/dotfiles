alias ..="cd .."
alias cl="git clone"
alias clu="git clone --origin=upstream"
alias ao="git remote add origin"
alias em="ember"
alias yawn="yarn --no-lockfile"
alias nombom="rm -rf node_modules bower_components && npm i && bower i"
alias si="stree . && idea . && gfa"
alias gfu="git fetch upstream"
alias gfo="git fetch origin"
alias gfa="git fetch --all"
alias yt="yarn test"
alias yr="yarn run"

# virtualenvwrapper and pip
if [[ `id -u` != '0' ]]; then
  if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    source /usr/local/bin/virtualenvwrapper.sh
  fi
  if [ -f ~/.local/venvs/virtualenvwrapper/bin/virtualenvwrapper.sh ]; then
    export WORKON_HOME=$HOME/.virtualenvs
    export VIRTUALENVWRAPPER_PYTHON=~/.local/venvs/virtualenvwrapper/bin/python
    source ~/.local/venvs/virtualenvwrapper/bin/virtualenvwrapper.sh
  fi
fi

# don't let virtualenv show prompts by itself
VIRTUAL_ENV_DISABLE_PROMPT=1

# Useful command for stripping whitespace
remove_trailing_whitespace() {
  find . -name $* -exec sed -i '' -e's/[[:space:]]*$//' {} \;
}

# Pretty man
man() {
  env \
    LESS_TERMCAP_md=$'\e[1;36m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[1;40;92m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[1;32m' \
      man "$@"
}

# Enable nvm
export NVM_DIR="/Users/tbieniek/.nvm"
. "$NVM_DIR/nvm.sh" &> /dev/null

# Add yarn to PATH
export PATH="$HOME/.yarn/bin:$PATH"

# Add cargo to PATH
export PATH="$HOME/.cargo/bin:$PATH"

# Load API keys and other private stuff
source $HOME/.private-profile

# Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.rvm/bin"

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Enable Travis CLI
[ -f "$HOME/.travis/travis.sh" ] && source "$HOME/.travis/travis.sh"
