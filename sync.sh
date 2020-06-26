#!/bin/zsh
repo="$HOME/Repos/Plugins/own-dot-files"
dotcfg="/.config"
repocfg=$repo$dotcfg
homecfg=$HOME$dotcfg
fishdir="/fish"
dotstarship="/starship.toml"

# fish shell
[[ ! -e $repocfg$fishdir ]] && mkdir $repocfg$fishdir 
cp -R $homecfg$fishdir $repocfg

# starship
cp $homecfg$dotstarship $repocfg$dotstarship

