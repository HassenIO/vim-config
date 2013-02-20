vim-config
==========

*It's my VIM configuration.*

Here is my VIM configuration and plugins. Follow the steps to install and config.

The `.vimrc` file is fully commented.

The plugins were installed and are maintained using *vundle*

## Install

First, git pull the actual files and directories into your *Home* folder:

    cd ~
    git clone git@github.com:hassinus/vim-config.git
    mv vim-config/ .vim/

Second, create a soft link to the `.vimrc` file in your *HOME* folder:

    ln -s ~/.vim/.vimrc ~/.vimrc

Using the soft link to grab `.vimrc` into the *HOME* folder is useful to maintain all the project files into the same folder: `.vim`. All future updates will be available in this folder.

## Contributions

Your contributions are welcome. Just fork this repo, pull, branch new, play, commit, push and request.
