apt-get update
apt-get install -y tmux
#apt-get install vim
apt-get install -y zsh
apt-get install -y curl
apt-get install -y nodejs # for COC
apt-get install -y neovim
apt-get install -y npm
apt-get install -y rofi
apt-get install -y feh

npm cache clean -f
npm install -g n
n stable
