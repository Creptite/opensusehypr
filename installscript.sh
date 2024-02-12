#setup packman repo
sudo zypper ar -cfp 90 https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/ packman
sudo zypper dup --from packman --allow-vendor-change

#install packages
packages=(
    opi
    hyprland
    pipewire
    wireplumber
    xdg-desktop-portal-hyprland
    kitty
    polkit-kde-agent-5
    qt6-wayland
    libqt5-qtwayland
    waybar
    hyprpaper
    wofi
    hyprpicker
    clipman
    xdg-user-dirs
    zsh
    firefox
    lf
    gammastep
    htop
    neofetch
    SwayNotificationCenter
    libreoffice
    ark
    gimp
    obs-studio
    btop
    discord
    distrobox
)

# Install packages using zypper
sudo zypper --non-interactive install "${packages[@]}"
#setup docker since its a pain in the butt on opensuse
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
