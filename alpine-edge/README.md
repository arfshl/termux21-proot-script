# Alpine Linux Edge

## CLI
- distro aliases: alpine-edge-cli

#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/alpine-edge/cli.sh && sh cli.sh && rm ~/cli.sh
   

## XFCE
- distro aliases: alpine-edge-xfce
- Username: alpine-edge-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/alpine-edge/xfce.sh && sh xfce.sh && rm ~/xfce.sh

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
    sudo apk add firefox vlc thunderbird  libheif webp-pixbuf-loader p7zip atril ristretto galculator xarchiver mousepad

## LXQt
- distro aliases: alpine-edge-lxqt
- Username: alpine-edge-lxqt
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/alpine-edge/lxqt.sh && sh lxqt.sh && rm ~/lxqt.sh

## MATE
- distro aliases: alpine-edge-mate
- Username: alpine-edge-mate
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890


#### Install
    apt update && apt install wget -y && wget https://raw.githubusercontent.com/arfshl/pd-andronix/refs/heads/main/alpine-edge/mate.sh && sh mate.sh && rm ~/mate.sh


## Installing Chromium
    sudo su && wget https://github.com/arfshl/proot-distro-desktop/raw/refs/heads/main/alpine/install-chromium.sh && sh install-chromium.sh && rm install-chromium.sh