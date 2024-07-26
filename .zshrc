export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="jovial"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=()

# CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"

# Auto-update behaviour:
# - auto: update automatically without asking
# - disabled: disable automatic update
# - reminder: remind to update when it's time
zstyle ':omz:update' mode auto

# Change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="false"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  autojump
  urltools
  bgnotify
  zsh-autosuggestions
  zsh-syntax-highlighting
  jovial
  archlinux
)

source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export LC_ALL=en_CA.UTF-8
if [ -z $DISPLAY ] && [ $(tty) = /dev/tty1 ]
then
    # Autostart Hyprland
    export GTK_THEME=adw-gtk3-dark:dark
    exec Hyprland
elif [ -z $DISPLAY ] && [ $(tty) = /dev/tty2 ]
then
    # Autostart X at login for tty2, using i3 WM
    export GTK_THEME=adw-gtk3-dark:dark
    exec startx
fi

## Auto start Wayland at login, using Sway on Wayland tty2
# Start i3 WM on login, opt in using dGPU (NVIDIA)
#if [ -z "$DISPLAY" ] && [ "${XDG_VTNR}" -eq 2 ]; then
#    echo "Starting i3 WM on tty2 and enable NVIDIA GPU by default"
#   exec startx
#    export __NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia
#fi


export EDITOR=nvim

# Jack config for SuperCollider server
export SC_JACK_DEFAULT_INPUTS="system:capture_1,system:capture_2"
export SC_JACK_DEFAULT_OUTPUTS="system:playback_1,system:playback_2"

alias SHUTDOWN="shutdown now"

alias connectWifi='sudo wpa_supplicant -B -i wlo1 -c /etc/wpa_supplicant/wpa_supplicant.conf'

alias project='cd ~/Partage/Projects/'
alias coding='cd $HOME/Partage/Coding'

alias gotop="gotop -l kitchensink -c monokai --nvidia"
alias setbackground="feh --bg-fill --randomize $HOME/.wallpaper/"

alias fallinlight="feh --bg-fill --randomize /home/antoine/Pictures/Fallin\'\ Light"
alias micvol="wpctl set-volume @DEFAULT_SOURCE@"

alias enable-nvidia='export __NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia'
# alias weather='inxi -wxx --weather-unit m'
alias weather="curl https://wttr.in"
alias cal='cal -m'
alias please='sudo'

alias ibus-en='ibus engine xkb:us:intl:eng'
alias ibus-vn='ibus engine Bamboo'
export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus

export GPG_TTY=$(tty)

# bun completions
[ -s "/home/antoine/.bun/_bun" ] && source "/home/antoine/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(zoxide init --cmd cd zsh)"



if [ -e /home/antoine/.nix-profile/etc/profile.d/nix.sh ]; then . /home/antoine/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
