#!/bin/bash

ROOTDIR=$(pwd)

make

sudo make install

if ! command -v trizen &> /dev/null
then
	git clone https://aur.archlinux.org/trizen.git
	cd trizen
	sudo makepkg -si
	trizen -S polybar-dwm-module
fi

ln -s $ROOTDIR/bar.sh $HOME/bar.sh
