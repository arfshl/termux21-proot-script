# Debian 10 Buster
## CLI
- distro aliases: debian10-cli

#### Install
    curl -fsSL https://raw.githubusercontent.com/arfshl/termux21-proot-script/refs/heads/main/debian10/cli.sh | bash

## XFCE
- distro aliases: debian10-xfce
- Username: debian10-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -fsSL https://raw.githubusercontent.com/arfshl/termux21-proot-script/refs/heads/main/debian10/xfce.sh | bash

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird atril ristretto galculator libheif1 xarchiver webp-pixbuf-loader fonts-liberation p7zip mousepad && apt clean


## LXQt
- distro aliases: debian10-lxqt
- Username: debian10-lxqt
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -fsSL https://raw.githubusercontent.com/arfshl/termux21-proot-script/refs/heads/main/debian10/lxqt.sh | bash

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird lximage-qt kcalc lxqt-archiver qpdfview libheif1 webp-pixbuf-loader fonts-liberation p7zip featherpad && apt clean

## MATE
- distro aliases: debian10-mate
- Username: debian10-mate
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -fsSL https://raw.githubusercontent.com/arfshl/termux21-proot-script/refs/heads/main/debian10/mate.sh | bash

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird engrampa atril eom mate-calc pluma libheif1 webp-pixbuf-loader fonts-liberation p7zip && apt clean

    
## LXDE 
- distro aliases: debian10-lxde
- Username: debian10-lxde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -fsSL https://raw.githubusercontent.com/arfshl/termux21-proot-script/refs/heads/main/debian10/lxde.sh | bash

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird xarchiver atril mousepad galculator gpicview libheif1 webp-pixbuf-loader fonts-liberation p7zip && apt clean


## Installing Chromium
    curl -fsSL https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/debian/chromium-install.sh | bash