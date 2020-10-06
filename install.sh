apt-get install tmux
apt-get install vim
apt-get install zsh
apt-get install curl
apt-get install nodejs
chsh -s $(which zsh)

mkdir ~/.vim/undodir -p
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
