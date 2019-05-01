sudo apt -y update
sudo apt -y upgrade
sudo apt -y install vim vlc audacity gimp filezilla chromium-browser steam mysql-server mysql-client gnome-tweak-tool steam htop
sudo apt -y install gcc make xorg-dev libx11-dev
sudo apt -y install python3 pip3
sudo apt -y install php composer php-gd php-xml php-zip php-curl php-intl php-json php-mbstring php-mysql php-xml php-zip
sudo snap install slack --classic
sudo snap install skype --classic
sudo snap install spotify --classic
sudo snap install postman --classic
#geogebra
#sudo add-apt-repository "deb http://www.geogebra.net/linux/ stable main"
#sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys C072A32983A736CF
#sudo apt install geogebra-classic
sudo apt -y autoremove
#Vim plugin
rm -rf ~/.vim
cp inputrc ~/.inputrc
cp bashrc ~/.bashrc
mkdir -p ~/.vim/{autoload,colors,syntax,plugin,spell,config,bundle}
cp -R config ~/.vim/
cp vimrc ~/.vim/vimrc
cd ~/.vim
ln -s vimrc ~/.vimrc
git clone https://github.com/tpope/vim-pathogen.git pathogen
cd autoload
ln -s ../pathogen/autoload/pathogen.vim .
cd ../bundle
git clone https://github.com/scrooloose/nerdtree.git nerdtree
git clone https://github.com/othree/html5.vim
git clone https://github.com/vim-airline/vim-airline.git
git clone https://github.com/alvan/vim-closetag.git
git clone https://github.com/mhartington/nerdtree-git-plugin.git
git clone https://github.com/shawncplus/phpcomplete.vim.git
git clone https://github.com/vim-syntastic/syntastic.git
git clone https://github.com/majutsushi/tagbar.git
git clone https://github.com/vim-php/tagbar-phpctags.vim.git
git clone https://github.com/hail2u/vim-css3-syntax.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/evidens/vim-twig.git
git clone https://github.com/justinmk/vim-syntax-extra.git
#git clone https://github.com/ludovicchabant/vim-gutentags.git
git clone https://github.com/ctrlpvim/ctrlp.vim.git
#mode powersave ba default
#sudo apt-get install cpufrequtils
#echo 'GOVERNOR="powersave"' | sudo tee /etc/default/cpufrequtils
#sudo systemctl disable ondemand

