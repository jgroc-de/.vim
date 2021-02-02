#!/bin/bash

sudo apt -y update && sudo apt -y upgrade
sudo apt -y install vim vlc filezilla mysql-server mysql-client htop curl #terminator
sudo apt -y install audacity gimp
#sudo apt -y install steam chromium-browser gnome-tweak-tool
sudo apt -y install gcc make xorg-dev libx11-dev
sudo apt -y install python3 pip3 mycli
sudo apt -y install php composer php-gd php-xml php-zip php-curl php-intl php-json php-mbstring php-mysql php-xml php-zip
#last node lts
#curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash -
#sudo apt -y install nodejs npm
#sudo snap install slack --classic #peut etre installé avec un .deb
#sudo snap install spotify --classic
#sudo snap install postman --classic
#sudo snap install phpstorm --classic
sudo snap install code --classic

#geogebra
#sudo add-apt-repository "deb http://www.geogebra.net/linux/ stable main"
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C072A32983A736CF
#sudo apt install geogebra-classic
sudo apt -y autoremove

rm ~/.inputrc
rm ~/.bashrc
cp inputrc ~/.inputrc
cp bashrc ~/.bashrc

./vim.sh
./ssh_git.sh
