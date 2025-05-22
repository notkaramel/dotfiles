export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="theunraveler"

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
COMPLETION_WAITING_DOTS="%F{yellow}....hmm..."

# DISABLE_UNTRACKED_FILES_DIRTY="true"

# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# see 'man strftime' for details.
HIST_STAMPS="yy-mm-dd"

# ZSH_CUSTOM=/path/to/new-custom-folder

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
  git
  autojump
  zsh-autosuggestions
  zsh-syntax-highlighting
  archlinux
  sudo 
  tmux
  arduino-cli
)

source $ZSH/oh-my-zsh.sh

# export MANPATH="/usr/local/man:$MANPATH"

# Compilation flags
export ARCHFLAGS="-arch x86_64"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export LC_ALL=en_CA.UTF-8

# Starting a session from the TTY
# if [ -z $DISPLAY ] && [ $(tty) = /dev/tty1 ]
#then
    # Autostart Hyprland
#    export GTK_THEME=adw-gtk3-dark:dark
#    exec Hyprland
# elif [ -z $DISPLAY ] && [ $(tty) = /dev/tty2 ]
# then
    # Autostart X at login for tty2, using i3 WM
#    export GTK_THEME=adw-gtk3-dark:dark
#    exec startx
#fi

# In case I need to enable NVIDIA from start
#    export __NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia

export EDITOR=nvim

# Jack config for SuperCollider server
export SC_JACK_DEFAULT_INPUTS="system:capture_1,system:capture_2"
export SC_JACK_DEFAULT_OUTPUTS="system:playback_1,system:playback_2"

alias SHUTDOWN="shutdown now"

alias connectWifi='sudo wpa_supplicant -B -i wlo1 -c /etc/wpa_supplicant/wpa_supplicant.conf'

alias project='cd ~/Partage/Projects/'
alias coding='cd $HOME/Partage/Coding'

alias gotop="gotop -l kitchensink --nvidia"
alias setbackground="feh --bg-fill --randomize $HOME/.wallpaper/"

alias fallinlight="feh --bg-fill --randomize /home/antoine/Pictures/Fallin\'\ Light"
alias micvol="wpctl set-volume @DEFAULT_SOURCE@"

alias enable-nvidia='export __NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia'
alias weather="curl https://wttr.in"
alias cal='cal -m'
alias please='sudo'

alias ibus-en='ibus engine xkb:us:intl:eng'
alias ibus-vn='ibus engine Bamboo'

# export GTK_IM_MODULE=ibus
# export QT_IM_MODULE=ibus
# export XMODIFIERS=@im=ibus

export XMODIFIERS=@im=fcitx
# export GTK_IM_MODULE=fcitx
# export QT_IM_MODULE=fcitx

export GPG_TTY=$(tty)

# bun completions
[ -s "/home/antoine/.bun/_bun" ] && source "/home/antoine/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(zoxide init --cmd cd zsh)"

# Added by Nix installer:
# if [ -e /home/antoine/.nix-profile/etc/profile.d/nix.sh ]; then . /home/antoine/.nix-profile/etc/profile.d/nix.sh; fi

export NVM_DIR="$HOME/.nvm"
alias startNVM='[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"'  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# MATLAB
alias matlab="enable-nvidia && /usr/bin/matlab -nosoftwareopengl"

alias bruh="echo 'bruh' | cowsay"

# alias start_conda='source $HOME/antoine/anaconda3/bin/activate'
# source /usr/share/nvm/init-nvm.sh

