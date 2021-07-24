# This file is required to run in USER land, NOT with sudo.
chsh -s $(which zsh)
mkdir ~/.vim/undodir -p # make the undo directory for vim
mkdir ~/.config/nvim -p
# the following is for neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# make more config folders
mkdir ~/.config/i3 -p
mkdir ~/.config/i3status -p
