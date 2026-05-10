# shellcheck shell="sh"
NIRI_CFG_DIR="$HOME/.config/niri/"
DEFAULT_CFG_DIR="/etc/dms/defaults/niri"

if [ ! -f "$HOME/.config/niri/dms/" ]; then 
   install -D $DEFAULT_CFG_DIR "$NIRI_CFG_DIR"
fi