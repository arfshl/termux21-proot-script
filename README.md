# pd-andronix

Forked from AndronixApp/AndronixOrigin

Support for android 5/6 without proot-distro, based on andronixapp/andronixorigin, and running latest distro from proot-distro

## You Need
- [Termux App](https://github.com/termux/termux-app/releases)
- [VNC Viewer](https://play.google.com/store/apps/details?id=com.realvnc.viewer.android)

Supported Desktop Environment:
- XFCE, MATE, LXQt, LXDE (stable and worked well)

| Distribution     | Flavor/Desktop Environment | Supported CPU Arch | Docker Registry |
|------------------|----------------------------|----------------|-----------------|
| [Alpine Linux](https://github.com/arfshl/pd-andronix/tree/main/alpine) | CLI XFCE LXQt MATE | `arm` `aarch64` `x86` `x86_64` | `alpine:latest` |
| [Alpine Linux Edge](https://github.com/arfshl/pd-andronix/tree/main/alpine-edge) | CLI XFCE LXQt MATE | `arm` `aarch64` `x86` `x86_64` | `alpine:edge` |
| [Arch Linux](https://github.com/arfshl/pd-andronix/tree/main/arch) | CLI XFCE LXQt MATE LXDE | `arm` `aarch64` `x86_64` | `archlinux/archlinux` `danhunsaker/archlinuxarm` |
| [Debian Stable](https://github.com/arfshl/pd-andronix/tree/main/debian) (Recommended for beginners) | CLI XFCE LXQt MATE LXDE | `arm` `aarch64` `x86_64` | `debian:stable` |
| [Fedora](https://github.com/arfshl/pd-andronix/tree/main/fedora) | CLI XFCE LXQt MATE LXDE | `aarch64` `x86_64` | `fedora:latest` |
| [Manjaro](https://github.com/arfshl/pd-andronix/tree/main/manjaro) | CLI XFCE LXQt MATE LXDE | `aarch64` `x86_64` | `manjarolinux/base` | 
| [OpenSUSE Leap](https://github.com/arfshl/pd-andronix/tree/main/opensuse/) | CLI XFCE LXQt MATE LXDE | `aarch64` `x86_64` | `opensuse/leap` |
| [OpenSUSE Tumbleweed](https://github.com/arfshl/pd-andronix/tree/main/opensuse-tumbleweed/) | CLI XFCE LXQt MATE LXDE | `aarch64` `x86` `x86_64` | `opensuse/tumbleweed` |
| [Ubuntu Regular Release](https://github.com/arfshl/pd-andronix/tree/main/ubuntu) | CLI XFCE LXQt MATE LXDE | `arm` `aarch64` `x86_64` | `ubuntu:rolling` |
| [Ubuntu LTS](https://github.com/arfshl/pd-andronix/tree/main/ubuntu-lts) (Recommended for beginners) | CLI XFCE LXQt MATE LXDE | `arm` `aarch64` `x86_64` | `ubuntu:latest` |
| [Void Linux musl libc](https://github.com/arfshl/pd-andronix/tree/main/void) | CLI XFCE LXQt MATE LXDE | `arm` `aarch64` `x86_64` | `ghcr.io/void-linux/void-musl:latest` |


## Uninstalling
```
- Rootfs-only uninstall
#!/bin/sh
cd ~/pd-andronix && chmod -R 777 [distro aliases] && rm -rf [distro aliases]

rm -f /data/data/com.termux/files/usr/bin/[distro aliases]


- Full Uninstall, including in-termux dependency
#!/bin/sh
cd ~/pd-andronix && chmod -R 777 [distro aliases] && rm -rf [distro aliases]

rm -f /data/data/com.termux/files/usr/bin/[distro aliases]

apt remove proot pulseaudio -y && apt autoremove -y

Replace [distro aliases] with distro alias you're using, available on installation page
```

# Credits

[andronixapp/andronixorigin](https://github.com/AndronixApp/AndronixOrigin) Inspiration for making this project, VNC startup mechanism, Licensed under MIT License.

[linuxmasterdroid/termux-desktops](https://github.com/LinuxDroidMaster/Termux-Desktops) Pulseaudio startup mechanism, Licensed under GPLv3.

Pulseaudio fix for One UI, [Issue #19623 on termux-packages](https://github.com/termux/termux-packages/issues/19623)
