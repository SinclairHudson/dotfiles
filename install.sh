apt-get install tmux
#apt-get install vim
apt-get install zsh
apt-get install curl
apt-get install nodejs # for COC
apt-get install neovim
chsh -s $(which zsh)

mkdir ~/.vim/undodir -p # make the undo directory for vim
mkdir ~/.config/nvim -p
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
