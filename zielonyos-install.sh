#!/bin/bash

option=""
pkgs="base-devel xterm cool-retro-term xclip wl-clipboard windowmaker progman sudo python-pipx nushell ninja micro nano xorg wayland git firefox fastfetch aria2 networkmanager lemurs btop flatpak rust"
pkgs_2000="base-devel xterm xclip wl-clipboard maxx-desktop sudo python-pipx nushell ninja micro nano xorg wayland git firefox fastfetch aria2 networkmanager lemurs btop flatpak rust"
flatpak1="com.github.tchx84.Flatseal"
flatpak2="io.github.flattool.Warehouse"
flatpak3="ru.linux_gaming.PortProton"
flatpak4="com.geeks3d.furmark"

clear
echo "ZielonyOS Installer!"
echo "Please run this installer in a freshly installed copy of Arch Linux without any DEs/WMs or Display managers!"
echo "Also install paru before running this script!"
echo "And add your user to sudoer."
echo "1. Install (Standard)"
echo "2. Install (ZielonyOS 2000's)"
echo "3. Exit"

read -p "Choose a option: " option

case $option in
    1)
	    echo "Installing..."
		paru -S $pkgs
		# ensure flathub repo
		flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
		# install flatpak apps
		flatpak install flathub $flatpak1
		flatpak install flathub $flatpak2
		flatpak install flathub $flatpak3
		flatpak install flathub $flatpak4
		echo "Package installation done!"
		echo "I will ask for your account's password now!"
		sudo systemctl enable lemurs.service
		sudo git clone https://github.com/Ivan951236/hydera-fetch
		cd hydera-fetch && cargo build && cp ./target/debug/hyfetch /usr/bin/hyfetch
		sudo chmod +x /usr/bin/hyfetch
		chsh -s /usr/bin/nu
		sudo cp ./motd /etc/motd
		sudo cp ./os-release /etc/os-release
		sudo cp ./.ascii_art_for_hyfetch ~
		sudo cp ./README_.md ~
		echo "For more information about the distro, read ~/README_.md!"
		sudo cp -r ./backgrounds/zielonyos /usr/share/backgrounds/
		echo "You can now use ZielonyOS wallpapers in Window Maker!"
		sudo cp -r ./grub.cfg /boot/grub/grub.cfg
		echo "if the copying didn't work for the GRUB configuration and you don't use GRUB, please disregard the error."
		sudo mkdir -p ~/.config/nushell/
		sudo cp -r ./nushell_cfgs/* ~/.config/nushell/
		echo "and we are done here!"
	    ;;
    2)
	    echo "Installing..."
		# install native packages
		paru -S $pkgs_2000
		# ensure flathub repo
		flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
		# install flatpak apps (not part of ZielonyOS 2000's edition, uncomment to remove historical values)
		# flatpak install flathub $flatpak1
		# flatpak install flathub $flatpak2
		# flatpak install flathub $flatpak3
		# flatpak install flathub $flatpak4
		echo "Package installation done!"
		echo "I will ask for your account's password now!"
		sudo systemctl enable lemurs.service
		sudo git clone https://github.com/Ivan951236/hydera-fetch
		cd hydera-fetch && cargo build && cp ./target/debug/hyfetch /usr/bin/hyfetch
		sudo chmod +x /usr/bin/hyfetch
		chsh -s /usr/bin/nu
		sudo cp ./motd /etc/motd
		sudo cp ./2000s/os-release /etc/os-release
		sudo cp ./.ascii_art_for_hyfetch ~
		sudo cp ./README_.md ~
		echo "For more information about the distro, read ~/README_.md!"
		sudo cp -r ./backgrounds/zielonyos /usr/share/backgrounds/
		echo "You can now use ZielonyOS wallpapers in Window Maker!"
		sudo cp -r ./grub.cfg /boot/grub/grub.cfg
		echo "if the copying didn't work for the GRUB configuration and you don't use GRUB, please disregard the error."
		sudo mkdir -p ~/.config/nushell/
		sudo cp -r ./nushell_cfgs/* ~/.config/nushell/
		echo "and we are done here!"
	    ;;
	3)
		echo "ZielonyOS Installer!"
        echo "Please run this installer in a freshly installed copy of Arch Linux without any DEs/WMs or Display managers!"
        echo "Also install paru before running this script!"
        echo "And add your user to sudoer."
        echo "1. Install (Standard)"
        echo "2. Install (ZielonyOS 2000's)"
        echo "3. Exit"
		echo "See you later :-)"
		break
		;;
	*)
	    echo "Invaild option. You didn't have to mistype :sob:"
		;;
esac

read -p "Press Enter to continue..."
