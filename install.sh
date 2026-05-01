#!/bin/bash
set -e

name="dreams"

is_root () {
    [ "$(id -u)" -eq 0 ]
}

if is_root; then
    target="/usr/local/share/icons/$name"
else
    target="$HOME/.local/share/icons/$name"
fi

echo "Installing in: $target"

mkdir -p "$target"
rsync -av scalable/ "$target/"
rsync -av symbolic/ "$target/"
gtk-update-icon-cache -f "$target"

if ! is_root; then
	gsettings set org.gnome.desktop.interface icon-theme "$name"
fi

echo "Done!"
exit 0

