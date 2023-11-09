#!/bin/sh
rm -f $HOME/.config/doom/init.el
rm -f $HOME/.config/doom/config.el
rm -f $HOME/.config/doom/packages.el
ln -s $HOME/Dotfiles/Configurations/doom/init.el $HOME/.config/doom/init.el
ln -s $HOME/Dotfiles/Configurations/doom/config.el $HOME/.config/doom/config.el
ln -s $HOME/Dotfiles/Configurations/doom/packages.el $HOME/.config/doom/packages.el

