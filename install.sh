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
install -Dm755 bin/chrooted -t "/usr/bin"
install -Dm755 share/scripts/create \
	share/chrooted/scripts/delete \
	share/chrooted/scripts/download \
	share/chrooted/scripts/list \
	share/chrooted/scripts/remove \
	share/chrooted/scripts/rename \
	share/chrooted/scripts/backup \
	share/chrooted/scripts/bclist \
	share/chrooted/scripts/restore \
	share/chrooted/scripts/bcremove \
	share/chrooted/scripts/start  -t "/usr/share/chrooted/scripts/"
install -Dm755 share/chrooted/bin/chroot -t "/usr/share/chrooted/bin/"
echo "Chrooted has been installed on your system!"