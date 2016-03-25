#!/usr/bin/env bash
which brew &> /dev/null
if [ $? -eq 0 ]; then
  echo "Homebrew already installed."
else
  echo "Homebrew not installed. Installing..."
  yes '' | /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
fi
