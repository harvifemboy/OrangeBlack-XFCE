set -eu
NAME=OrangeBlack
SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
SOURCE="$SCRIPT_DIR/$NAME"
TARGET="$HOME/.local/share/themes/$NAME"
mkdir -p "$HOME/.local/share/themes"
rm -rf "$TARGET"
cp -R "$SOURCE" "$TARGET"
if command -v xfconf-query >/dev/null 2>&1; then
  xfconf-query -c xsettings -p /Net/ThemeName -n -t string -s "$NAME" 2>/dev/null || xfconf-query -c xsettings -p /Net/ThemeName -s "$NAME"
  xfconf-query -c xsettings -p /Xfce/SyncThemes -n -t bool -s true 2>/dev/null || xfconf-query -c xsettings -p /Xfce/SyncThemes -s true
  xfconf-query -c xfwm4 -p /general/theme -n -t string -s "$NAME" 2>/dev/null || xfconf-query -c xfwm4 -p /general/theme -s "$NAME"
  xfconf-query -c xfce4-notifyd -p /theme -n -t string -s "$NAME" 2>/dev/null || true
  xfce4-panel -r 2>/dev/null || true
  xfdesktop --reload 2>/dev/null || true
fi
printf '%s\n' "Installed $NAME to $TARGET"
printf '%s\n' "GTK and Xfwm4 theme settings were selected where xfconf-query is available."
