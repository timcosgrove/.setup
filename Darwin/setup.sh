#!/usr/bin/env bash
DIR="${BASH_SOURCE%/*}"
if [[ ! -d "$DIR" ]]; then DIR="$PWD"; fi
$("$DIR/install_xcodetools.sh")
$("$DIR/install_brew.sh")
