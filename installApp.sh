#!/bin/bash

#GIT
git config --global user.email "info@tomaskalina.cz"
git config --global user.name "Tomáš Kalina"

#https://mega.nz/#sync
#wget https://mega.nz/linux/MEGAsync/xUbuntu_16.10/amd64/nautilus-megasync-xUbuntu_16.10_amd64.deb
. /etc/os-release
echo "$VERSION_ID"
cd /tmp/
wget https://mega.nz/linux/MEGAsync/xUbuntu_"$VERSION_ID"/amd64/megasync-xUbuntu_"$VERSION_ID"_amd64.deb
wget https://mega.nz/linux/MEGAsync/xUbuntu_"$VERSION_ID"/amd64/nautilus-megasync-xUbuntu_"$VERSION_ID"_amd64.deb
sudo gdebi megasync-xUbuntu_"$VERSION_ID"_amd64.deb
sudo gdebi nautilus-megasync-xUbuntu_"$VERSION_ID"_amd64.deb

#vlc
mkdir ~/.cache/vlc

#report error
sudo sh -c 'echo "enabled=0" > /etc/default/apport'

#install node
curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash -
sudo apt-get install -y nodejs build-essential

#change keyboard
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'cz')]"
sudo cp /usr/share/X11/xkb/symbols/us /usr/share/X11/xkb/symbols/us-backup
sudo gedit /usr/share/X11/xkb/symbols/us

#GNOME
gsettings set org.gnome.shell.extensions.dash-to-dock autohide false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide false

#ZSH
cd
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir ~/.fonts/
mv PowerlineSymbols.otf ~/.fonts/
mkdir -p ~/.config/fontconfig/conf.d #if directory doesn't exists

fc-cache -vf ~/.fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/chrisands/zsh-yarn-completions ~/.oh-my-zsh/custom/plugins/zsh-yarn-completions
cp ./.zshrc ~/.zshrc 

#other
sudo apt update;
sudo apt install -y gdebi zsh chromium-browser gnome-tweak-tool chrome-gnome-shell curl gimp mc terminator htop


