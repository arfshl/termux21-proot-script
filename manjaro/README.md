# Manjaro

## CLI
- distro aliases: manjaro-cli

#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/manjaro/cli.sh && sh cli.sh && rm ~/cli.sh

## XFCE
- distro aliases: manjaro-xfce
- Username: arch-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/manjaro/xfce.sh && sh xfce.sh && rm ~/xfce.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo pacman -Sy --needed  firefox  vlc thunderbird  libheif webp-pixbuf-loader p7zip atril ristretto galculator xarchiver mousepad 



## MATE
- distro aliases: manjaro-mate
- Username: arch-mate
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/manjaro/mate.sh && sh mate.sh && rm ~/mate.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo pacman -Sy --needed firefox  vlc thunderbird  libheif webp-pixbuf-loader p7zip atril eom mate-calc engrampa pluma


## LXQt
- distro aliases: manjaro-lxqt
- Username: artch-lxqt
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/manjaro/lxqt.sh && sh lxqt.sh && rm ~/lxqt.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo pacman -Sy --needed firefox  vlc thunderbird  libheif webp-pixbuf-loader p7zip lximage-qt kcalc lxqt-archiver qpdfview featherpad

    
## LXDE
- distro aliases: manjaro-lxde
- Username: arch-lxde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/manjaro/lxde.sh && sh lxde.sh && rm ~/lxde.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo pacman -Sy --needed firefox  vlc thunderbird  libheif webp-pixbuf-loader p7zip atril gpicview galculator xarchiver mousepad 

## Installing Chromium
    sudo su && wget https://github.com/arfshl/proot-distro-desktop/raw/refs/heads/main/arch/install-chromium.sh && sh install-chromium.sh && rm install-chromium.sh
