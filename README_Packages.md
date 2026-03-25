# Package Reference — LuminisArcana (Arch Linux)

This document categorizes all packages installed on the **LuminisArcana** machine, sourced from `allPackages_LuminisArcana.txt`. It serves as a reference for rebuilding or auditing the system.

---

## Table of Contents

1. [Base System & Boot](#1-base-system--boot)
2. [Build Tools & Development](#2-build-tools--development)
3. [Package Management](#3-package-management)
4. [Shell & Terminal](#4-shell--terminal)
5. [CLI Utilities](#5-cli-utilities)
6. [Text Editors](#6-text-editors)
7. [Desktop Environment — Niri / Wayland](#7-desktop-environment--niri--wayland)
8. [Audio — PipeWire / ALSA](#8-audio--pipewire--alsa)
9. [Bluetooth](#9-bluetooth)
10. [Networking](#10-networking)
11. [Virtualization & Containers](#11-virtualization--containers)
12. [Fonts](#12-fonts)
13. [Themes & Icons](#13-themes--icons)
14. [Web Browsers](#14-web-browsers)
15. [Communication & Social](#15-communication--social)
16. [Media & Entertainment](#16-media--entertainment)
17. [Graphics & GPU](#17-graphics--gpu)
18. [Scientific Computing & Math](#18-scientific-computing--math)
19. [Java](#19-java)
20. [JavaScript / Node.js](#20-javascript--nodejs)
21. [Python](#21-python)
22. [Security & Cryptography](#22-security--cryptography)
23. [Storage & Filesystem](#23-storage--filesystem)
24. [Android / iOS Connectivity](#24-android--ios-connectivity)
25. [Printing & Document Rendering](#25-printing--document-rendering)
26. [Qt Libraries](#26-qt-libraries)
27. [GTK & GNOME Libraries](#27-gtk--gnome-libraries)
28. [System Libraries](#28-system-libraries)

---

## 1. Base System & Boot

Core packages for a functional Arch system, kernel, bootloader, and firmware.

```
base base-devel filesystem licenses iana-etc tzdata
linux-lts linux-headers linux-api-headers linux-firmware
linux-firmware-amdgpu linux-firmware-atheros linux-firmware-broadcom
linux-firmware-cirrus linux-firmware-intel linux-firmware-mediatek
linux-firmware-nvidia linux-firmware-other linux-firmware-radeon
linux-firmware-realtek linux-firmware-whence
amd-ucode
glibc glib2 glib2-devel gcc-libs libgcc libstdc++ libc++ libatomic
coreutils findutils diffutils sed grep gawk tar gzip bzip2 xz lz4 lzo zstd
util-linux util-linux-libs shadow sudo pam pambase
procps-ng psmisc iproute2 iputils net-tools which less
man-db man-pages texinfo groff
kbd kmod systemd systemd-libs systemd-sysvcompat
grub efibootmgr efivar os-prober
mkinitcpio mkinitcpio-busybox
device-mapper cryptsetup
e2fsprogs btrfs-progs xfsprogs
```

---

## 2. Build Tools & Development

Compilers, build systems, and core development toolchain.

```
gcc binutils make cmake meson ninja
autoconf automake libtool m4 bison flex fakeroot patch pkgconf
clang compiler-rt lld llvm-libs
rust
debugedit pahole
doxygen gtk-doc gobject-introspection gobject-introspection-runtime
gendesk semver
```

---

## 3. Package Management

```
pacman pacman-mirrorlist archlinux-keyring
yay          # AUR helper
stow         # dotfile symlink manager
```

> **AUR:** `yay`, `yay-debug`

---

## 4. Shell & Terminal

```
zsh zsh-autosuggestions zsh-syntax-highlighting
bash fish
alacritty    # GPU-accelerated terminal
tmux
ncurses
```

---

## 5. CLI Utilities

```
bat ripgrep jq tree zoxide
htop gotop-bin
lf           # terminal file manager
inotify-tools rsync wget curl
dog          # DNS client (dig replacement)
openbsd-netcat
unzip zip
cowsay
```

> **AUR:** `gotop-bin`, `dog`, `lf`

---

## 6. Text Editors

```
neovim vim vim-runtime vim-plug
tree-sitter tree-sitter-c tree-sitter-lua tree-sitter-markdown
tree-sitter-query tree-sitter-vim tree-sitter-vimdoc
zed          # modern code editor
cursor-bin   # AI-powered editor
```

> **AUR:** `cursor-bin`, `vim-plug`

---

## 7. Desktop Environment — Niri / Wayland

Niri scrollable-tiling Wayland compositor with supporting ecosystem.

```
niri
waybar
wofi wofi-calc wofi-emoji wofi-pass
mako         # notification daemon
hyprpaper    # wallpaper
hyprcursor hyprgraphics hyprlang hyprtoolkit hyprutils
hyprwayland-scanner hyprwire
aquamarine   # Hyprland/Niri graphics layer

wayland wayland-protocols wayland-utils
xdg-desktop-portal xdg-desktop-portal-gnome xdg-desktop-portal-gtk
xdg-desktop-portal-hyprland
xdg-user-dirs xdg-user-dirs-gtk xdg-utils
gtk-layer-shell
seatd
wl-clipboard wlopm wtype
xwayland-satellite xorg-xwayland
xorg-setxkbmap xorg-xkbcomp xorg-xprop xorg-fonts-encodings
xkeyboard-config libxkbcommon libxkbcommon-x11 libxkbfile
polkit libdecor
playerctl
```

> **AUR:** `wofi-calc`, `wofi-emoji`, `wofi-pass`, `hyprwire`

---

## 8. Audio — PipeWire / ALSA

Full PipeWire audio stack with JACK and PulseAudio compatibility.

```
pipewire pipewire-audio pipewire-docs pipewire-jack
pipewire-pulse pipewire-session-manager pipewire-v4l2
wireplumber libwireplumber
rtkit
pavucontrol  # PulseAudio volume control
pwvucontrol  # PipeWire volume control
helvum       # PipeWire patchbay

alsa-lib alsa-card-profiles alsa-topology-conf alsa-ucm-conf
jack_delay aj-snapshot
```

> **AUR:** `pwvucontrol`, `pwvucontrol-debug`, `jack_delay`, `aj-snapshot`, `libwireplumber-4.0-compat`, `libwireplumber-4.0-compat-debug`

---

## 9. Bluetooth

```
bluez bluez-hid2hci bluez-libs bluez-utils bluez-tools bluez-qt5
blueberry-wayland
gnome-bluetooth
```

> **AUR:** `blueberry-wayland`

---

## 10. Networking

```
networkmanager libnm libnl libndp
iwd wpa_supplicant
nftables iptables
avahi libdaemon
openssh openssl
rpcbind
mobile-broadband-provider-info
```

---

## 11. Virtualization & Containers

Full QEMU/KVM stack plus Docker for containerization.

### Docker

```
docker docker-buildx docker-compose docker-machine
containerd runc
```

### QEMU / KVM

```
qemu-full qemu-base qemu-common qemu-desktop qemu-docs
qemu-img qemu-tools qemu-user
qemu-emulators-full
qemu-audio-alsa qemu-audio-dbus qemu-audio-jack qemu-audio-oss
qemu-audio-pa qemu-audio-pipewire qemu-audio-sdl qemu-audio-spice
qemu-block-curl qemu-block-dmg qemu-block-gluster
qemu-block-iscsi qemu-block-nfs qemu-block-ssh
qemu-chardev-baum qemu-chardev-spice
qemu-hw-display-qxl qemu-hw-display-virtio-gpu
qemu-hw-display-virtio-gpu-gl qemu-hw-display-virtio-gpu-pci
qemu-hw-display-virtio-gpu-pci-gl qemu-hw-display-virtio-gpu-pci-rutabaga
qemu-hw-display-virtio-gpu-rutabaga qemu-hw-display-virtio-vga
qemu-hw-display-virtio-vga-gl qemu-hw-display-virtio-vga-rutabaga
qemu-hw-s390x-virtio-gpu-ccw qemu-hw-uefi-vars
qemu-hw-usb-host qemu-hw-usb-redirect qemu-hw-usb-smartcard
qemu-pr-helper qemu-vmsr-helper qemu-tests qemu-vhost-user-gpu
qemu-ui-curses qemu-ui-dbus qemu-ui-egl-headless qemu-ui-gtk
qemu-ui-opengl qemu-ui-sdl qemu-ui-spice-app qemu-ui-spice-core
qemu-system-aarch64 qemu-system-alpha qemu-system-alpha-firmware
qemu-system-arm qemu-system-arm-firmware qemu-system-avr
qemu-system-hppa qemu-system-hppa-firmware
qemu-system-loongarch64 qemu-system-m68k
qemu-system-microblaze qemu-system-microblaze-firmware
qemu-system-mips qemu-system-or1k
qemu-system-ppc qemu-system-ppc-firmware
qemu-system-riscv qemu-system-riscv-firmware
qemu-system-rx qemu-system-s390x qemu-system-s390x-firmware
qemu-system-sh4 qemu-system-sparc qemu-system-sparc-firmware
qemu-system-tricore qemu-system-x86 qemu-system-x86-firmware
qemu-system-xtensa
edk2-aarch64 edk2-arm edk2-ovmf seabios
virtiofsd virglrenderer libslirp vde2 usbredir rutabaga-ffi
gfxstream libaemu libcacard libiscsi libnfs
spice spice-protocol
glusterfs
```

---

## 12. Fonts

```
noto-fonts noto-fonts-cjk noto-fonts-emoji noto-fonts-extra
ttf-dejavu ttf-dejavu-nerd ttf-liberation
otf-fira-mono otf-fira-sans woff2-fira-code
cantarell-fonts adwaita-fonts
ttf-material-symbols-variable
gsfonts
```

> **AUR:** `ttf-material-symbols-variable`

---

## 13. Themes & Icons

```
adwaita-cursors adwaita-icon-theme adwaita-icon-theme-legacy
hicolor-icon-theme default-cursors
xapp xapp-symbolic-icons
sound-theme-freedesktop
nodejs-material-design-icons otf-material-icons
```

> **AUR:** `xapp`, `xapp-symbolic-icons`, `nodejs-material-design-icons`

---

## 14. Web Browsers

```
chromium
vivaldi vivaldi-ffmpeg-codecs
```

---

## 15. Communication & Social

```
discord
slack-desktop
spotify
```

> **AUR:** `slack-desktop`, `spotify`

---

## 16. Media & Entertainment

```
ffmpeg mpd mpg123
flac wavpack opus libvorbis libtheora libopenmpt
libmad libbs2b libcdio libcdio-paranoia libbluray libdvdnav libdvdread
chromaprint
gstreamer gst-plugins-base gst-plugins-base-libs gst-plugins-bad-libs gst-plugin-gtk
totem-pl-parser
v4l-utils vapoursynth
vid.stab vmaf svt-av1 rav1e dav1d aom
x264 x265 xvidcore
rubberband soxr libebur128
playerctl
evince sushi nautilus
```

---

## 17. Graphics & GPU

```
mesa
vulkan-radeon vulkan-icd-loader vulkan-mesa-implicit-layers vulkan-tools
vulkan-icd-loader vulkan-tools
libdrm libva libvdpau libvpl libglvnd
ocl-icd
openxr
graphicsmagick
```

---

## 18. Scientific Computing & Math

```
matlab matlab-meta matlab-mpm
octave arpack blas lapack
fftw glpk hdf5 suitesparse sundials
qhull qrupdate
openmpi openpmix openucx prrte numactl hwloc
gpsd pps-tools
```

> **AUR:** `matlab`, `matlab-meta`, `matlab-mpm`, `matlab-mpm-debug`

---

## 19. Java

```
jdk-openjdk java-environment-common java-runtime-common
openjdk-doc openjdk-src
maven
```

---

## 20. JavaScript / Node.js

```
nodejs npm pnpm node-gyp nodejs-nopt
electron electron39
```

---

## 21. Python

```
python
python-autocommand python-babel python-breathe python-cffi
python-charset-normalizer python-dbus python-dbusmock python-docutils
python-gobject python-graphviz python-idna python-imagesize
python-jack-client python-jaraco.collections python-jaraco.context
python-jaraco.functools python-jaraco.text python-jinja python-lxml
python-mako python-markdown python-markupsafe python-more-itertools
python-packaging python-pkg_resources python-platformdirs
python-pyalsaaudio python-pycparser python-pygments
python-pyqt6 python-pyqt6-sip python-pytz python-requests
python-roman-numerals-py python-setproctitle python-setuptools
python-snowballstemmer python-sphinx python-sphinx-alabaster-theme
python-sphinx_rtd_theme python-sphinxcontrib-applehelp
python-sphinxcontrib-devhelp python-sphinxcontrib-htmlhelp
python-sphinxcontrib-jquery python-sphinxcontrib-jsmath
python-sphinxcontrib-qthelp python-sphinxcontrib-serializinghtml
python-tqdm python-typing_extensions python-urllib3 python-wheel
```

> **AUR:** `python-roman-numerals-py`, `python-pyalsaaudio`, `python-pyalsaaudio-debug`

---

## 22. Security & Cryptography

```
gnupg gpgme gpgmepp pinentry
pass passff-host
cryptsetup
tpm2-tools tpm2-tss
audit pcsclite
libsecret libgcrypt libgpg-error libksba libassuan npth
p11-kit libp11-kit
polkit bubblewrap
openssl gnutls nettle
ca-certificates ca-certificates-mozilla ca-certificates-utils
```

> **AUR:** `passff-host`

---

## 23. Storage & Filesystem

```
btrfs-progs btrbk e2fsprogs xfsprogs parted gparted
mdadm ndctl
udisks2 volume_key
libblockdev libblockdev-crypto libblockdev-fs libblockdev-loop
libblockdev-mdraid libblockdev-nvme libblockdev-part
libblockdev-smart libblockdev-swap libbytesize
multipath-tools
```

---

## 24. Android / iOS Connectivity

```
android-file-transfer android-tools android-udev
libimobiledevice libimobiledevice-glue libusbmuxd libtatsu libplist
mtpfs libmtp
```

---

## 25. Printing & Document Rendering

```
ghostscript gsfonts libspectre
poppler poppler-glib poppler-data
djvulibre
libcups
evince
```

---

## 26. Qt Libraries

```
qt5-3d qt5-base qt5-declarative qt5-graphicaleffects qt5-imageformats
qt5-location qt5-multimedia qt5-networkauth qt5-quickcontrols
qt5-quickcontrols2 qt5-script qt5-sensors qt5-serialport qt5-speech
qt5-svg qt5-tools qt5-translations qt5-virtualkeyboard qt5-wayland
qt5-x11extras qt5-xmlpatterns

qt6-3d qt6-5compat qt6-base qt6-charts qt6-connectivity qt6-datavis3d
qt6-declarative qt6-doc qt6-examples qt6-graphs qt6-grpc
qt6-httpserver qt6-imageformats qt6-languageserver qt6-location
qt6-lottie qt6-multimedia qt6-multimedia-ffmpeg qt6-networkauth
qt6-positioning qt6-quick3d qt6-quick3dphysics qt6-quickeffectmaker
qt6-quicktimeline qt6-remoteobjects qt6-scxml qt6-sensors
qt6-serialbus qt6-serialport qt6-shadertools qt6-speech qt6-svg
qt6-tools qt6-translations qt6-virtualkeyboard qt6-wayland
qt6-webchannel qt6-webengine qt6-websockets qt6-webview

qscintilla-qt6
```

---

## 27. GTK & GNOME Libraries

```
gtk3 gtk4 gtk-update-icon-cache gtk-layer-shell
gtkmm-4.0 gtkmm3 gtksourceview4
libadwaita libhandy
glib2 glibmm glibmm-2.68
cairo cairomm cairomm-1.16
pango pangomm pangomm-2.48
atkmm
gdk-pixbuf2 librsvg
at-spi2-core
gobject-introspection-runtime
gnome-keyring gnome-desktop gnome-desktop-4 gnome-desktop-common
gnome-autoar gnome-bluetooth
gsettings-desktop-schemas gsettings-system-schemas
dconf gvfs
gspell libgnomekbd
libayatana-appindicator libayatana-indicator ayatana-ido
libdbusmenu-glib libdbusmenu-gtk3
localsearch tinysparql
glycin libgirepository
xapp
```

---

## 28. System Libraries

Core shared libraries that underpin the entire system.

```
abseil-cpp acl attr audit brotli c-ares
curl libcurl-gnutls
dbus dbus-broker dbus-broker-units dbus-units
double-conversion duktape
expat fribidi fontconfig freetype2 harfbuzz
fuse2 fuse3 fuse-common
gc gmp mpfr mpc libmpc libmpc
giflib graphite graphene
hunspell enchant
icu json-c json-glib jsoncpp jansson
keyutils krb5 libkrb5
lcms2 lmdb lua luajit lua51-lpeg
lame libogg libvorbis flac
libao libcanberra
libass libavif libheif libjxl libyuv
libjpeg-turbo libpng libtiff libwebp
libinput libevdev libwacom mtdev tslib
libarchive libzip zziplib minizip
libmd libbsd libunistring libidn libidn2
libffi libelf libunwind
libfabric libbpf liburing liburcu libpcap
libsodium libseccomp
libxml2 libxmlb libxslt libgit2
libyaml tomlplusplus
md4c pugixml simdjson
msgpack-c protobuf re2
ncurses readline libedit libvterm unibilium
oniguruma pcre pcre2
pipewire-related: libpipewire libpipeline
portaudio sndio
sqlite mpdecimal gdbm db5.3
tdb lmdb
uchardet utf8proc libunibreak
usb: libusb hidapi
util: libaio libcap libcap-ng libnsl libtirpc
libuv libluv libevent libasyncns
vulkan: shaderc glslang spirv-tools
libplacebo
openal
zeromq libpgm
zlib zlib-ng
xxhash oniguruma
semver spdlog fmt srt snappy lz4 lzo
wolfssl leancrypto
libnice webrtc-audio-processing-1
rdma-core
sdl2-compat sdl2_image sdl3
libbluray libdvdnav libdvdread
faad2 fluidsynth gsm sbc speex speexdsp
lilv lv2 serd sord sratom zix
wildmidi twolame libmpcdec libshout
rubberband
libfreeaptx liblc3 libldac
opencore-amr openh264 l-smash
```

---

## Installation Commands

### Step 1 — Install `yay` (AUR helper) if not present

```bash
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git /tmp/yay
cd /tmp/yay && makepkg -si
```

### Step 2 — Install all official (pacman) packages

```bash
sudo pacman -S --needed \
  abseil-cpp acl adwaita-cursors adwaita-fonts adwaita-icon-theme \
  adwaita-icon-theme-legacy alacritty alsa-card-profiles alsa-lib \
  alsa-topology-conf alsa-ucm-conf amd-ucode android-file-transfer \
  android-tools android-udev aom appstream aquamarine archlinux-keyring \
  arpack at-spi2-core atkmm attr audit autoconf automake avahi \
  ayatana-ido base base-devel bash bat binutils bison blas bluez \
  bluez-hid2hci bluez-libs bluez-qt5 bluez-tools bluez-utils brotli \
  btrbk btrfs-progs bubblewrap bzip2 c-ares ca-certificates \
  ca-certificates-mozilla ca-certificates-utils cairo cairomm \
  cairomm-1.16 cantarell-fonts capstone cdparanoia chromaprint \
  chromium clang compiler-rt containerd coreutils cryptsetup curl \
  dav1d db5.3 dbus dbus-broker dbus-broker-units dbus-units dconf \
  debugedit default-cursors desktop-file-utils device-mapper diffutils \
  djvulibre docbook-xml docbook-xsl docker docker-buildx docker-compose \
  double-conversion doxygen dtc duktape e2fsprogs edk2-aarch64 \
  edk2-arm edk2-ovmf efibootmgr efivar electron enchant evince \
  exempi exiv2 expat faad2 fakeroot ffmpeg fftw file filesystem \
  findutils fish flac flex fluidsynth fmt fontconfig freeglut \
  freetype2 fribidi fuse-common fuse2 fuse3 gawk gc gcc gcc-libs \
  gcr gcr-4 gd gdbm gdk-pixbuf2 gettext gexiv2 gfxstream ghostscript \
  giflib git github-cli gjs gl2ps glib-networking glib2 glib2-devel \
  glib2-docs glibc glibmm glibmm-2.68 glm glpk glslang glu glusterfs \
  glycin gmp gnome-autoar gnome-bluetooth gnome-desktop gnome-desktop-4 \
  gnome-desktop-common gnome-keyring gnupg gnutls gobject-introspection \
  gobject-introspection-runtime gparted gperftools gpgme gpgmepp gpm \
  gpsd graphene graphicsmagick graphite graphviz grep groff grub \
  gsettings-desktop-schemas gsettings-system-schemas gsfonts gsm \
  gspell gssdp gst-plugin-gtk gst-plugins-bad-libs gst-plugins-base \
  gst-plugins-base-libs gstreamer gtest gtk-doc gtk-layer-shell \
  gtk-update-icon-cache gtk3 gtk4 gtkmm-4.0 gtkmm3 gtksourceview4 \
  gts guile gupnp gupnp-dlna gupnp-igd gvfs gzip harfbuzz hdf5 \
  helvum hicolor-icon-theme hidapi highway htop hunspell hwdata \
  hwloc hyprcursor hyprgraphics hyprlang hyprpaper hyprtoolkit \
  hyprutils hyprwayland-scanner iana-etc icu ijs iniparser \
  inotify-tools iproute2 iptables iputils iso-codes iwd jansson \
  jasper java-environment-common java-runtime-common jbig2dec \
  jbigkit jdk-openjdk jq js140 json-c json-glib jsoncpp kbd \
  keyutils kmod krb5 l-smash lame lapack lcms2 leancrypto less lf \
  libadwaita libaec libaio libao libarchive libasan libass libassuan \
  libasyncns libatasmart libatomic libavc1394 libavif \
  libayatana-appindicator libayatana-indicator libb2 libblockdev \
  libblockdev-crypto libblockdev-fs libblockdev-loop libblockdev-mdraid \
  libblockdev-nvme libblockdev-part libblockdev-smart libblockdev-swap \
  libbluray libbpf libbs2b libbsd libbytesize libcacard libcanberra \
  libcap libcap-ng libcbor libcdio libcdio-paranoia libcloudproviders \
  libcolord libcue libcups libcurl-gnutls libdaemon libdatrie \
  libdbusmenu-glib libdbusmenu-gtk3 libde265 libdecor libdeflate \
  libdisplay-info libdovi libdrm libdvdnav libdvdread libebur128 \
  libedit libei libelf libepoxy libevdev libevent libexif libfabric \
  libfdk-aac libffi libfontenc libfreeaptx libfyaml libgcc libgcrypt \
  libgexiv2 libgfortran libgirepository libgit2 libglvnd libgme \
  libgnomekbd libgomp libgpg-error libgsf libgudev libgxps libhandy \
  libheif libice libid3tag libidn libidn2 libiec61883 libimobiledevice \
  libimobiledevice-glue libinih libinput libiptcdata libiscsi \
  libisl libjpeg-turbo libjxl libksba liblc3 libldac libldap \
  liblouis liblsan libluv libmad libmakepkg-dropins libmd libmikmod \
  libmm-glib libmms libmng libmnl libmodplug libmpc libmpcdec \
  libmpdclient libmtp libmysofa libnautilus-extension libndp libnet \
  libnetfilter_conntrack libnewt libnfnetlink libnfs libnftnl \
  libnghttp2 libnghttp3 libngtcp2 libnice libnl libnm libnotify \
  libnsl libnvme libobjc libogg libopenmpt libosinfo libp11-kit \
  libpaper libpcap libpciaccess libpgm libpipeline libpipewire \
  libplacebo libplist libpng libportal libportal-gtk4 libproxy libpsl \
  libpulse libqalculate libquadmath libraw1394 librsvg libsamplerate \
  libsasl libseccomp libsecret libshout libsidplayfp libsigc++ \
  libsigc++-3.0 libslirp libsm libsndfile libsodium libsoup3 \
  libsoxr libspectre libspeechd libssh libssh2 libstdc++ libstemmer \
  libsynctex libsysprof-capture libtasn1 libtatsu libteam libthai \
  libtheora libtiff libtirpc libtool libtraceevent libtracefs \
  libtsan libubsan libunibreak libunistring libunwind libupnp \
  liburcu liburing libusb libusbmuxd libutempter libutf8proc libuv \
  libva libvdpau libverto libvorbis libvpl libvpx libvterm libwacom \
  libwebp libwireplumber libx11 libxau libxcb libxcomposite libxcrypt \
  libxcrypt-compat libxcursor libxcvt libxdamage libxdmcp libxdp \
  libxext libxfixes libxfont2 libxft libxi libxinerama libxkbcommon \
  libxkbcommon-x11 libxkbfile libxklavier libxml2 libxmlb libxpm \
  libxrandr libxrender libxshmfence libxslt libxss libxt libxtst \
  libxv libxxf86vm libyaml libyuv libzip licenses lilv linux-api-headers \
  linux-firmware linux-firmware-amdgpu linux-firmware-atheros \
  linux-firmware-broadcom linux-firmware-cirrus linux-firmware-intel \
  linux-firmware-mediatek linux-firmware-nvidia linux-firmware-other \
  linux-firmware-radeon linux-firmware-realtek linux-firmware-whence \
  linux-headers linux-lts lld llhttp llvm-libs lm_sensors lmdb \
  localsearch lua lua51-lpeg luajit lv2 lz4 lzo m4 mailcap make \
  mako man-db man-pages md4c mdadm mesa meson minizip mkinitcpio \
  mkinitcpio-busybox mobile-broadband-provider-info mpd mpdecimal \
  mpfr mpg123 msgpack-c mtdev mtpfs multipath-tools mxml nautilus \
  ncurses ndctl neovim net-tools netpbm nettle networkmanager \
  nftables ninja niri node-gyp nodejs nodejs-nopt noto-fonts \
  noto-fonts-cjk noto-fonts-emoji noto-fonts-extra npm npth nspr \
  nss numactl ocl-icd openal openbsd-netcat opencore-amr openh264 \
  openjdk-doc openjdk-src openjpeg2 openmpi openpmix openssh \
  openssl openucx openxr opus orc os-prober osinfo-db otf-fira-mono \
  otf-fira-sans p11-kit pacman pacman-mirrorlist pahole pam pambase \
  pango pangomm pangomm-2.48 parted pass patch pavucontrol pciutils \
  pcre pcre2 pcsclite perl perl-error perl-mailtools perl-timedate \
  pinentry pipewire pipewire-audio pipewire-docs pipewire-jack \
  pipewire-pulse pipewire-session-manager pipewire-v4l2 pixman \
  pkgconf playerctl pnpm polkit poppler poppler-data poppler-glib \
  popt portaudio pps-tools procps-ng protobuf prrte psmisc pugixml \
  python python-autocommand python-babel python-breathe python-cffi \
  python-charset-normalizer python-dbus python-dbusmock \
  python-docutils python-gobject python-graphviz python-idna \
  python-imagesize python-jack-client python-jaraco.collections \
  python-jaraco.context python-jaraco.functools python-jaraco.text \
  python-jinja python-lxml python-mako python-markdown \
  python-markupsafe python-more-itertools python-packaging \
  python-pkg_resources python-platformdirs python-pycparser \
  python-pygments python-pyqt6 python-pyqt6-sip python-pytz \
  python-requests python-setproctitle python-setuptools \
  python-snowballstemmer python-sphinx python-sphinx-alabaster-theme \
  python-sphinx_rtd_theme python-sphinxcontrib-applehelp \
  python-sphinxcontrib-devhelp python-sphinxcontrib-htmlhelp \
  python-sphinxcontrib-jquery python-sphinxcontrib-jsmath \
  python-sphinxcontrib-qthelp python-sphinxcontrib-serializinghtml \
  python-tqdm python-typing_extensions python-urllib3 python-wheel \
  qemu-audio-alsa qemu-audio-dbus qemu-audio-jack qemu-audio-oss \
  qemu-audio-pa qemu-audio-pipewire qemu-audio-sdl qemu-audio-spice \
  qemu-base qemu-block-curl qemu-block-dmg qemu-block-gluster \
  qemu-block-iscsi qemu-block-nfs qemu-block-ssh qemu-chardev-baum \
  qemu-chardev-spice qemu-common qemu-desktop qemu-docs \
  qemu-emulators-full qemu-full qemu-hw-display-qxl \
  qemu-hw-display-virtio-gpu qemu-hw-display-virtio-gpu-gl \
  qemu-hw-display-virtio-gpu-pci qemu-hw-display-virtio-gpu-pci-gl \
  qemu-hw-display-virtio-gpu-pci-rutabaga \
  qemu-hw-display-virtio-gpu-rutabaga qemu-hw-display-virtio-vga \
  qemu-hw-display-virtio-vga-gl qemu-hw-display-virtio-vga-rutabaga \
  qemu-hw-s390x-virtio-gpu-ccw qemu-hw-uefi-vars qemu-hw-usb-host \
  qemu-hw-usb-redirect qemu-hw-usb-smartcard qemu-img qemu-pr-helper \
  qemu-system-aarch64 qemu-system-alpha qemu-system-alpha-firmware \
  qemu-system-arm qemu-system-arm-firmware qemu-system-avr \
  qemu-system-hppa qemu-system-hppa-firmware qemu-system-loongarch64 \
  qemu-system-m68k qemu-system-microblaze \
  qemu-system-microblaze-firmware qemu-system-mips qemu-system-or1k \
  qemu-system-ppc qemu-system-ppc-firmware qemu-system-riscv \
  qemu-system-riscv-firmware qemu-system-rx qemu-system-s390x \
  qemu-system-s390x-firmware qemu-system-sh4 qemu-system-sparc \
  qemu-system-sparc-firmware qemu-system-tricore qemu-system-x86 \
  qemu-system-x86-firmware qemu-system-xtensa qemu-tests qemu-tools \
  qemu-ui-curses qemu-ui-dbus qemu-ui-egl-headless qemu-ui-gtk \
  qemu-ui-opengl qemu-ui-sdl qemu-ui-spice-app qemu-ui-spice-core \
  qemu-user qemu-vhost-user-gpu qemu-vmsr-helper qhull qrupdate \
  qscintilla-qt6 qt5-3d qt5-base qt5-declarative qt5-graphicaleffects \
  qt5-imageformats qt5-location qt5-multimedia qt5-networkauth \
  qt5-quickcontrols qt5-quickcontrols2 qt5-script qt5-sensors \
  qt5-serialport qt5-speech qt5-svg qt5-tools qt5-translations \
  qt5-virtualkeyboard qt5-wayland qt5-x11extras qt5-xmlpatterns \
  qt6-3d qt6-5compat qt6-base qt6-charts qt6-connectivity \
  qt6-datavis3d qt6-declarative qt6-doc qt6-examples qt6-graphs \
  qt6-grpc qt6-httpserver qt6-imageformats qt6-languageserver \
  qt6-location qt6-lottie qt6-multimedia qt6-multimedia-ffmpeg \
  qt6-networkauth qt6-positioning qt6-quick3d qt6-quick3dphysics \
  qt6-quickeffectmaker qt6-quicktimeline qt6-remoteobjects qt6-scxml \
  qt6-sensors qt6-serialbus qt6-serialport qt6-shadertools qt6-speech \
  qt6-svg qt6-tools qt6-translations qt6-virtualkeyboard qt6-wayland \
  qt6-webchannel qt6-webengine qt6-websockets qt6-webview rav1e \
  rdma-core re2 readline ripgrep rpcbind rsync rtkit rubberband runc \
  rust rutabaga-ffi sbc sdbus-cpp sdl2-compat sdl2_image sdl3 \
  seabios seatd sed semver serd shaderc shadow shared-mime-info \
  simdjson slang snappy sndio sord sound-theme-freedesktop spandsp \
  spdlog speex speexdsp spice spice-protocol spirv-tools sqlite \
  sratom srt stow sudo suitesparse sundials sushi svt-av1 systemd \
  systemd-libs systemd-sysvcompat taglib tar tcl tdb texinfo \
  tinysparql tmux tomlplusplus totem-pl-parser tpm2-tools tpm2-tss \
  tree tree-sitter tree-sitter-c tree-sitter-lua tree-sitter-markdown \
  tree-sitter-query tree-sitter-vim tree-sitter-vimdoc tslib \
  ttf-dejavu ttf-liberation twolame tzdata uchardet udisks2 \
  unibilium unzip upower usbredir util-linux util-linux-libs v4l-utils \
  vapoursynth vde2 vid.stab vim vim-runtime virglrenderer virtiofsd \
  vmaf volume_key vte-common vte3 vulkan-icd-loader \
  vulkan-mesa-implicit-layers vulkan-radeon vulkan-tools wavpack \
  waybar wayland wayland-protocols wayland-utils \
  webrtc-audio-processing-1 wget which wildmidi wireplumber \
  wl-clipboard wlopm wolfssl wpa_supplicant wtype x264 x265 \
  xcb-proto xcb-util xcb-util-cursor xcb-util-image xcb-util-keysyms \
  xcb-util-renderutil xcb-util-wm xdg-desktop-portal \
  xdg-desktop-portal-gnome xdg-desktop-portal-gtk \
  xdg-desktop-portal-hyprland xdg-user-dirs xdg-user-dirs-gtk \
  xdg-utils xfsprogs xkeyboard-config xorg-fonts-encodings \
  xorg-server-common xorg-setxkbmap xorg-xkbcomp xorg-xprop \
  xorg-xwayland xorgproto xvidcore xxhash xz yay zed zeromq zimg \
  zip zix zlib zlib-ng zoxide zsh zsh-autosuggestions \
  zsh-syntax-highlighting zstd zziplib
```

### Step 3 — Install AUR packages

```bash
yay -S --needed \
  aj-snapshot \
  blueberry-wayland \
  cable \
  cursor-bin \
  dog \
  ducker \
  gnome-bluetooth-debug \
  gotop-bin \
  gnutls3.8.9 gnutls3.8.9-debug \
  hyprwire \
  jack_delay \
  legcord \
  lf \
  libwireplumber-4.0-compat libwireplumber-4.0-compat-debug \
  matlab matlab-meta matlab-mpm matlab-mpm-debug \
  nodejs-material-design-icons \
  otf-material-icons \
  passff-host \
  pwvucontrol pwvucontrol-debug \
  python-pyalsaaudio python-pyalsaaudio-debug \
  python-roman-numerals-py \
  slack-desktop \
  spotify \
  ttf-dejavu-nerd \
  ttf-material-symbols-variable \
  vencord \
  vesktop vesktop-debug \
  woff2-fira-code \
  wofi-calc wofi-emoji wofi-pass \
  xapp xapp-symbolic-icons \
  xwayland-satellite \
  yay-debug \
  zed
```

> **Note:** Some AUR packages (especially `matlab`, `cursor-bin`, `slack-desktop`, `spotify`) may require manual steps or license agreements. Review each PKGBUILD before installing.

---

## Notes

- `electron` / `electron39` are pulled in as dependencies of `cursor-bin` and other Electron apps — installing those AUR packages will bring them in automatically.
- `docker-machine` is deprecated upstream; consider replacing with a native QEMU/KVM workflow or `podman`.
- The `gnutls3.8.9` packages are legacy compatibility versions; only needed if specific software pins to that ABI.
- Debug packages (`*-debug`, `yay-debug`) can be omitted on production systems — they exist for symbol-level debugging.
- `matlab` requires a valid MathWorks license to function after installation.
