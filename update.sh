#!/bin/bash

SCRIPTPATH=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

cp $HOME/.bash_profile $SCRIPTPATH/src/
cp $HOME/.bashrc $SCRIPTPATH/src/
cp $HOME/.gitconfig $SCRIPTPATH/src/
sed -i --follow-symlinks -e "s/signingkey.*[0-9A-Z]*/signingkey = {{ gpg_key.fingerprints[0] }}/g" $SCRIPTPATH/src/.gitconfig
cp $HOME/.hushlogin $SCRIPTPATH/src/
cp -r $HOME/.config/alacritty $SCRIPTPATH/src/.config/
cp -r $HOME/.config/nvim $SCRIPTPATH/src/.config/
cp -r $HOME/.config/tmux $SCRIPTPATH/src/.config/
cp -r $HOME/.gnupg/gpg-agent.conf $SCRIPTPATH/src/.gnupg/
