#!/bin/bash

# arguments: $RELEASE $LINUXFAMILY $BOARD $BUILD_DESKTOP
#
# This is the image customization script

# NOTE: It is copied to /tmp directory inside the image
# and executed there inside chroot environment
# so don't reference any files that are not already installed

# NOTE: If you want to transfer files between chroot and host
# userpatches/overlay directory on host is bind-mounted to /tmp/overlay in chroot
# The sd card's root path is accessible via $SDCARD variable.

RELEASE=$1
LINUXFAMILY=$2
BOARD=$3
BUILD_DESKTOP=$4

Main() {
echo "Customizing $BOARD $BOARD_VENDOR"
#
# Default fixes
# Implement them to build script


echo "Remove MS and GH sources as we ship them via our repo"
[[ -f /etc/apt/sources.list.d/vscode.list ]] && rm -f /etc/apt/sources.list.d/vscode.list
[[ -f /etc/apt/sources.list.d/githubcli.list ]] && rm -f /etc/apt/sources.list.d/githubcli.list
[[ -f /etc/apt/preferences.d/99-neon-base-files ]] && rm -f /etc/apt/preferences.d/99-neon-base-files

stat -t -- /etc/apt/sources.list.d/oibaf-ubuntu-graphics-drivers-*.* >/dev/null 2>&1 && rm -f /etc/apt/sources.list.d/oibaf-ubuntu-graphics-drivers-*.*
stat -t -- /etc/apt/sources.list.d/xtradeb-ubuntu-apps-*.* >/dev/null 2>&1 && rm -f /etc/apt/sources.list.d/xtradeb-ubuntu-apps-*.*
stat -t -- /etc/apt/sources.list.d/liujianfeng1994-ubuntu-chromium-*.* >/dev/null 2>&1 && rm -f /etc/apt/sources.list.d/liujianfeng1994-ubuntu-chromium-*.*

# release based
	case $RELEASE in
		jammy)
			# your code here
			;;
	esac

} # Main

Main "$@"
