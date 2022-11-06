#!/bin/bash

echo "Building chrooted..."
chmod +777 scripts/*
chmod +x bin/*
chmod +777 chrooted

chmod +x scripts/*
chmod +x bin/*
chmod +x chrooted

install -Dm755 chrooted -t "usr/bin"
install -Dm755 scripts/create \
	scripts/delete \
	scripts/download \
	scripts/list \
	scripts/remove \
	scripts/rename \
	scripts/start  -t "usr/share/chrooted/scripts/"
install -Dm755 bin/chroot -t "usr/share/chrooted/bin/"
echo "Building complete!"