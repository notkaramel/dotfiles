# ~/.zlogin
# Auto-start a Wayland session on TTY1

if [[ -z $DISPLAY && -z $WAYLAND_DISPLAY && $(tty) == /dev/tty1 ]]; then
  while true; do
    echo ""
    echo "Select a Wayland session:"
    echo "  [N] niri"
    echo "  [K] KDE Plasma (Wayland)"
    echo "  [S] Skip (drop to shell)"
    echo ""
    read -rk1 "choice?Session > "
    echo ""
    case $choice in
      [Nn]) exec niri-session ;;
      [Kk]) exec startplasma-wayland ;;
      [Ss]) break ;;
      *)
        echo "Invalid choice. Please press N, K, or S."
        ;;
    esac
  done
fi

