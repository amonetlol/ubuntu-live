#!/bin/bash

# Atualizar os pacotes
#sudo apt update

# Instalar os pacotes necessários
sudo apt install -y open-vm-tools-desktop gnome-shell-extension-manager curl

# Instalar extensões no GNOME Extension Manager
gnome-extensions install ip-finder@extensions.gnome.org
gnome-extensions install vitals@extensions.gnome.org

# Instalar o uBlock Origin no Firefox
firefox https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/addon-607454-latest.xpi

# Executar o script do Firefox-UI-Fix
bash -c "$(curl -fsSL https://raw.githubusercontent.com/black7375/Firefox-UI-Fix/master/install.sh)"
