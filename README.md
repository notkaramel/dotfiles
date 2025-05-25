# dotfiles
My configuration and styling for things I use on my Linux PC, while embracing the power of GNU Stow and symlink!

```sh
git clone git@github.com:notkaramel/dotfiles ~/dotfiles
cd ~/dotfiles
stow <the app>
```

Behind the scene, by default, Stow does:
```sh
stow <the app> --target ~/
# --target -> the parent folder
```

Credit: to [**Dreams of Autonomy** video](https://youtu.be/y6XCebnB9gs) and [**DevInsideYou**'s video](https://youtu.be/CFzEuBGPPPg) on GNU stow.

# License (CC0 1.0 Universal)
> See [LICENSE](LICENSE) for the full text.

notkaramel/dotfiles by Antoine Phan (@notkaramel) is marked with CC0 1.0 Universal. To view a copy of this license, visit http://creativecommons.org/publicdomain/zero/1.0

Essentially, you can do whatever you want with this and no need to credit me for the :sparkles: inspiration :sparkles:. (I'd appreciate it if you did, though!)

# Notes
- Network interface is set to `wlan0`

# Useful commands:
- Getting all the local packages (`pacman`)
```sh
pacman -Qs | grep "local/" | awk '{print $1}' - | awk -F '/' '{print $2}' > allPackages.txt
```
- (Re)Installing all packages back
```sh
cat allPackages.txt | yay -S - --needed
```

# Actively using programs
- Shell: `zsh` with `oh-my-zsh`
- Terminal: `alacritty`
- WM: `hyprland` and (slowly configuring) `niri`
  - Wallpaper: `hyprpaper`
  - Notification: `mako`
  - Lock: `swaylock`
  - Bar: `waybar`
  - Menu: `wofi` and `wofi-emoji`
- Audio: `wireplumber`
- Tools:
  - `tmux`
  - `neovim`

