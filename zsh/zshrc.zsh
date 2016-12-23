source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle bower
antigen bundle git
antigen bundle git-prompt
antigen bundle osx
antigen bundle npm
antigen bundle pip

antigen bundle kennethreitz/autoenv

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Theme
antigen bundle $HOME/.zsh-custom/plugins better-virtualenv
antigen bundle $HOME/.zsh-custom/plugins multirust
antigen bundle $HOME/.zsh-custom/plugins workenv
antigen theme $HOME/.zsh-custom/themes mitsuhiko

# Tell antigen that you're done.
antigen apply

source $HOME/.profile
