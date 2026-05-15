# IvyOS
Welcome to IvyOS! My own Distro with everything being an exotic choice!
The Web Browser is still not a exotic choice, and I am not fixing that.

Here's what's exotic:
Not many distros already have Window Maker as the default Window Manager, thus this distro uses it by default
also this distro can also use progman, just select progman in the display manager's selector and use progman! IvyOS is reccomended to be used with progman!
IvyOS can also alternatively use Window Maker, but it's not the full experience.

The Shell is also exotic, IvyOS is the only distro that uses Nushell! Shout out to Nushell and @kspatlas (atlas the genode fanatic) in Discord!
The Display Manager is already a exotic choice too.

IvyOS comes with Wallpapers, to check them out, go to Window Maker, then right click, select Appearances > Background > Images
but do not select images there, because it does tiles by default
and instead go to "Configure Window Maker" and select the background from there (by going to `/usr/share/backgrounds/ivyos/`)

# How to operate with IvyOS
Right now, I couldn't get the Calamares installer to cooperate with the installer, if you can do it yourself,
then please modifiy the IvyOS system and get the installer to work yourself!

(and also leave some steps on how to install IvyOS)

Because of the way of sharing IvyOS, it cannot be installed on bare metal,
because the VirtualBox Guest Additions would conflict with the nVidia drivers/AMD drivers/other video drivers.
so for now, just experience it as is.

# How to get the ASCII for Hyfetch
The custom ASCII should already be saved for Hyfetch, in the cases that's not the case,
just run `hyfetch -c` then right when it tells you if you want custom ASCII, say yes and select `/home/ivyos/.ascii_art_for_hyfetch`.

# Outro
Paru is installed instead of yay, because go repos blocks Russian IPs and Russian VPNs, so there is no yay, but if you do get yay working, for the full experience,
install `spm-arch` AUR package.

Thank you for not saying shit about my distro, have fun with the distro ^_^
