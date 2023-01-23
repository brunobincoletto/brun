#!/bin/bash
if [ -d ".git" ]; then
  read -p "Enter the name of the branch you want to rename: " curbranch
  if [ -z $curbranch ]; then
    clear
    echo -e "Run the script again and enter the current name of the branch you want to rename..."
    exit
  fi
  echo "Selecting the $curbranch you want to rename..."
  git checkout $curbranch
  read -p "Enter the NEW branch name: " newname
  if [ -z $newname ]; then
    clear
    echo -e "Run the script again and enter a new valid name that you want to rename..."
    exit
  fi
  echo "Creating a new branch with the new name: $newname"
  git branch -m $newname
  git push origin -u $newname
  echo "Removing old branch: $curbranch"
  git push origin --delete $curbranch
  echo "DONE! Now your branch $curbranch is called $newname !!!"
else
  echo "We didn't find GIT in this folder, start again :("
  exit
fi
