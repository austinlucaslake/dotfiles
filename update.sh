#!/bin/bash

SCRIPTPATH=$(cd "$(dirname '${BASH_SOURCE[0]}')" && pwd)

cp $HOME/.bashrc $SCRIPTPATH/src/
cp -r $HOME/.config/alacritty/alacritty.yaml $SCRIPTPATH/src/.config/alacritty/
cp -r $HOME/.config/i3/config $SCRIPTPATH/src/.config/i3/
cp -r $HOME/.config/nvim/init.lua $SCRIPTPATH/src/.config/nvim/
cp -r $HOME/.config/tmux/tmux.conf $SCRIPTPATH/src/.config/tmux/
cp $HOME/.gitconfig $SCRIPTPATH/src/
sed -i --follow-symlinks -e "s/signingkey.*[0-9A-Z]*/signingkey = {{ gpg_key.fingerprints[0] }}/g" $SCRIPTPATH/src/.gitconfig
cp -r $HOME/.gnupg/gpg-agent.conf $SCRIPTPATH/src/.gnupg/

