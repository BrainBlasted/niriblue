# shellcheck shell="bash"
NIRI_CFG_DIR="$HOME/.config/"
DEFAULT_CFG_DIR="/etc/dms/defaults/niri"
# shellcheck disable=SC2034
DMS_PRIVESC="sudo"

if [[ $- == *i* ]]; then
    if [[ ! -d "$HOME/.config/niri/dms/" ]]; then 
        cp -r $DEFAULT_CFG_DIR "$NIRI_CFG_DIR"
        DMS_PRIVESC="sudo" dms setup outputs
        DMS_PRIVESC="sudo" dms setup cursor
    fi
fi
