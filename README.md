# config
A collection of config files for getting down to business in Ubuntu. Tmux, ZSH, i3, and common aliases.

## Installation

Clone this repo (into the home directory)
```
sudo bash install.sh
bash user_install.sh
```

Note that the second script needs to be no-sudo.

```
bash out.sh
```

This script will copy all the config files from this directory into the home directory `~`.


The `.vimrc` is inspired heavily by the following YouTube video:

https://www.youtube.com/watch?v=n9k9scbTuvQ

## Finishing the vim plugin installation:

Make sure your `.vimrc`/`init.nvim` file is sourced, and then open vim and type `:PlugInstall`.

## Install Firenvim:
This is for nvim in the browser. Yeah.
```bash
nvim --headless "+call firenvim#install(69) | q"
```
Then, install the [chrome extension.](https://chrome.google.com/webstore/detail/firenvim/egpjdkipkomnmjhjmdamaniclmdlobbo)


## Installing conda
Download from the official anaconda website, `curl -O` the link in your downloads folder.
Next, `chmod -x {Anacondascript}.sh`, so that you can run it without sudo.
Finally, `bash ./{Anacondascript}.sh` and follow the instructions.


## Automatically syncing configurations

# TODO
