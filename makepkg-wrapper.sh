#!/bin/sh

exec /bin/sh -c "sudo pacman -Sy && makepkg $*"
