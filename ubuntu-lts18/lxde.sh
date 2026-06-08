#!/data/data/com.termux/files/usr/bin/bash
set -euo pipefail
# Update installed package but keep configuration
apt update
apt upgrade -y -o Dpkg::Options::="--force-confold"

# Install depedency
apt install curl wget nano proot tar xz-utils -y

# download and extract rootfs under /data/data/com.termux/files/home/termux21-proot-script/<distroname>
echo "download and extract rootfs under /data/data/com.termux/files/home/termux21-proot-script/<distroname>"

ARCH=$(uname -m)
case "$ARCH" in
    armhf|arm|armv7l) 
        ARCH="arm" 
        ;;
    aarch64|arm64) 
        ARCH="aarch64" 
        ;;
    x86_64|amd64)
        ARCH="x86_64"
        ;;
    *)
        echo "Unsupported architecture: $ARCH"
        exit 1
        ;;
esac

mkdir -p /data/data/com.termux/files/home/termux21-proot-script/ubuntu-lts18-lxde/ubuntu-lts18
cd /data/data/com.termux/files/home/termux21-proot-script/ubuntu-lts18-lxde
curl -L https://github.com/arfshl/termux21-proot-script/releases/download/ubuntu-lts18/ubuntu-lts18-$ARCH.tar.xz --output ubuntu-lts18.tar.xz
proot --link2symlink tar -xJpf ubuntu-lts18.tar.xz -C ubuntu-lts18
rm ubuntu-lts18.tar.xz
mkdir -p /data/data/com.termux/files/home/termux21-proot-script/ubuntu-lts18-lxde/binds
mkdir -p /data/data/com.termux/files/home/termux21-proot-script/ubuntu-lts18-lxde/ubuntu-lts18/proc/fakethings

# A function for preparing fake /proc entries for certain system data interfaces which known to be restricted on Android OS.
# Dedicated for: 1004200828
if [ ! -f "/data/data/com.termux/files/home/termux21-proot-script/ubuntu-lts18-lxde/ubuntu-lts18/proc/fakethings/version" ]; then
curl -L https://raw.githubusercontent.com/arfshl/termux21-proot-scripts/refs/heads/main/proc/fakethings/version -o /data/data/com.termux/files/home/termux21-proot-script/ubuntu-lts18-lxde/ubuntu-lts18/proc/fakethings/version
fi

if [ ! -f "/data/data/com.termux/files/home/termux21-proot-script/ubuntu-lts18-lxde/ubuntu-lts18/proc/fakethings/stat" ]; then
curl -L https://raw.githubusercontent.com/arfshl/termux21-proot-scripts/refs/heads/main/proc/fakethings/stat -o /data/data/com.termux/files/home/termux21-proot-script/ubuntu-lts18-lxde/ubuntu-lts18/proc/fakethings/stat
fi

if [ ! -f "/data/data/com.termux/files/home/termux21-proot-script/ubuntu-lts18-lxde/ubuntu-lts18/proc/fakethings/vmstat" ]; then
curl -L https://raw.githubusercontent.com/arfshl/termux21-proot-scripts/refs/heads/main/proc/fakethings/vmstat -o /data/data/com.termux/files/home/termux21-proot-script/ubuntu-lts18-lxde/ubuntu-lts18/proc/fakethings/vmstat
fi

if [ ! -f "/data/data/com.termux/files/home/termux21-proot-script/ubuntu-lts18-lxde/ubuntu-lts18/proc/fakethings/loadavg" ]; then
curl -L https://raw.githubusercontent.com/arfshl/termux21-proot-scripts/refs/heads/main/proc/fakethings/loadavg -o /data/data/com.termux/files/home/termux21-proot-script/ubuntu-lts18-lxde/ubuntu-lts18/proc/fakethings/loadavg
fi

if [ ! -f "/data/data/com.termux/files/home/termux21-proot-script/ubuntu-lts18-lxde/ubuntu-lts18/proc/fakethings/kernelversion" ]; then
curl -L https://raw.githubusercontent.com/arfshl/termux21-proot-scripts/refs/heads/main/proc/fakethings/kernelversion -o /data/data/com.termux/files/home/termux21-proot-script/ubuntu-lts18-lxde/ubuntu-lts18/proc/fakethings/kernelversion
fi

if [ ! -f "/data/data/com.termux/files/home/termux21-proot-script/ubuntu-lts18-lxde/ubuntu-lts18/proc/fakethings/kernelrelease" ]; then
curl -L https://raw.githubusercontent.com/arfshl/termux21-proot-scripts/refs/heads/main/proc/fakethings/kernelrelease -o /data/data/com.termux/files/home/termux21-proot-script/ubuntu-lts18-lxde/ubuntu-lts18/proc/fakethings/kernelrelease
fi


if [ ! -f "/data/data/com.termux/files/usr/bin/ubuntu-lts18" ]; then
cat << "EOF" > /data/data/com.termux/files/usr/bin/ubuntu-lts18
#!/bin/bash
root="/data/data/com.termux/files/home/termux21-proot-script/ubuntu-lts18"
kernelrelease="$(cat /data/data/com.termux/files/home/termux21-proot-script/ubuntu-lts18-lxde/ubuntu-lts18/proc/fakethings/kernelrelease)"
kernelversion="$(cat /data/data/com.termux/files/home/termux21-proot-script/ubuntu-lts18-lxde/ubuntu-lts18/proc/fakethings/kernelversion)"

unset LD_PRELOAD

command=(
  proot
  --kill-on-exit
  --link2symlink
  -0
  -r "${root}/ubuntu-lts18"
)

if [ -n "$(ls -A "${root}/binds" 2>/dev/null)" ]; then
  for f in "${root}/binds"/*; do
    . "$f"
  done
fi

command+=(
  -k "\\Linux\\$(hostname)\\$kernelrelease\\$kernelversion\\$(uname -m)\\localdomain\\-1\\"
  -b /dev
  -b /proc
  -b /sys
  -b "${root}/ubuntu-lts18:/dev/shm"
  -b /proc/self/fd/2:/dev/stderr
  -b /proc/self/fd/1:/dev/stdout
  -b /proc/self/fd/0:/dev/stdin
  -b /dev/urandom:/dev/random
  -b /proc/self/fd:/dev/fd
  -b "${root}/ubuntu-lts18/proc/fakethings/stat:/proc/stat"
  -b "${root}/ubuntu-lts18/proc/fakethings/vmstat:/proc/vmstat"
  -b "${root}/ubuntu-lts18/proc/fakethings/version:/proc/version"
  -b "${root}/ubuntu-lts18/proc/fakethings/loadavg:/proc/loadavg"
  # uncomment the following line to have access to the home directory of termux
  #-b /data/data/com.termux/files/home:/root/termux-home
  # uncomment the following line to the home sdcard
  #-b /sdcard:/root/sdcard
  -w /root
  /usr/bin/env -i
  MOZ_FAKE_NO_SANDBOX=1
  HOME=/root
  PATH=/usr/local/sbin:/usr/local/bin:/bin:/usr/bin:/sbin:/usr/sbin:/usr/games:/usr/local/games
  TERM="$TERM"
  LANG=C.UTF-8
  /bin/bash --login
)

if [ -z "$1" ]; then
  exec "${command[@]}"
else
  exec "${command[@]}" -c "$@"
fi
EOF
fi

# chmod +x /data/data/com.termux/files/home/termux21-proot-script/ubuntu-lts18-lxde/ubuntu-lts18/root/.bash_profile
echo "127.0.0.1 localhost localhost" > /data/data/com.termux/files/home/termux21-proot-script/ubuntu-lts18-lxde/ubuntu-lts18/etc/hosts
echo "nameserver 1.1.1.1" > /data/data/com.termux/files/home/termux21-proot-script/ubuntu-lts18-lxde/ubuntu-lts18/etc/resolv.conf
chmod +x /data/data/com.termux/files/home/termux21-proot-script/ubuntu-lts18-lxde/ubuntu-lts18/etc/resolv.conf
termux-fix-shebang /data/data/com.termux/files/usr/bin/ubuntu-lts18-lxde
chmod +x /data/data/com.termux/files/usr/bin/ubuntu-lts18-lxde

# setup desktop
ubuntu-lts18-lxde 'apt update && apt install wget -y'

ubuntu-lts18-lxde 'wget https://raw.githubusercontent.com/arfshl/proot-distro-desktop/refs/heads/main/ubuntu/lxde/install.sh -O install.sh && chmod +x install.sh && ./install.sh'

echo "Installation Complete!"
echo 'To start command line session: ubuntu-lts18-lxde'
echo 'To start VNC server: startvnc'
echo 'To stop VNC server: stopvnc'
echo 'To restart VNC server: restartvnc'
echo 'Default user: ubuntu-lts18-lxde'
echo 'Default password: 123'    
echo 'VNC server address: 127.0.0.1:5900'
echo 'Default VNC password: 1234567890'
