#!/bin/bash

export SCRIPTPATH=$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)

cp -r ~/.config/nvim ${SCRIPTPATH}/src
cp -r ~/.config/tmux ${SCRIPTPATH}/src
cp -r ~/.config/alacritty ${SCRIPTPATH}/src
cp ~/.hushlogin ${SCRIPTPATH}/src
cp ~/.bashrc ${SCRIPTPATH}/src
cp ~/.bash_profile ${SCRIPTPATH}/src
