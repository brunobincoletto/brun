#!/bin/bash
bruncmd=$1
brunfolder=$HOME/Applications/brun
if [[ $1 == "rename-branch" ]]; then
  bash $brunfolder/commands/git/branch-rename.sh
  exit;
fi

if [[ $1 == "push" ]]; then
  bash $brunfolder/commands/git/fast-push.sh;
  exit;
fi

if [[ $1 == "merge" ]]; then
  bash $brunfolder/commands/git/pull-update.sh;
  exit;
fi

if [[ $1 == "kill-node" ]]; then
  bash $brunfolder/commands/kill-node.sh;
  exit;
fi

if [[ $1 == "clean-snapshot" ]]; then
  bash $brunfolder/commands/clean-snapshot.sh;
  exit;
fi

if [[ $1 == "clean-install" ]]; then
  bash $brunfolder/commands/clean-install.sh;
  exit;
fi

echo "BRUN what? :(";
exit;
