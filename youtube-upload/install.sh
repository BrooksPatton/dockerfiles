#!/bin/bash

# Installs the scripts to the bin directory of the current user

INSTALL_DIRECTORY="$HOME"/bin

if [ -d "$INSTALL_DIRECTORY" ]
then
  cp ./bin/* "$INSTALL_DIRECTORY"/
else
  echo "Create a bin directory in your home page before running this script"
fi
