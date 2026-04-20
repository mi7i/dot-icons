#!/bin/bash


target="$HOME/.local/share/icons"

echo "Installing cursor theme..."
mkdir -p "$target"
rsync -av dist/ "$target/"
gsettings set org.gnome.desktop.interface cursor-size 32

