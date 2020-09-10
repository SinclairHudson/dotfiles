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
You're also going to need node.js for coc, a plugin that autocompletes: `sudo apt install nodejs`.
## Installing conda
Download from the official anaconda website, `curl -O` the link in your downloads folder.
Next, `chmod -x {Anacondascript}.sh`, so that you can run it without sudo.
Finally, `bash ./{Anacondascript}.sh` and follow the instructions.


## Automatically syncing configurations

At the time of writing, I work on 3 - 7 ubuntu machines every week.
So, I really would like them all to have the same aliases and vim configurations.
to set up an automatic service that pulls this repo and updates the config:

`/etc/systemd/system/autoconfig.service`:
```
[Unit]
After=network.service

[Service]
ExecStart=/absolute/to/this/repo/config/auto.sh

[Install]
WantedBy=default.target
```

then:

```
sudo chmod 744 /absolute/to/this/repo/config/auto.sh
sudo chmod 664 /etc/systemd/system/autoconfig.service
sudo systemctl daemon-reload
sudo systemctl enable autoconfig.service
```

This of course means that your configs will get overwritten any time you boot up. If you want to save a new alias, then push it to the repo or it will be lost.
