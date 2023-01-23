#!/bin/bash
brunfolder=$HOME/Applications/brun;
zsh="~/.zshrc";
# if [ -f $brunfolder ]; then
#   sudo mkdir $brunfolder;
#   else
#   echo "A BRUN installation already exists in $brunfolder";
#
echo "Installing BRUN on your machine!!"
sudo cp -r * $brunfolder
echo "BRUN files copied in $HOME";

#sudo chmod -x $brunfolder*
#perl -i -pe's/\r$//;' $brunfolder*
# if grep -Fxq "brun.sh" $zsh; then
#   echo "Alias do brun já existe";
# else
#   if [ -d "~/.zshrc" ]; then
#     #    echo 'alias brun="bash $HOME/Applications/brun.sh' >> $zsh
#     source $zsh;
#   fi
# fi

#echo 'alias brun="bash $HOME/Applications/brun.sh' >~/.bash_profile
#source ~/.bash_profile
#echo "BRUN has been successfully installed!"

exit;