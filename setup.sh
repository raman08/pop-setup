clear

printf -- "\033[1m Welcome to installation script
This will used to setup your ubuntu base system
	\033[33m -madeby \033[33m -> \033[32m  Raman Preet Singh \033[32m
		\033[33m Github: \033[33m \033[32m raman08 \033[32m
		\033[33m Twitter: \033[33m \033[32m RamanPr24209812 \033[32m
\033[1m "

if [[ $EUID -ne 0 ]]; then
   printf --  "\033[31m  Exiting..... \n\t This script must be run as root \033[31m \n" 1>&2
   exit 1
fi

#let script exit if a command fails
#set -o errexit
sleep 2

# update and upgrade installed packages.....
echo "Updating System.........."
sudo apt update && sudo apt upgrade -y > /dev/null
clear

# install timeshift and gparted
sudo apt install -y  timeshift gparted
clear

# install important tools.....
echo "Installing Some Important Tools....."
sudo apt install tmux  python3-distutils python3-setuptools gnome-tweak-tool terminator xclip
clear
sudo apt install -y default-jre default-jdk

# Installing brave
echo "Installing brave browser"
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser
echo "<<<<<<<< Chrome install Sucessfully >>>>>"

# Setting up python and installing required modules
echo "<<<<<<<< Setting Up python Environment >>>>>>>"
sleep 3

sudo apt-get install  python3-pip git libssl-dev libffi-dev build-essential  python3-dev python3-distutils python3-setuptools python3-venv python3-pip
/usr/bin/python3 -m pip install --upgrade pip
#pip3 install --upgrade git+https://github.com/arthaud/python3-pwntools.git
clear

echo "Done"

# Install sublime text editor
echo "Installing Sublime 3 "
sudo apt install  -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt update
sudo apt install sublime-text
echo "<<<<<<<  Sublime 3 install Sucessfully  >>>>>>>"
clear

# Installing Visual Sudio Code
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

rm packages.microsoft.gpg

sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install code

# Installing Mysql
echo "Installing Mysql"
sudo apt install mysql-server mysql-client
echo "<<<<<<<  Mysql Installed  >>>>>>>"
clear

# Installing vlc media player
sudo apt install vlc
sudo apt install -y libavcodec-extra libdvd-pkg; sudo dpkg-reconfigure libdvd-pkg
sudo apt-get install ubuntu-restricted-extras

# Installing wallpaper-reddit for dynamic wallpaper
sudo apt-get install python3-dev python3-setuptools libjpeg8-dev zlib1g-dev libfreetype6-dev

git clone https://github.com/ChrisTitusTech/wallpaper-reddit.git
cd wallpaper-reddit
sudo python3 setup.py install

cd ..
rm -rf wallpaper-reddit

echo "<<<<<< Wallpaper Reddit Install Sucessfully >>>>>>>"

clear

# Installing Power Managing Tools
git clone https://github.com/AdnanHodzic/auto-cpufreq.git
cd auto-cpufreq && sudo ./auto-cpufreq-installer
cd ..
rm -rf auto-cpufreq
sudo auto-cpufreq-install

#Installing microsoft fonts
sudo apt install -y ttf-mscorefonts-installer


# Setup Complete

printf -- "\033[1m Setup Complete......... \n"
printf -- "Please restart the pc \033[m"

