#!/bin/bash

export SCRIPTPATH=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

cp -r ~/.config/nvim ${SCRIPTPATH}/src/.config
cp -r ~/.config/tmux ${SCRIPTPATH}/src/.config
cp -r ~/.config/alacritty ${SCRIPTPATH}/src/.config

cp ~/.bash_profile ${SCRIPTPATH}/src
cp ~/.bashrc ${SCRIPTPATH}/src
cp ~/.hushlogin ${SCRIPTPATH}/src
