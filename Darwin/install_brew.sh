#!/usr/bin/env bash
which brew &> /dev/null
if [ $? -eq 0 ]; then
  echo "Homebrew already installed."
else
  echo "Homebrew not installed. Installing..."
  yes '' | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
fi

which cask &> /dev/null
if [ $? -eq 0 ]; then
  echo "Cask already installed."
else
  echo "Cask not installed. Installing..."
  brew install cask
fi
