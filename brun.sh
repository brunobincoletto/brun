#!/bin/bash
bruncmd=$1
brunfolder=$HOME/Applications//brun
if [[ $1 == "rename-branch" ]]; then
  bash $brunfolder/commands/branch-rename.sh
  exit;
fi

if [[ $1 == "clean-install" ]]; then
  bash $brunfolder/commands/clean-install.sh;
  exit;
fi

echo "BRUN what? :(";
exit;
