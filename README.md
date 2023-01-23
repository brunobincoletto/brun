![version](https://img.shields.io/badge/version-0.0.2-green.svg)

# What is BRUN?

BRUN is a command line tool to help Bruno (or you) execute routine development commands with ease way.

### Who is "BRUN" indicated for?

- Anxious or accelerated persons
- Diagnosed with Alzheimer's
- Disorganized or forgotten people who lose their notes

## Install BRUN

``sudo chmod -x install-brun.sh ; sudo perl -i -pe's/\r$//;' install-brun.sh ; sudo bash install-brun.sh``

## Update BRUN

``brun update``

## BRUN commands

##### Branch Renamer

`brun rename-branch`

Rename your local and remote branch.

##### Clean install

`brun clean-install`

Do a full and clean install in your node project folder.

**Same as** `rm -rf ./node_modules && rm package-lock.json && npm cache clean --force && nvm use && npm i`

## What's to come?

`brun generate-webview`

Generates a base webview in a few seconds.
It is already ready, but it needs to be adapted to generic projects.

`brun reset-project``

This command deletes your project, does a fury-get, installs the dependencies and starts the project with 1 line.


------------

##### Have ideas for simplifying or automating anything that can be done via the command line? Let me know.
