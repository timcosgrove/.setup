#!/usr/bin/env bash

if [ "$(uname)" == "Darwin" ]; then
  # Apple installs basic dev commands but doesn't let you use them without going through UI-based dialogs. Let's bypass that.
  xcode-select -p &> /dev/null
  if [ $? -eq 0 ]; then
    echo "Xcode commandline tools already installed."
  else
    echo "Xcode commandline tools not installed. Installing..."
    PROD=$(softwareupdate -l |
    grep "\*.*Command Line" |
    head -n 1 | awk -F"*" '{print $2}' |
    sed -e 's/^ *//' |
    tr -d '\n')
    softwareupdate -i "$PROD" -v;
  fi
  # Now that we actually have tools, download this setup repo and carry on.
  git clone https://github.com/timcosgrove/.setup
  .setup/Darwin/setup.sh
fi
