# Installation instructions:

This has simplified considerably after moving to junegunn/plugged!

Simply clone the dotfiles, start vim and run the command

	cd ~
	git clone http://github.com/cjayb/dotfiles.git dotfiles
    vim
    :PlugInstall

## On a new installation

To get the links right, do

	ln -s dotfiles/vim .vim
	ln -s dotfiles/vimrc .vimrc
	ln -s dotfiles/gvimrc .gvimrc
	ln -s dotfiles/bashrc .bashrc
    ln -s dotfiles/git-completion.bash .git-completion.bash

