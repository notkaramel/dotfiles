# Clean version of .zshrc

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="random"
# Good themes: juanghurtado
zstyle ':omz:update' mode auto

DISABLE_MAGIC_FUNCTIONS="false"
DISABLE_AUTO_TITLE="false"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="%F{yellow}"
HIST_STAMPS="%Y-%m-%d %H:%M"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  archlinux
  sudo
  ufw
  tmux
  zsh-interactive-cd
  zsh-navigation-tools
)

source $ZSH/oh-my-zsh.sh

# --- Environment ---
export LC_ALL=en_CA.UTF-8
export EDITOR=nvim
export ARCHFLAGS="-arch x86_64"
export GPG_TTY=$(tty)
export XMODIFIERS=@im=fcitx

# --- Paths ---
export PATH="$HOME/.local/bin:$PATH"

# Android SDK
export CAPACITOR_ANDROID_STUDIO_PATH="/usr/bin/android-studio"
export ANDROID_SDK_ROOT="$HOME/Android/Sdk"
export ANDROID_HOME="$HOME/Android/Sdk"

# Bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"

# NVM
export NVM_DIR="$HOME/.nvm"
alias snvm='[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"'

# --- Optional sources ---
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f "$HOME/Downloads/google-cloud-sdk/path.zsh.inc" ] && source "$HOME/Downloads/google-cloud-sdk/path.zsh.inc"
[ -f "$HOME/Downloads/google-cloud-sdk/completion.zsh.inc" ] && source "$HOME/Downloads/google-cloud-sdk/completion.zsh.inc"

# --- SuperCollider / JACK ---
export SC_JACK_DEFAULT_INPUTS="system:capture_1,system:capture_2"
export SC_JACK_DEFAULT_OUTPUTS="system:playback_1,system:playback_2"

# --- Aliases: system ---
alias SHUTDOWN="shutdown now"
alias please='sudo'
alias ip="ip --color"

# --- Aliases: network & wifi ---
alias connectWifi='sudo wpa_supplicant -B -i wlo1 -c /etc/wpa_supplicant/wpa_supplicant.conf'
alias weather="curl https://wttr.in"

# --- Aliases: directories ---
alias project='cd ~/Partage/Projects/'
alias coding='cd $HOME/Partage/Coding'

# --- Aliases: desktop & media ---
alias ns="niri-session"
alias setbackground="feh --bg-fill --randomize $HOME/.wallpaper/"
alias fallinlight="feh --bg-fill --randomize $HOME/Pictures/Fallin\'\ Light"
alias gotop="gotop -l kitchensink --nvidia"
alias micvol="wpctl set-volume @DEFAULT_SOURCE@"
alias playcd='cdda2wav -D /dev/sr0 -t 1+ -B - | pw-play --rate 44100 --quality 15 -'
alias mirror="wl-mirror $(niri msg --json focused-output | jq -r .name)"

# --- Aliases: nvidia ---
alias enable-nvidia='export __NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia'

# --- Aliases: misc ---
alias cal='cal -m'
alias bruh="echo 'bruh' | cowsay"
alias pecha="sleep 20 && echo \"KUCHA\""

# --- Aliases: bun ---
alias brd="bun run dev"
alias bi="bun install"
alias ba="bun add"
alias brb="bun run build"
alias brp="bun run preview"
alias brl="bun run lint"
alias brf="bun run format"

# --- Aliases: docker ---
alias dc="docker compose"
alias dcb="docker compose build"
alias dcu="docker compose up"
alias dcud="docker compose up -d"
alias dcub="docker compose up --build"
alias dcd="docker compose down"
alias dcuw="docker compose up --watch"
alias dclf="docker compose logs -f"
alias dcp="docker compose pull"
alias dcr="docker compose restart"
alias dps="docker ps"

# --- Tools ---
eval "$(zoxide init --cmd cd zsh)"
alias clear_cache="echo 3 > /proc/sys/vm/drop_caches"

# bun completions
[ -s "/home/antoine/.bun/_bun" ] && source "/home/antoine/.bun/_bun"
