#!/bin/bash
curbranch=$(git branch | sed -n -e 's/^\* \(.*\)/\1/p');
if [ -d ".git" ]; then
  read -p "Enter the NEW branch name: " newname
  if [ -z $newname ]; then
    clear;
    echo -e "Run the script again and enter a new valid name that you want to rename...";
    exit;
  fi
  echo "Creating a new branch with the new name: $newname"
  git branch -m $newname
  git push origin -u $newname
  echo "Removing old branch: $curbranch"
  git push origin --delete $curbranch
  echo "DONE! Now your branch $curbranch is called $newname !!!"
else
  echo "We didn't find GIT in this project, start again :("
  exit
fi
