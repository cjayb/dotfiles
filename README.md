cd ~
git clone http://github.com/cjayb/dotfiles.git dotfiles
ln -s dotfiles/vim .vim
ln -s dotfiles/vimrc .vimrc
ln -s dotfiles/gvimrc .gvimrc
ln -s dotfiles/bashrc .bashrc
ln -s dotfiles/gitconfig .gitconfig
ln -s dotfiles/gitignore .gitignore
ln -s dotfiles/fonts .fonts
cd ~/.vim
git submodule init
git submodule update

