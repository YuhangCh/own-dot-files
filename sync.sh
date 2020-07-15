#!/bin/zsh
repo="$HOME/Repos/Plugins/own-dot-files"
dotcfg="/.config"
repocfg=$repo$dotcfg
homecfg=$HOME$dotcfg
fishdir="/fish"

dotstarship="/starship.toml"
tmuxcfg="/.tmux.conf"
nvimcfg="/nvim"
# fish shell
[[ ! -e $repocfg$fishdir ]] && mkdir $repocfg$fishdir 
cp -R $homecfg$fishdir $repocfg

# starship
cp $homecfg$dotstarship $repocfg$dotstarship
cp $HOME$tmuxcfg $repo$tmuxcfg

[[ ! -e $repocfg$nvimcfg ]] && mkdir $repocfg$nvimcfg 
cp -R $homecfg$nvimcfg $repocfg
