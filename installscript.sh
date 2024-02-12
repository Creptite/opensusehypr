#setup packman repo
sudo zypper ar -cfp 90 https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/ packman
sudo zypper dup --from packman --allow-vendor-change

#install codecs
sudo zypper install opi
sudo zypper install hyprland pipewire wireplumber xdg-desktop-portal-hyprland kitty polkit-kde-agent-5 qt6-wayland libqt5-qtwayland
sudo zypper install waybar hyprpaper wofi hyprpicker clipman 
sudo zypper install xdg-user-dirs zsh firefox lf gammastep htop neofetch SwayNotificationCenter
sudo zypper install libreoffice ark gimp obs-studio btop discord
#setup docker since its a pain in the butt on opensuse
sudo zypper install distrobox
sudo systemctl enable docker
sudo systemctl start docker
sudo groupadd docker
sudo usermod -aG docker $USER
#need to restart at this point to make the docker group apply
#in order to setup root password on the arch images
#podman start Arch
#podman exec -it Arch bash
#sudo passwd root
#su
#sudo usermod -aG wheel zach

#distrobox-create --home ~/distrobox/arch -i archlinux:latest -n "Arch"


#use distrobox-export stremio instead of the debian garbage

#have to manuall install jetbrainsmono nerd font to .local/share/fonts still
xdg-user-dirs-update
