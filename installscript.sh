#setup packman repo
sudo zypper ar -cfp 90 https://ftp.gwdg.de/pub/linux/misc/packman/suse/openSUSE_Tumbleweed/ packman
sudo zypper dup --from packman --allow-vendor-change
sudo zypper ar obs://devel:tools:ide:vscode devel_tools_ide_vscode

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
    clipman
    dolphin
    xdg-user-dirs
    zsh
    firefox
    gammastep
    neofetch
    SwayNotificationCenter
    libreoffice
    ark
    gimp
    obs-studio
    btop
    htop
    discord
    distrobox
    openvpn
    qbittorrent
    v4l2loopback-utils
    v4l2loopback-kmp-default
    v4l2loopback-autoload
    ranger
    thunderbird
    rofi-wayland
    partitionmanager
    code
)

# Install packages using zypper
sudo zypper --non-interactive install "${packages[@]}"

#sets up user directory structure
xdg-user-dirs-update
#setup v4l2loop for screensharing through virtual camera
sudo modprobe v4l2loopback 
#DISTROBOX SETUP
#setup docker for distrobox
sudo systemctl enable docker
sudo systemctl start docker
sudo groupadd docker
sudo usermod -aG docker $USER
#need to restart at this point to make the docker group apply

#create distrobox
#distrobox-cre#need to restart at this point to make the docker group apply
#distrobox enter Arch
#sudo pacman -S base-devel git
#needed for Stremio and other packages on wayland
#sudo pacman -S qt5-wayland qt6-wayland
#git clone https://aur.archlinux.org/yay.git
#cd yay
#makepkg -si
#sudo yay stremio
#sudo yay spotify
#sudo yay spicetify-cli
#sudo yay freetube-bin
#sudo pacman -S obsidian
#sudo yay vscodium-bin
#export applications
#distrobox-export -a stremio    
#distrobox-export -a spotify    
#distrobox-export -a obsidian    
#distrobox-export -a freetube
#distrobox-export -a codium

#OTHER MANUAL STUFF that could probably be automated but lazy
#have to manuall install jetbrainsmono nerd font to .local/share/fonts still
