#!/bin/bash
#https://mega.nz/#sync
#wget https://mega.nz/linux/MEGAsync/xUbuntu_16.10/amd64/nautilus-megasync-xUbuntu_16.10_amd64.deb

cp ./.zshrc ~/.zshrc 

. /etc/os-release
echo "$VERSION_ID"

sudo apt install -y gdebi
cd /tmp/
. /etc/os-release
wget https://mega.nz/linux/MEGAsync/xUbuntu_"$VERSION_ID"/amd64/megasync-xUbuntu_"$VERSION_ID"_amd64.deb
wget https://mega.nz/linux/MEGAsync/xUbuntu_"$VERSION_ID"/amd64/nautilus-megasync-xUbuntu_"$VERSION_ID"_amd64.deb
sudo gdebi megasync-xUbuntu_"$VERSION_ID"_amd64.deb
sudo gdebi nautilus-megasync-xUbuntu_"$VERSION_ID"_amd64.deb

#sudo add-apt-repository ppa:webupd8team/gnome3 -y
#sudo add-apt-repository ppa:ne0sight/chrome-gnome-shell -yz
#sudo add-apt-repository ppa:webupd8team/atom -y
#sudo add-apt-repository ppa:webupd8team/java -y
#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

mkdir ~/.cache/vlc

sudo apt update;

sudo apt install -y usbmount zsh chromium-browser gnome-tweak-tool chrome-gnome-shell curl git gitk gimp mc terminator htop # oracle-java8-installer  

cp .zshrc ~/
#set zsh to default
chsh -s /bin/zsh

curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
sudo apt-get install -y nodejs build-essential

sudo npm i -g yarn

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

sudo sh -c 'echo "enabled=0" > /etc/default/apport'


gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('xkb', 'cz')]"

cd
wget https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
wget https://github.com/powerline/powerline/raw/develop/font/10-powerline-symbols.conf
mkdir ~/.fonts/
mv PowerlineSymbols.otf ~/.fonts/
mkdir -p .config/fontconfig/conf.d #if directory doesn't exists

fc-cache -vf ~/.fonts/
mv 10-powerline-symbols.conf ~/.config/fontconfig/conf.d/


git config --global user.email "info@tomaskalina.cz"
git config --global user.name "Tomáš Kalina"


#change keyboard
sudo cp /usr/share/X11/xkb/symbols/us /usr/share/X11/xkb/symbols/us-backup
sudo gedit /usr/share/X11/xkb/symbols/us

#install UAF lib
sudo cp ./libssl.so.1.0.0  /usr/lib
sudo cp ./libcrypto.so.1.0.0  /usr/lib

gsettings set org.gnome.shell.extensions.dash-to-dock autohide false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide false

