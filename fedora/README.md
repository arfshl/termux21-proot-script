# Fedora

## CLI
- distro aliases: fedora-cli

#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/fedora/cli.sh && sh cli.sh && rm ~/cli.sh

## XFCE
- distro aliases: fedora-xfce
- Username: fedora-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/fedora/xfce.sh && sh xfce.sh && rm ~/xfce.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo dnf update && sudo dnf install firefox vlc thunderbird atril ristretto galculator libheif xarchiver webp-pixbuf-loader p7zip mousepad 

## LXQt
- distro aliases: fedora-lxqt
- Username: fedora-lxqt
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/fedora/lxqt.sh && sh lxqt.sh && rm ~/lxqt.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo dnf update && sudo dnf install firefox vlc thunderbird lximage-qt kcalc lxqt-archiver qpdf libheif webp-pixbuf-loader p7zip featherpad 


## MATE
- distro aliases: fedora-mate
- Username: fedora-mate
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/fedora/mate.sh && sh mate.sh && rm ~/mate.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo dnf update && sudo dnf install firefox vlc thunderbird engrampa atril eom mate-calc pluma libheif webp-pixbuf-loader p7zip 

    
## LXDE 
- distro aliases: fedora-lxde
- Username: fedora-lxde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/fedora/lxde.sh && sh lxde.sh && rm ~/lxde.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo dnf update && sudo dnf install firefox vlc thunderbird xarchiver atril mousepad galculator gpicview libheif webp-pixbuf-loader p7zip 

## Installing Chromium
    sudo su && wget https://github.com/arfshl/proot-distro-desktop/raw/refs/heads/main/fedora/chromium-install.sh && sh install-chromium.sh && rm install-chromium.sh