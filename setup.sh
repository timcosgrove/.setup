#!/usr/bin/env bash

if [ "$(uname)" == "Darwin" ]; then
  # For time being, do this kind of stupid.
  ./Darwin/setup.sh
fi
