#!/bin/bash

DISTRO=$(uname -o)

if [ $DISTRO == Android ]; then
	export FPHISHER_ROOT="/data/data/com.termux/files/usr/opt/fphisher"
else
	export FPHISHER_ROOT="/usr/opt/fphisher"
fi

cd $FPHISHER_ROOT
bash ./fphisher.sh
