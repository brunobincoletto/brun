#!/bin/bash
read -p "Enter the commit message: " commitmsg
if [ -z $commitmsg ]; then
  clear
  echo -e "Run the script again and enter a new valid message that you want to commit..."
  exit
else
  echo "Listing all files that will be committed."
  git status
  echo "# >>> Do you confirm that you want to commit these changes?"
  read answer
  if [ "$answer" != "${answer#[Yy]}" ]; then # this grammar (the #[] operator) means that the variable $answer where any Y or y in 1st position will be dropped if they exist.
    echo "Adding all files and folders in stage..."
    git add .
    echo "Committing with the message: $commitmsg"
    git commit -m "$commitmsg"
    echo "Pushing the files to the repository..."
    git push
    echo "DONE!"
  else
    exit
  fi
fi
