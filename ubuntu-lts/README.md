# Ubuntu LTS

## CLI
- distro aliases: ubuntu-lts-cli

#### Install
```sh
curl -fsSL https://raw.githubusercontent.com/arfshl/termux-proot-script/refs/heads/main/ubuntu-lts/cli.sh | bash
```

## XFCE
- distro aliases: ubuntu-lts-xfce
- Username: ubuntu-lts-xfce
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
```sh
curl -fsSL https://raw.githubusercontent.com/arfshl/termux-proot-script/refs/heads/main/ubuntu-lts/xfce.sh | bash
```

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
```sh
sudo apt update && sudo apt install firefox vlc thunderbird atril ristretto galculator libheif1 xarchiver webp-pixbuf-loader fonts-liberation p7zip mousepad && apt clean
```

## LXQt
- distro aliases: ubuntu-lts-lxqt
- Username: ubuntu-lts-lxqt
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
```sh
curl -fsSL https://raw.githubusercontent.com/arfshl/termux-proot-script/refs/heads/main/ubuntu-lts/lxqt.sh | bash
```

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
```sh
sudo apt update && sudo apt install firefox vlc thunderbird lximage-qt kcalc lxqt-archiver qpdfview libheif1 webp-pixbuf-loader fonts-liberation p7zip featherpad && apt clean
```

## MATE
- distro aliases: ubuntu-lts-mate
- Username: ubuntu-lts-mate
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
```sh
curl -fsSL https://raw.githubusercontent.com/arfshl/termux-proot-script/refs/heads/main/ubuntu-lts/mate.sh | bash
```

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
```sh
sudo apt update && sudo apt install firefox vlc thunderbird engrampa atril eom mate-calc pluma libheif1 webp-pixbuf-loader fonts-liberation p7zip && apt clean
```

## LXDE
- distro aliases: ubuntu-lts-lxde
- Username: ubuntu-lts-lxde
- `sudo` Password: 123
- VNC Server Address: 127.0.0.1:5900
- VNC Server Password: 1234567890

#### Install
```sh
curl -fsSL https://raw.githubusercontent.com/arfshl/termux-proot-script/refs/heads/main/ubuntu-lts/lxde.sh | bash
```

#### Install Web Browser, Media Player, Utility (Execute on rootfs)
```sh
sudo apt update && sudo apt install firefox vlc thunderbird xarchiver atril mousepad galculator gpicview libheif1 webp-pixbuf-loader fonts-liberation p7zip && apt clean
```

## Installing Chromium
```sh
curl -fsSL https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/ubuntu/chromium-install.sh | bash
```

## Disable apt Pager at Debian 13 or ubuntu-lts 26.04
```sh
echo 'Binary::apt::Pager "false";' | sudo tee -a /etc/apt/apt.conf.d/99nopager
```