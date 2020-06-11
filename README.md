# config
A collection of config files for getting down to business in Ubuntu. Tmux, ZSH, and common aliases.

## install.sh
This script will just install zshell, tmux, and vim on an ubuntu system.

## out.sh
This script will copy all the config files from this directory into the home directory `~`.

## in.sh
This scipt copies all of the config files into the directory from the home directory.
So, if you've done some experimenting and you want to save your changes to this repo,
just `bash in.sh` and then commit.

The `.vimrc` is inspired heavily by the following YouTube video:

https://www.youtube.com/watch?v=n9k9scbTuvQ

## Finishing the vim plugin installation:

Make sure you have the latest VIM version installed, otherwise some plugins will not work!
```
$ mkdir ~/.vim/undodir -p
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Make sure your `.vimrc` file is sourced, and then open vim and type `:PlugInstall`.
Once you have the plugins, there are some pretty great keybinds that I've set up.

## Installing conda
Download from the official anaconda website, `curl -O` the link in your downloads folder.
Next, `chmod -x {Anacondascript}.sh`, so that you can run it without sudo.
Finally, `bash ./{Anacondascript}.sh` and follow the instructions.
