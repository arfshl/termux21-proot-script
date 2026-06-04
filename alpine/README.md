# Alpine Linux

## CLI
- distro aliases: alpine-cli

#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/alpine/cli.sh && sh cli.sh && rm ~/cli.sh
   

## XFCE
- distro aliases: alpine-xfce
- Username: alpine-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/alpine/xfce.sh && sh xfce.sh && rm ~/xfce.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apk add firefox vlc thunderbird  libheif webp-pixbuf-loader p7zip atril ristretto galculator xarchiver mousepad

## LXQt
- distro aliases: alpine-lxqt
- Username: alpine-lxqt
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/alpine/lxqt.sh && sh lxqt.sh && rm ~/lxqt.sh

## MATE
- distro aliases: alpine-mate
- Username: alpine-mate
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/alpine/mate.sh && sh mate.sh && rm ~/mate.sh


## Installing Chromium
    sudo su && wget https://github.com/arfshl/proot-distro-desktop/raw/refs/heads/main/alpine/install-chromium.sh && sh install-chromium.sh && rm install-chromium.sh