#!/bin/bash

# Test for root user
rootuser () {
  if [[ "$EUID" = 0 ]]; then
    continue
  else
    echo "Please Run As Root"
    sleep 2
    exit
  fi
}

rootuser
echo "Installing chrooted..."
cp -rf usr/bin /usr/bin/
cp -rf usr/share /usr/share/
echo "Chrooted has been installed on your system!"