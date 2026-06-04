# Ubuntu Regular Release

## CLI
- distro aliases: ubuntu-cli


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/ubuntu/cli.sh && sh cli.sh && rm ~/cli.sh

## XFCE
- distro aliases: ubuntu-xfce
- Username: ubuntu-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/ubuntu/xfce.sh && sh xfce.sh && rm ~/xfce.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird atril ristretto galculator libheif1 xarchiver webp-pixbuf-loader fonts-liberation p7zip mousepad && apt clean

## LXQt
- distro aliases: ubuntu-lxqt
- Username: ubuntu-lxqt
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/ubuntu/lxqt.sh && sh lxqt.sh && rm ~/lxqt.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird lximage-qt kcalc lxqt-archiver qpdfview libheif1 webp-pixbuf-loader fonts-liberation p7zip featherpad && apt clean

## MATE
- distro aliases: ubuntu-mate
- Username: ubuntu-mate
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/ubuntu/mate/bootstrap.sh && sh bootstrap.sh && rm ~/mate.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird engrampa atril eom mate-calc pluma libheif1 webp-pixbuf-loader fonts-liberation p7zip && apt clean

    
## LXDE 
- distro aliases: ubuntu-lxde
- Username: ubuntu-lxde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/ubuntu/lxde.sh && sh lxde.sh && rm ~/lxde.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apt update && sudo apt install firefox vlc thunderbird xarchiver atril mousepad galculator gpicview libheif1 webp-pixbuf-loader fonts-liberation p7zip && apt clean


## Installing Chromium
    sudo su && wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/ubuntu/chromium-install.sh && sh chromium-install.sh && rm chromium-install.sh

## Disable apt Pager at Debian 13 or Ubuntu 26.04

      echo 'Binary::apt::Pager "false";' | sudo tee -a  /etc/apt/apt.conf.d/99nopager
