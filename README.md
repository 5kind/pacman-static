<h1 align="center">Systemless Pacman</h1>

<div align="center">
  <!-- Min Magisk -->
    <img src="https://img.shields.io/badge/MinMagisk-20.4-red.svg?longCache=true&style=flat-square"
      alt="_time_stamp_" />
  <!-- Min KSU -->
    <img src="https://img.shields.io/badge/MinKernelSU-0.6.6-red.svg?longCache=true&style=flat-square"
      alt="_time_stamp_" /></div>

<div align="center">
  <strong>Provide pacman-static in Android devices for pacstrap.

</div>

<div align="center">
  <h3>
    <a href="https://github.com/chaitanyarahalkar/Pacman-Static">
      Source Code
    </a>
  </h3>
</div>

### Build
1. Install `git` `zip` `pacman-static` in current architecture archlinux container;
2. `git clone http://github.com/5kind/pacman-static && cd pacman-static  && ./update-binary.sh`
3. Modify files under [system/etc](system/etc/) to support https, choose mirrorlist/resolv.conf ... [optional]
4. run `zip -r install.zip *` in container, push `install.zip` to your device and install.


### Usage
- Install [chroot-service](http://github.com/5kind/chroot-service) modules.
- `pacstrap -h`
- `pacstrap $CHROOTDIR`
