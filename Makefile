install: install-zsh \
         install-git

install-sh:
	rm -f ~/.profile
	ln -s `pwd`/sh/profile.sh ~/.profile

install-zsh: install-sh
	rm -rf ~/.zshrc ~/.zsh-custom
	ln -s `pwd`/zsh/zshrc.zsh ~/.zshrc
	ln -s `pwd`/zsh/custom ~/.zsh-custom

install-git:
	rm -f ~/.gitconfig ~/.gitignore_global
	ln -s `pwd`/git/gitconfig ~/.gitconfig
	ln -s `pwd`/git/gitignore_global ~/.gitignore_global
