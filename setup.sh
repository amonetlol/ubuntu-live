#!/bin/bash

# Atualizar os pacotes
#sudo apt update

# Instalar os pacotes necessários
sudo apt install -y open-vm-tools-desktop gnome-shell-extension-manager curl htop wget

# Instalar extensões no GNOME Extension Manager
gnome-extensions install ip-finder@extensions.gnome.org
gnome-extensions install vitals@extensions.gnome.org

# Pre Install
mkdir ~/.src


# Download uFetch
wget https://gitlab.com/jschx/ufetch/-/raw/main/ufetch-ubuntu?ref_type=heads

# Dar permissão de execução ao ufetch-ubuntu
chmod +x ~/.src/ufetch/ufetch-ubuntu

# Adicionar alias ao bash
echo "alias ft='sh ~/.src/ufetch/ufetch-ubuntu'" >> ~/.bashrc
source ~/.bashrc

# Instalar o uBlock Origin no Firefox
firefox https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/addon-607454-latest.xpi

# Executar o script do Firefox-UI-Fix
bash -c "$(curl -fsSL https://raw.githubusercontent.com/black7375/Firefox-UI-Fix/master/install.sh)"

# Aplicar o tema Spaceship para o Firefox
firefox https://addons.mozilla.org/firefox/addon/spaceship_theme/
