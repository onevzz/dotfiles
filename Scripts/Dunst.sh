#!/bin/sh
systemctl status --user dunst
systemctl disable --user dunst
systemctl edit --user --full dunst
# Under [Service], Add in the below configuration:
# Environment=DISPLAY=:0
systemctl enable --user dunst

