#!/bin/bash
#https://mega.nz/#sync
#wget https://mega.nz/linux/MEGAsync/xUbuntu_16.10/amd64/nautilus-megasync-xUbuntu_16.10_amd64.deb


sudo apt install -y gdebi
cd /tmp/
wget https://mega.nz/linux/MEGAsync/xUbuntu_17.10/amd64/megasync-xUbuntu_17.10_amd64.deb
wget https://mega.nz/linux/MEGAsync/xUbuntu_17.10/amd64/nautilus-megasync-xUbuntu_17.10_amd64.deb
sudo gdebi megasync-xUbuntu_17.10_amd64.deb
sudo gdebi nautilus-megasync-xUbuntu_17.10_amd64.deb

#sudo add-apt-repository ppa:webupd8team/gnome3 -y
#sudo add-apt-repository ppa:ne0sight/chrome-gnome-shell -y
sudo add-apt-repository ppa:webupd8team/atom -y
sudo add-apt-repository ppa:webupd8team/java -y
#sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886

sudo apt update;

sudo apt install -y zsh alacarte unrar-free p7zip-full p7zip-rar chromium-browser gnome-tweak-tool chrome-gnome-shell curl git gitk gimp mc terminator pidgin atom  keepass2 monodevelop mono-complete libmono-system-xml-linq4.0-cil libmono-system-data-datasetextensions4.0-cil libmono-system-runtime-serialization4.0-cil mono-mcs oracle-java8-installer libpangox-1.0-0

#for system-monitor extension
sudo apt-get install gir1.2-gtop-2.0 gir1.2-networkmanager-1.0  gir1.2-clutter-1.0

#set zsh to default
chsh -s /bin/zsh 

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs build-essential

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

#apm install linter language-babel highlight-selected atom-beautify autocomplete-paths todo-show color-picker linter-eslint editorconfig sort-lines Hyperclick js-hyperclick file-icons local-history

cd /tmp/
wget https://raw.github.com/pfn/keepasshttp/master/KeePassHttp.plgx
sudo mv KeePassHttp.plgx /usr/lib/keepass2

sudo sh -c 'echo "enabled=0" > /etc/default/apport'

#change keyboard
sudo cp /usr/share/X11/xkb/symbols/us /usr/share/X11/xkb/symbols/us-backup
sudo gedit /usr/share/X11/xkb/symbols/us

git config --global user.email "info@tomaskalina.cz"
git config --global user.name "Tomáš Kalina"


