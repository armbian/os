#!/bin/bash
echo "Disable preupdate patch but keep reboot patch"
rm -f /etc/apt/apt.conf.d/02-armbian-preupdate
