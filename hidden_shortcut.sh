#!/bin/bash
apps=("btop"
      "htop"
      "avahi-discover"
      "picom"
      "nvim"
      "Alacritty"
      "rofi-theme-selector"
      "bvnc"
      "bssh"
      "arandr"
      "vim"
      "ranger"
      "kitty"
      "kvantummanager"
      "meld"
      "qt5ct"
      "qt6ct"
      "qv4l2"
      "qvidcap"
      "nvim"
      "stoken-gui"
      "stoken-gui-small"
      "tint2"
      "yad-settings"
      "org.gnome.Extensions"
      "fish"
      "yad-icon-browser"
      "micro"
      "yelp"
      )

mkdir -p ~/.local/share/applications/
for app in "${apps[@]}"; do
  if [ -f "/usr/share/applications/$app.desktop" ]; then
    cp "/usr/share/applications/$app.desktop" ~/.local/share/applications/
    echo "NoDisplay=true" >> ~/.local/share/applications/$app.desktop
    echo "Ocultado: $app"
  else
    echo "Arquivo $app.desktop não encontrado"
  fi
done
