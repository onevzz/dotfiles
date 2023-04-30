#!/bin/sh
# MEANT TO BE RUN AS ROOT
systemctl enable ufw.service
systemctl disable iptables.service
systemctl disable nftables.service
systemctl enable tlp.service
systemctl enable NetworkManager.service
systemctl enable NetworkManager-dispatcher.service
systemctl mask systemd-rfkill.service
systemctl mask systemd-rfkill.socket

