#!/bin/bash
if [ -f "package-lock.json" ]; then
rm -rf package-lock.json;
fi
if [ -d "./node_modules" ]; then
  rm -rf ./node_modules;
fi
if [ -f "manifest.images.json" ]; then
  rm -rf manifest.images.json
fi
npm cache clean --force;
npm i;
npm run build
echo "Clean install executed successfully!"
echo "bye ;)"

