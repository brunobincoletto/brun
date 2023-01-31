#!/bin/bash
brunfolder=$HOME/Applications/brun/
zsh="$HOME/.zshrc"
bashprofile="$HOME/.bash_profile"

if [ -d "$brunfolder" ]; then
  echo "A BRUN installation already exists in $brunfolder, maybe you want do a 'brun update'?"
else
  mkdir $brunfolder
  echo "--------------------------------------"
  echo "Installing BRUN on your machine!!"
  echo "--------------------------------------"
  cp -R * $brunfolder
  echo 'alias brun="bash $HOME/Applications/brun/brun.sh"' >>$zsh
  echo 'alias brun="bash $HOME/Applications/brun/brun.sh"' >>$bashprofile
  echo "Reloading bash_profile $bashprofile"
  echo "If you are using zsh maybe you need to reload it with command: source ~/.zshrc"
  source $bashprofile
  echo "--------------------------------------"
  echo "BRUN has been successfully installed!"
  echo "--------------------------------------"
fi
exit
