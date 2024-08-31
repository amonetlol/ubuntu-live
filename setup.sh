#!/bin/bash

# Atualizar os pacotes
#sudo apt update

# Função para exibir a mensagem chamativa no terminal
show_message() {
    echo -e "\e[1;32m#######################################\e[0m"
    echo -e "\e[1;32m#        \e[1;31mExtensions Manager\e[1;32m           #\e[0m"
    echo -e "\e[1;32m#                                   #\e[0m"
    echo -e "\e[1;32m#  \e[1;34m- ip finder                     \e[1;32m#\e[0m"
    echo -e "\e[1;32m#  \e[1;34m- vitals                        \e[1;32m#\e[0m"
    echo -e "\e[1;32m#######################################\e[0m"
}

# Instalar os pacotes necessários
sudo apt install -y open-vm-tools-desktop gnome-shell-extension-manager curl htop wget libcanberra-gtk-module neovim vim

# Definir o tamanho do dock para 18
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 18

# Pre Install
mkdir ~/.src

# Download uFetch
git clone https://gitlab.com/jschx/ufetch ~/.src/ufetch

# Dar permissão de execução ao ufetch-ubuntu
chmod +x ~/.src/ufetch/ufetch-ubuntu

# Adicionar alias ao bash
echo "alias ft='sh ~/.src/ufetch/ufetch-ubuntu'" >> ~/.bashrc
source ~/.bashrc

# Executar o script do Firefox-UI-Fix
firefox
bash -c "$(curl -fsSL https://raw.githubusercontent.com/black7375/Firefox-UI-Fix/master/install.sh)"

# Instalar o uBlock Origin no Firefox
firefox https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/addon-607454-latest.xpi

# Aplicar o tema Spaceship para o Firefox
firefox https://addons.mozilla.org/firefox/addon/spaceship_theme/

# Instalar extensões no GNOME Extension Manager
#gnome-extensions install ip-finder@extensions.gnome.org
#gnome-extensions install vitals@extensions.gnome.org
#firefox https://extensions.gnome.org/extension/2983/ip-finder/
#firefox https://extensions.gnome.org/extension/1460/vitals/
show_message
