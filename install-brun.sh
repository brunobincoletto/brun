#!/bin/bash
echo "Installing BRUN on your machine!!"
brunfolder=$HOME/Applications/brun;
zsh="~/.zshrc";
echo $zsh;
if [ -d "$HOME/Applications/brun" ]; then
  sudo mkdir $HOME/Applications/brun
fi
#sudo cp -r * $brunfolder
#sudo chmod -x $brunfolder*
#perl -i -pe's/\r$//;' $brunfolder*
if grep -Fxq "~/.zshrc" $zsh; then
  echo "Alias do brun já existe";
else
  if [ -d "~/.zshrc" ]; then
    #    echo 'alias brun="bash $HOME/Applications/brun.sh' > $zsh
    source $zsh;
  fi
fi

#echo 'alias brun="bash $HOME/Applications/brun.sh' >~/.bash_profile
#source ~/.bash_profile
#echo "BRUN has been successfully installed!"

exit;