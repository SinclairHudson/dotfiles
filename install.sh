apt-get install -y tmux
#apt-get install vim
apt-get install -y zsh
apt-get install -y curl
apt-get install -y nodejs # for COC
apt-get install -y neovim
apt-get install -y npm
chsh -s $(which zsh)

npm cache clean -f
npm install -g n
n stable

mkdir ~/.vim/undodir -p # make the undo directory for vim
mkdir ~/.config/nvim -p
# the following is for neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
# the following is for vim
#curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    #https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
