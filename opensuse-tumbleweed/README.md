# OpenSUSE Tumbleweed

## CLI
- distro aliases: opensuse-tumbleweed-cli

#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/opensuse-tumbleweed/cli.sh && sh cli.sh && rm ~/cli.sh

## XFCE
- distro aliases: opensuse-tumbleweed-xfce
- Username: opensuse-tumbleweed-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/opensuse-tumbleweed/xfce.sh && sh xfce.sh && rm ~/xfce.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo zypper  in  firefox  vlc thunderbird  libheif1 webp-pixbuf-loader p7zip atril ristretto galculator xarchiver mousepad 

## MATE
- distro aliases: opensuse-tumbleweed-mate
- Username: opensuse-tumbleweed-mate
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/opensuse-tumbleweed/mate.sh && sh mate.sh && rm ~/mate.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo zypper  in firefox  vlc thunderbird  libheif1 webp-pixbuf-loader p7zip atril eom mate-calc engrampa pluma

## LXQt
- distro aliases: opensuse-tumbleweed-lxqt
- Username: opensuse-tumbleweed-lxqt
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/opensuse-tumbleweed/lxqt.sh && sh lxqt.sh && rm ~/lxqt.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo zypper  in firefox  vlc thunderbird  libheif1 webp-pixbuf-loader p7zip lximage-qt kcalc lxqt-archiver qpdfview featherpad

    
## LXDE
- distro aliases: opensuse-tumbleweed-lxde
- Username: opensuse-tumbleweed-lxde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/opensuse-tumbleweed/lxde.sh && sh lxde.sh && rm ~/lxde.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo zypper  in firefox  vlc thunderbird  libheif1 webp-pixbuf-loader p7zip atril gpicview galculator xarchiver mousepad 

## Installing Chromium
    sudo su && wget https://github.com/arfshl/proot-distro-desktop/raw/refs/heads/main/opensuse/install-chromium.sh && sh install-chromium.sh && rm install-chromium.sh