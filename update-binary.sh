#!/bin/sh
MODDIR=${0%/*}
pacman -Q pacman-static || exit 1
version=$(pacman -Q pacman-static | cut -d ' ' -f 2)
# install pacman binary
install -Dm 755 /usr/bin/makepkg -t $MODDIR/system/bin
install -Dm 755 /usr/bin/repo-add -t $MODDIR/system/bin
install -Dm 755 /usr/bin/pacman-key -t $MODDIR/system/bin
install -Dm 755 /usr/bin/makepkg-template -t $MODDIR/system/bin
install -Dm 755 /usr/bin/pacman-db-upgrade -t $MODDIR/system/bin
# install static binary
install -Dm 755 /usr/bin/pacman-static $MODDIR/system/bin/pacman
install -Dm 755 /usr/bin/vercmp-static $MODDIR/system/bin/vercmp
install -Dm 755 /usr/bin/testpkg-static $MODDIR/system/bin/testpkg
install -Dm 755 /usr/bin/pacman-conf-static $MODDIR/system/bin/pacman-conf
# install soft link
ln -sf repo-add $MODDIR/system/bin/repo-remove
ln -sf repo-add $MODDIR/system/bin/repo-elephant
# install file
install -Dm644 /etc/resolv.conf -t $MODDIR/system/etc
install -Dm644 /etc/pacman.conf -t $MODDIR/system/etc
install -Dm644 /etc/makepkg.conf -t $MODDIR/system/etc
install -Dm644 /etc/pacman.d/mirrorlist -t $MODDIR/system/etc/pacman.d
  
cat <<EOF > $MODDIR/module.prop
id=pacman-static
name=Pacman Static
version=$version
versionCode=1
author=5kind
description=Provide pacman-static in Android devices for pacstrap.
EOF
