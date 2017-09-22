#!/bin/bash
#https://mega.nz/#sync
#wget https://mega.nz/linux/MEGAsync/xUbuntu_16.10/amd64/nautilus-megasync-xUbuntu_16.10_amd64.deb


sudo apt install -y gdebi
cd /tmp/
wget https://mega.nz/linux/MEGAsync/xUbuntu_17.04/amd64/megasync-xUbuntu_17.04_amd64.deb
wget https://mega.nz/linux/MEGAsync/xUbuntu_17.04/amd64/nautilus-megasync-xUbuntu_17.04_amd64.deb
sudo gdebi megasync-xUbuntu_17.04_amd64.deb
sudo gdebi nautilus-megasync-xUbuntu_17.04_amd64.deb

sudo add-apt-repository ppa:webupd8team/gnome3 -y
sudo add-apt-repository ppa:ne0sight/chrome-gnome-shell -y
sudo add-apt-repository ppa:webupd8team/atom -y
sudo add-apt-repository ppa:webupd8team/java -y
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt update;

sudo apt-get install gir1.2-gtop-2.0 gir1.2-networkmanager-1.0  gir1.2-clutter-1.0

sudo apt install -y alacarte unrar-free p7zip-full p7zip-rar chromium-browser gnome-tweak-tool chrome-gnome-shell nodejs-legacy curl git gitk gimp mc terminator pidgin atom  keepass2 monodevelop mono-complete libmono-system-xml-linq4.0-cil libmono-system-data-datasetextensions4.0-cil libmono-system-runtime-serialization4.0-cil mono-mcs oracle-java8-installer
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -
sudo apt install -y nodejs npm

apm install linter language-babel highlight-selected atom-beautify autocomplete-paths todo-show color-picker linter-eslint editorconfig sort-lines Hyperclick js-hyperclick file-icons local-history

cd /tmp/
wget https://raw.github.com/pfn/keepasshttp/master/KeePassHttp.plgx
sudo mv KeePassHttp.plgx /usr/lib/keepass2

sudo sh -c 'echo "enabled=0" > /etc/default/apport'

echo "zmena klavesnice"
sudo cp /usr/share/X11/xkb/symbols/us /usr/share/X11/xkb/symbols/us-backup
sudo gedit /usr/share/X11/xkb/symbols/us


cd /tmp/
git clone https://github.com/deadalnix/pixel-saver.git
cd pixel-saver
# Get the last released version
cp -r pixel-saver@deadalnix.me -t ~/.local/share/gnome-shell/extensions
# activate
gnome-shell-extension-tool -e pixel-saver@deadalnix.me

# netbeans_default_options="-J-client -J-Xss2m -J-Xms32m -J-XX:PermSize=32m -J-Dawt.useSystemAAFontSettings=on"
# export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=on -Dswing.aatext=true'
