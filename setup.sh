#!/usr/bin/env bash

set -euo pipefail

ln -s ${PWD}/usb-mount.sh /usr/local/bin/usb-mount || echo "Script file exists."
ln -s ${PWD}/udev-usbstick.rules /etc/udev/rules.d/usbstick.rules || echo "Rules file exists." 
ln -s ${PWD}/usbstick-handler@.service /lib/systemd/system/usbstick-handler@.service || echo "Service file exists."

./docker-samba.sh

echo "Setup done succesfully, reboot to prepare media."
