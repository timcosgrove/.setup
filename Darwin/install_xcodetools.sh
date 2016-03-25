#!/usr/bin/env bash
xcode-select -p &> /dev/null
if [ $? -eq 0 ]; then
  echo "Xcode commandline tools installed."
else
  echo "Xcode commandline tools not installed. Installing..."
  touch /tmp/.com.apple.dt.CommandLineTools.installondemand.in-progress;
  PROD=$(softwareupdate -l |
    grep "\*.*Command Line" |
    head -n 1 | awk -F"*" '{print $2}' |
    sed -e 's/^ *//' |
    tr -d '\n')
echo $PROD;
#  softwareupdate -i "$PROD" -v;
fi
