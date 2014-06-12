Installation instructions:

	cd ~
	git clone http://github.com/cjayb/dotfiles.git dotfiles
	ln -s dotfiles/vim .vim
	ln -s dotfiles/vimrc .vimrc
	ln -s dotfiles/gvimrc .gvimrc
	ln -s dotfiles/bashrc .bashrc
    ln -s dotfiles/git-completion.bash .git-completion.bash
	cd ~/.vim
	git submodule init
	git submodule update

