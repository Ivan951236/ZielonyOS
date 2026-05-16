#!/bin/bash

option=""
pkgs="base-devel xterm cool-retro-term xclip wl-clipboard windowmaker progman sudo python-pipx nushell ninja micro nano xorg wayland hyfetch git firefox fastfetch aria2 networkmanager lemurs"

clear
echo "ZielonyOS Installer!"
echo "Please run this installer in a freshly installed copy of Arch Linux without any DEs/WMs or Display managers!"
echo "Also install paru before running this script!"
echo "And add your user to sudoer."
echo "1. Install"
echo "2. Uninstall"
echo "3. Exit"

read -p "Choose a option: " option

case $option in
    1)
	    echo "Installing..."
		paru -S $pkgs
		echo "Package installation done!"
		echo "I will ask for your account's password now!"
		sudo systemctl enable lemurs.service
		chsh -s /usr/bin/nu
		sudo cp ./motd /etc/motd
		sudo cp ./os-release /etc/os-release
		sudo cp ./.ascii_art_for_hyfetch ~
		sudo cp ./README_.md ~
		echo "For more information about the distro, read `~/README_.md`!"
		sudo cp -r ./backgrounds/zielonyos /usr/share/backgrounds/
		echo "You can now use zielonyos wallpapers in Window Maker!"
		echo "and we are done here!"
	    ;;
	2)
	    echo "Uninstalling"
		chsh -s /usr/bin/bash
		sudo pacman -Rns $pkgs
		echo "Package uninstallation done!"
		sudo rm -rf /usr/share/backgrounds/zielonyos/
		echo "Shall we meet again in foreseenable future..."
	    ;;
	3)
		echo "ZielonyOS Installer!"
        echo "Please run this installer in a freshly installed copy of Arch Linux without any DEs/WMs or Display managers!"
        echo "Also install paru before running this script!"
        echo "And add your user to sudoer."
        echo "1. Install"
        echo "2. Uninstall"
        echo "3. Exit"
		echo "See you later :-)"
		break
		;;
	*)
	    echo "Invaild option. You didn't have to mistype :sob:"
		;;
esac

read -p "Press Enter to continue..."
