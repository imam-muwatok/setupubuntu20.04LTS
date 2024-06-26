# Ubuntu 20.04

# remove game

# remove all bloatwere

# install aplikasi deb ofline jika puya

===================================================================
REPO BUAYA KLAS
===================================================================


sudo nano /etc/apt/sources.list

deb http://buaya.klas.or.id/ubuntu/ focal main restricted
deb http://buaya.klas.or.id/ubuntu/ focal-updates main restricted
deb http://buaya.klas.or.id/ubuntu/ focal universe
deb http://buaya.klas.or.id/ubuntu/ focal-updates universe
deb http://buaya.klas.or.id/ubuntu/ focal multiverse
deb http://buaya.klas.or.id/ubuntu/ focal-updates multiverse
deb http://buaya.klas.or.id/ubuntu/ focal-backports main restricted universe multiverse
deb http://buaya.klas.or.id/ubuntu/ focal-security main restricted
deb http://buaya.klas.or.id/ubuntu/ focal-security universe
deb http://buaya.klas.or.id/ubuntu/ focal-security multiverse
    
=================================================================== 
COMPOSER
===================================================================  

apt install php7.4-cli

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"

php -r "if (hash_file('sha384', 'composer-setup.php') === '906a84df04cea2aa72f40b5f787e49f22d4c2f19492ac310e8cba5b96ac8b64115ac402c8cd292b8a03482574915d1a8') { echo 'Installer verified'; } else { echo 'Installer corrupt'; unlink('composer-setup.php'); } echo PHP_EOL;"

php composer-setup.php

php -r "unlink('composer-setup.php');"

sudo mv composer.phar /usr/local/bin/composer

===================================================================
LARAVEL
===================================================================


composer global require laravel/installer



===================================================================
ZCH / OH MY ZCH
===================================================================

- install 

sudo apt install zsh


sudo apt install git wget
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
source ~/.zshrc

===================================================================
VALET NOT FOUND ON ZCH
===================================================================

test -d ~/.composer && bash ~/.composer/vendor/bin/valet install || bash ~/.config/composer/vendor/bin/valet install

===================================================================
EXTRA
===================================================================

sudo apt-get install synaptic
sudo apt install net-tools -y
sudo apt purge ubuntu-web-launchers
sudo apt install vlc
sudo apt install gnome-tweaks
sudo apt install vokoscreen-ng


sudo apt install dconf-editor
path setting = org > gnome > shell > extensions > dash-to-dock

npm install --global yarn

yarn create react-app my-app

sudo yarn global add @vue/cli


===================================================================
CLEAN SYSTEM
===================================================================

- remove falied install
sudo apt-get autoclean

-remove apt-chace
sudo apt-get clean

- remove the unwanted software dependencies
sudo apt-get autoremove

===================================================================
SETUP FIREWALL
===================================================================
sudo ufw status verbo

===================================================================
MICROSOFT FONT
===================================================================

sudo add-apt-repository multiverse
sudo apt update 
sudo apt install ttf-mscorefonts-installer

===================================================================
SCRCPY
===================================================================
- install adb
sudo apt install android-tools-adb android-tools-fastboot 

-install scrcpy
sudo apt install scrcpy	


- how to run, open terminal an write cli

scrcpy

adb devices

adb start-server

adb kill-server


- multiple devices

- cek serial

adb devices

scrcpy -s serial1

- examle serial is M95HACPQFNP5X
scrcpy -s M95HACPQFNP5X

===================================================================
# REMOVE SWAP MEMORY
===================================================================

- First check if swap is enabled:

sudo swapon --show

- If swap is enabled you should see the path to the swap file and its size.

ubuntu@kube03:~$ sudo swapon --show
NAME      TYPE SIZE USED PRIO
/swap.img file 1.9G 4.5M   -2

- You can also check by running the free command:

free -h

- The Swap line should show the total size and how much is used.

ubuntu@kube03:~$ free -h
              total        used        free      shared  buff/cache   available
Mem:          952Mi       211Mi       124Mi       1.0Mi       617Mi       582Mi
Swap:         1.9Gi       4.0Mi       1.9Gi
ubuntu@kube03:~$

- Command to disable Swap:

sudo swapoff -a

- Now remove the Swap file:

sudo rm /swap.img

- Remove following line from /etc/fstab:

/swap.img       none    swap    sw      0       0

- Command to check Swap is disabled:

sudo swapon --show

- There should be no output if it’s disabled.

===================================================================
OBS STUDIO
===================================================================

sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt-get update
sudo apt-get install obs-studio


sudo apt-get remove --autoremove obs-studio

===================================================================
NodeJs NVM
===================================================================


curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash

#bash
source ~/.bashrc

#zsh
source ~/.zshrc

source ~/.nvm/nvm.sh

nvm list-remote

nvm install v20.11.1

nvm use v20.11.1

sudo nano ~/.zshrc

#add this 
source ~/.nvm/nvm.sh

===================================================================
Pantheon-Tweaks
===================================================================


sudo apt install software-properties-common
sudo add-apt-repository -y ppa:philip.scott/pantheon-tweaks

sudo apt update

sudo apt install -y pantheon-tweaks

===================================================================
TLP
===================================================================


sudo apt install tlp
sudo apt install tlp-rdw

 sudo tlp start
 #status
 sudo tlp-stat -s

 #config
 sudo tlp-stat -c

 #batteray detail
 sudo tlp-stat -b


===================================================================
Elementary app remove
===================================================================



 sudo apt remove pantheon-mail
 sudo apt remove pantheon.videos
 sudo apt remove pantheon.feedback
 sudo apt remove pantheon.tasks

 if not work change "pantheon." to "pantheon-"

 sudo apt install software-properties-common
 sudo add-apt-repository ppa:philip.scott/pantheon-tweaks
 sudo apt-get update
 sudo apt-get install pantheon-tweaks
 
 

