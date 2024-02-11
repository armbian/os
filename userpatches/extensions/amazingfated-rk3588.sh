#
# SPDX-License-Identifier: GPL-2.0
# Copyright (c) 2023 Ricardo Pardini <ricardo@pardini.net>
# This file is a part of the Armbian Build Framework https://github.com/armbian/build/
#

# This add's amazingfate's PPAs to the the image, and installs all needed packages.
# It only works on LINUXFAMILY="rk3588-legacy" and RELEASE=jammy and BRANCH=legacy
# if on a desktop, installs more useful packages, and tries to coerce lightdm to use gtk-greeter and a Wayland session.
function extension_prepare_config__amazingfated_rk3588() {
	display_alert "Preparing amazingfated's rk3588 extension" "${EXTENSION}" "info"
	# Add to the image suffix.
	EXTRA_IMAGE_SUFFIXES+=("-amazingfated") # global array

	[[ "${BUILDING_IMAGE}" != "yes" ]] && return 0

	if [[ "${LINUXFAMILY}" != "rockchip-rk3588" && "${LINUXFAMILY}" != "rk35xx" ]]; then
		exit_with_error "${EXTENSION} only works on LINUXFAMILY=rockchip-rk3588/rk35xx, currently on '${LINUXFAMILY}'"
	fi

	if [[ "${BRANCH}" != "legacy" ]]; then
		exit_with_error "${EXTENSION} only works on BRANCH=legacy, currently on '${BRANCH}'"
	fi

	if [[ "${RELEASE}" != "jammy" ]]; then
		exit_with_error "${EXTENSION} only works on RELEASE=jammy, currently on '${RELEASE}'"
	fi
}

function post_install_kernel_debs__amazingfated_rk358() {
	display_alert "Adding amazingfated's rk3588 PPAs" "${EXTENSION}" "info"
	do_with_retries 3 chroot_sdcard add-apt-repository ppa:liujianfeng1994/panfork-mesa --yes --no-update
	do_with_retries 3 chroot_sdcard add-apt-repository ppa:liujianfeng1994/rockchip-multimedia --yes --no-update

	display_alert "Updating sources list, after amazingfated's rk3588 PPAs" "${EXTENSION}" "info"
	do_with_retries 3 chroot_sdcard_apt_get_update

	declare -a pkgs=(mali-g610-firmware)
	if [[ "${BUILD_DESKTOP}" == "yes" ]]; then
		pkgs+=(chromium-browser libwidevinecdm rockchip-multimedia-config)
	fi

	display_alert "Installing amazingfated's rk3588 packages" "${EXTENSION} :: ${pkgs[*]}" "info"
	do_with_retries 3 chroot_sdcard_apt_get_install "${pkgs[@]}"

	display_alert "Upgrading amazingfated's rk3588 packages" "${EXTENSION}" "info"
	do_with_retries 3 chroot_sdcard_apt_get upgrade

	display_alert "Installed amazingfated's rk3588 packages" "${EXTENSION}" "info"

	return 0
}

