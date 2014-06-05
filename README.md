cd ~
git clone http://github.com/cjayb/dotfiles.git dotfiles
ln -s dotfiles/vim .vim
ln -s dotfiles/vimrc .vimrc
ln -s dotfiles/gvimrc .gvimrc
ln -s dotfiles/bashrc .bashrc
cd ~/.vim
git submodule init
git submodule update

