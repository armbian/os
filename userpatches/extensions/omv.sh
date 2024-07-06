function extension_prepare_config__omv() {
	case "${RELEASE}" in
		bookworm | trixie)
			display_alert "Target image will have OpenMediaVault (OMV) preinstalled" "${RELEASE} ${EXTENSION}" "info"
			;;
		*)
			exit_with_error "OpenMediaVault (OMV) is not supported on ${DISTRIBUTION} ${RELEASE}"
			;;
	esac

	EXTRA_IMAGE_SUFFIXES+=("-omv") # global array

}

function pre_install_kernel_debs__install_omv_packages(){
	display_alert "Adding OpenMediaVault (OMV) package for release ${RELEASE}" "${EXTENSION}" "info"

	display_alert "Adding gpg-key for OpenMediaVault (OMV)" "${EXTENSION}" "info"
	run_host_command_logged curl --max-time 60 -4 -fsSL "https://packages.openmediavault.org/public/archive.key" "|" gpg --dearmor -o "${SDCARD}"/usr/share/keyrings/openmediavault-archive-keyring.gpg

	# Add sources.list
	display_alert "Adding sources.list for OpenMediaVault (OMV)" "Debian :: ${EXTENSION}" "info"
	run_host_command_logged echo "deb [arch=${ARCH} signed-by=/usr/share/keyrings/openmediavault-archive-keyring.gpg] https://packages.openmediavault.org/public sandworm main" "|" tee "${SDCARD}"/etc/apt/sources.list.d/openmediavault.list

	display_alert "Updating package lists with OpenMediaVault (OMV) repos" "${EXTENSION}" "info"
	do_with_retries 3 chroot_sdcard_apt_get_update

	display_alert "Installing OpenMediaVault (OMV) packages" "${EXTENSION}" "info"
	chroot_sdcard_apt_get_install --yes --auto-remove --show-upgraded \
	    --allow-downgrades --allow-change-held-packages \
	    --no-install-recommends \
	    --option DPkg::Options::="--force-confdef" \
	    --option DPkg::Options::="--force-confold" \
	    openmediavault
}
