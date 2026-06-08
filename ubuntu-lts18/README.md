# Ubuntu LTS 18.04 Bionic Beaver
## CLI
- distro aliases: ubuntu-lts18-cli

#### Install
    curl -fsSL https://raw.githubusercontent.com/arfshl/termux21-proot-script/refs/heads/main/ubuntu-lts18/cli.sh | bash

## XFCE
- distro aliases: ubuntu-lts18-xfce
- Username: ubuntu-lts18-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -fsSL https://raw.githubusercontent.com/arfshl/termux21-proot-script/refs/heads/main/ubuntu-lts18/xfce.sh | bash

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird atril ristretto galculator libheif1 xarchiver webp-pixbuf-loader fonts-liberation p7zip mousepad && apt clean


## LXQt
- distro aliases: ubuntu-lts18-lxqt
- Username: ubuntu-lts18-lxqt
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -fsSL https://raw.githubusercontent.com/arfshl/termux21-proot-script/refs/heads/main/ubuntu-lts18/lxqt.sh | bash

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird lximage-qt kcalc lxqt-archiver qpdfview libheif1 webp-pixbuf-loader fonts-liberation p7zip featherpad && apt clean

## MATE
- distro aliases: ubuntu-lts18-mate
- Username: ubuntu-lts18-mate
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -fsSL https://raw.githubusercontent.com/arfshl/termux21-proot-script/refs/heads/main/ubuntu-lts18/mate.sh | bash

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird engrampa atril eom mate-calc pluma libheif1 webp-pixbuf-loader fonts-liberation p7zip && apt clean

    
## LXDE 
- distro aliases: ubuntu-lts18-lxde
- Username: ubuntu-lts18-lxde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    curl -fsSL https://raw.githubusercontent.com/arfshl/termux21-proot-script/refs/heads/main/ubuntu-lts18/lxde.sh | bash

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird xarchiver atril mousepad galculator gpicview libheif1 webp-pixbuf-loader fonts-liberation p7zip && apt clean


## Installing Chromium
    curl -fsSL https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/ubuntu/chromium-install.sh | bash