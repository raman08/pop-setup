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
sudo apt update && sudo apt upgrade -y
clear

# install timeshift and gparted
sudo apt install -y  timeshift gparted
clear

# install important tools.....
echo "Installing Some Important Tools....."
sudo apt install tmux  python3-distutils python3-setuptools gnome-tweak-tool terminator
clear

# Installing chrome browser and removing firefox browser
echo "Installing chrome browser"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install  -y ./google-chrome-stable_current_amd64.deb
rm google-ch*
echo "<<<<<<<< Chrome install Sucessfully >>>>>>>>"
clear


# Setting up python and installing required modules
echo "<<<<<<<< Setting Up python Environment >>>>>>>"
sleep 3

sudo apt-get install  python3-pip git libssl-dev libffi-dev build-essential  python3-dev python3-distutils python3-setuptools python3-venv python3-pip
/usr/bin/python3 -m pip install --upgrade pip
pip3 install --upgrade git+https://github.com/arthaud/python3-pwntools.git
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

# Installing Mysql
echo "Installing Mysql"
sudo apt install mysql-server mysql-client
echo "<<<<<<<  Mysql Installed  >>>>>>>"
clear

# Installing vlc media player
sudo apt install vlc

# Installing Power Managing Tools
sudo apt install tlp tlp-rdw
sudo apt install powertop

# Setup Complete

printf -- "\033[1m Setup Complete......... \n"
printf -- "Please restart the pc \033[m"

