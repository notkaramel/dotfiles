# dotfiles

My configuration and styling for things I use on my Linux PC, embracing the power of GNU Stow and symlinks.

## Quick start

```sh
git clone --recurse-submodules git@github.com:notkaramel/dotfiles ~/dotfiles
cd ~/dotfiles
stow <app>
```

If you already cloned without submodules:
```sh
git submodule update --init --recursive
```

---

## GNU Stow

[GNU Stow](https://www.gnu.org/software/stow/) symlinks a package directory's contents into a target directory. By default the target is the parent of the current directory, so running from `~/dotfiles` symlinks into `~/`.

### User-local installation (default)

Installs configs into `~/` — no root required.

```sh
# From ~/dotfiles:
stow zsh        # → ~/.zshrc, etc.
stow alacritty  # → ~/.config/alacritty/
stow nvim       # → ~/.config/nvim/
stow waybar     # → ~/.config/waybar/
```

This is equivalent to:
```sh
stow <app> --target ~/
```

To remove (unstow):
```sh
stow -D <app>
```

### System-wide installation (requires sudo)

Some programs install assets into system directories under `/usr/share/`. Use `--target` to override the destination.

```sh
# Themes → /usr/share/themes/
sudo stow <theme> --dir ~/dotfiles --target /usr/share/themes

# Icons/cursors → /usr/share/icons/
sudo stow <icon-theme> --dir ~/dotfiles --target /usr/share/icons

# Fonts → /usr/share/fonts/
sudo stow <font> --dir ~/dotfiles --target /usr/share/fonts
```

To remove a system-wide stow:
```sh
sudo stow -D <app> --dir ~/dotfiles --target /usr/share/themes
```
---

## Docker in user space (rootless)

[INFO] Installed docker.service successfully.
[INFO] To control docker.service, run: `systemctl --user (start|stop|restart) docker.service`
[INFO] To run docker.service on system startup, run: `sudo loginctl enable-linger antoine`

[INFO] Creating CLI context "rootless"
Successfully created context "rootless"
[INFO] Using CLI context "rootless"
Current context is now "rootless"

[INFO] Make sure the following environment variable(s) are set (or add them to ~/.bashrc):
export PATH=/home/antoine/bin:$PATH

[INFO] Some applications may require the following environment variable too:
export DOCKER_HOST=unix:///run/user/1000/docker.sock

---

## CustomizeLinux

Third-party programs and themes managed as git submodules under `CustomizeLinux/`. After cloning with `--recurse-submodules` they are ready to use.

| Directory | Description | Install target |
|-----------|-------------|----------------|
| `adw-gtk3` | GTK3 libadwaita theme | `/usr/share/themes` (system) or `~/.themes` (user) |
| `minegrub` | Minecraft-style GRUB theme | `/boot/grub/themes` (requires sudo) |
| `posy-cursors` | Clean cursor theme | `/usr/share/icons` (system) or `~/.local/share/icons` (user) |
| `SpotX-Bash` | Spotify ad-blocker patch script | Run as user |
| `Tela-icon-theme` | Flat icon theme | `/usr/share/icons` (system) or `~/.local/share/icons` (user) |
| `yay` | AUR helper PKGBUILD | Build with `makepkg -si` |

### adw-gtk3

```sh
cd CustomizeLinux/adw-gtk3

# User install (~/.themes)
./install_theme.sh

# System install (/usr/share/themes)
sudo ./install_theme.sh
```

### minegrub (GRUB theme — requires sudo)

```sh
cd CustomizeLinux/minegrub
# Follow README instructions, then:
sudo cp -r minegrub-theme /boot/grub/themes/
# Update /etc/default/grub: GRUB_THEME="/boot/grub/themes/minegrub-theme/theme.txt"
sudo grub-mkconfig -o /boot/grub/grub.cfg
```

### posy-cursors

```sh
cd CustomizeLinux/posy-cursors

# User install
mkdir -p ~/.local/share/icons
cp -r posy-cursor* ~/.local/share/icons/

# System install
sudo cp -r posy-cursor* /usr/share/icons/
```

### SpotX-Bash

```sh
cd CustomizeLinux/SpotX-Bash
bash spotx.sh
```

### Tela-icon-theme

```sh
cd CustomizeLinux/Tela-icon-theme

# User install (~/.local/share/icons)
./install.sh

# System install (/usr/share/icons, requires sudo)
sudo ./install.sh
```

### yay (AUR helper)

```sh
cd CustomizeLinux/yay
makepkg -si
```

---

## Actively using programs

- Shell: `zsh` with `oh-my-zsh`
- Terminal: `alacritty`
- WM: `niri` (Wayland, scrollable tiling)
  - Wallpaper: `hyprpaper`
  - Notification: `mako`
  - Lock: `swaylock`
  - Bar: `waybar`
  - Menu: `wofi` / `wofi-emoji`
- Audio: `wireplumber`
- Tools: `tmux`, `neovim`

---

## Useful commands

Getting all locally installed packages:
```sh
pacman -Qs | grep "local/" | awk '{print $1}' | awk -F '/' '{print $2}' > allPackages.txt
```

Reinstalling all packages:
```sh
cat allPackages.txt | yay -S - --needed
```

---

## Printing (CUPS)

Printer setup and driver documentation is available in:

- `cups-printer/README.md`

---

## Notes

- Network interface is set to `wlan0`
- Static IP `192.168.0.99/24` assigned to `wlan0` via NetworkManager
  - Gateway: `192.168.0.1`
  - To inspect: `nmcli connection show`
  - To reconfigure: `nmcli connection modify <connection> ipv4.addresses 192.168.0.99/24 ipv4.gateway 192.168.0.1 ipv4.method manual && nmcli connection up <connection>`
- WPS Writer needs `libtiff5` package for PDF export

---

## License (CC0 1.0 Universal)

> See [LICENSE](LICENSE) for the full text.

notkaramel/dotfiles by Antoine Phan (@notkaramel) is marked with CC0 1.0 Universal. To view a copy of this license, visit http://creativecommons.org/publicdomain/zero/1.0

Credit: [Dreams of Autonomy](https://youtu.be/y6XCebnB9gs) and [DevInsideYou](https://youtu.be/CFzEuBGPPPg) for the GNU Stow workflow.

