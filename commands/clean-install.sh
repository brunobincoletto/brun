#!/bin/bash
if [ -f "package-lock.json" ]; then
  rm -rf ./node_modules;
  rm package-lock.json;
  npm cache clean --force;
  nvm use;
  npm i;
  echo "Clean install executed successfully!"
else
  echo "We couldn't find the package-lock.json file, try running the command manually. \n\n rm -rf ./node_modules && rm package-lock.json && npm cache clean --force && nvm use && npm i"
fi