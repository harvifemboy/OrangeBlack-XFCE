set -eu
NAME=OrangeBlack
TARGET="$HOME/.local/share/themes/$NAME"
rm -rf "$TARGET"
if command -v xfconf-query >/dev/null 2>&1; then
  xfconf-query -c xsettings -p /Xfce/SyncThemes -s false 2>/dev/null || true
fi
printf '%s\n' "Removed $NAME from $TARGET"
