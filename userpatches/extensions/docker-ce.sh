function extension_prepare_config__docker() {
	display_alert "Target image will have Docker Inc. preinstalled" "${EXTENSION}" "info"
}

function pre_install_kernel_debs__install_docker_packages(){
	display_alert "Adding Docker Inc. package for release ${RELEASE}" "${EXTENSION}" "info"

	display_alert "Adding gpg-key for Docker Inc." "${EXTENSION}" "info"
	run_host_command_logged curl --max-time 60 -4 -fsSL "https://download.docker.com/linux/ubuntu/gpg" "|" gpg --dearmor -o "${SDCARD}"/usr/share/keyrings/docker.gpg

	# Add sources.list
	if [[ "${DISTRIBUTION}" == "Debian" ]]; then
		display_alert "Adding sources.list for Docker Inc." "Debian :: ${EXTENSION}" "info"
		run_host_command_logged echo "deb [arch=${ARCH} signed-by=/usr/share/keyrings/docker.gpg] https://download.docker.com/linux/debian ${RELEASE} stable" "|" tee "${SDCARD}"/etc/apt/sources.list.d/docker.list
	elif [[ "${DISTRIBUTION}" == "Ubuntu" ]]; then
		display_alert "Adding sources.list for Docker Inc." "Ubuntu :: ${EXTENSION}" "info"
		run_host_command_logged echo "deb [arch=${ARCH} signed-by=/usr/share/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu ${RELEASE} stable" "|" tee "${SDCARD}"/etc/apt/sources.list.d/docker.list
	else
		exit_with_error "Unknown distribution: ${DISTRIBUTION}"
	fi

	display_alert "Updating package lists with Docker Inc. repos" "${EXTENSION}" "info"
	do_with_retries 3 chroot_sdcard_apt_get_update

	display_alert "Installing Docker Inc. packages" "${EXTENSION}: 'docker-ce' et al" "info"
	chroot_sdcard_apt_get_install docker-ce docker-ce-cli containerd.io docker-compose-plugin
}
