#!/bin/bash
bruncmd=$1
if [[ $1 == "rename-branch" ]]; then
  bash ./commands/branch-rename.sh
  exit;
fi

if [[ $1 == "clean-install" ]]; then
  bash ./commands/clean-install.sh;
  exit;
fi

echo "BRUN what? :(";
exit;
