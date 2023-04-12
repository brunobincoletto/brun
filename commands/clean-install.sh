#!/bin/bash
if [ -f "package-lock.json" ]; then
  rm -rf package-lock.json;
  if [ -d "./node_modules" ]; then
    rm -rf ./node_modules;
  fi
  if [ -f "manifest.images.json" ]; then
    rm -rf manifest.images.json
  fi
  npm cache clean --force;
  nvm use;
  npm i;
  npm run build
  echo "Clean install executed successfully!"
else
  echo "We couldn't find the package-lock.json file, try running the command manually. \n\n rm -rf ./node_modules && rm package-lock.json && npm cache clean --force && nvm use && npm i"
fi
