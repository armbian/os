function extension_prepare_config__openhab() {
	EXTRA_IMAGE_SUFFIXES+=("-openhab") # global array
	HOST="openhab"
	display_alert "Target image will have OpenHab preinstalled" "${EXTENSION}" "info"
}

function pre_install_kernel_debs__install_openhab_packages(){
	display_alert "Adding gpg-key for Zulu and OpenHab repository" "${EXTENSION}" "info"
	run_host_command_logged curl --max-time 60 -4 -fsSL "https://repos.azul.com/azul-repo.key" "|" gpg --dearmor -o "${SDCARD}"/usr/share/keyrings/azul.gpg
	run_host_command_logged curl --max-time 60 -4 -fsSL "https://openhab.jfrog.io/artifactory/api/gpg/key/public" "|" gpg --dearmor -o "${SDCARD}"/usr/share/keyrings/openhab.gpg

	# To do: use armbian repository only

	# Add sources.list
	display_alert "Adding sources.list for Zulu." "${EXTENSION}" "info"
	run_host_command_logged echo "deb [signed-by=/usr/share/keyrings/azul.gpg] https://repos.azul.com/zulu/deb stable main" "|" tee "${SDCARD}/etc/apt/sources.list.d/zulu.list"
	display_alert "Adding sources.list for OpenHab." "${EXTENSION}" "info"
	run_host_command_logged echo "deb [signed-by=/usr/share/keyrings/openhab.gpg] https://openhab.jfrog.io/artifactory/openhab-linuxpkg stable main" "|" tee "${SDCARD}/etc/apt/sources.list.d/openhab.list"

	display_alert "Updating package lists" "${EXTENSION}" "info"
	do_with_retries 3 chroot_sdcard_apt_get_update

	# Optional preinstall top 10 tools
	display_alert "Installing ZuluJDK + OpenHab on ${RELEASE}" "${EXTENSION}" "info"
	chroot_sdcard_apt_get_install zulu17-jdk
	chroot_sdcard_apt_get_install openhab openhab-addons

}

function post_customize_image__enable_openhab() {
	display_alert "Enable OpenHab services on ${RELEASE}" "${EXTENSION}" "info"
	chroot_sdcard systemctl enable openhab.service
}
