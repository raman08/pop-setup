clear

echo "Welcome to installation script
	This will used to setup your ubuntu base system

		-madeby -> Raman Preet Singh
			   Github: raman08

"

sleep 2



# update and upgrade installed packages.....
echo "Updating System.........."
sleep 2
sudo apt update && sudo apt upgrade -y 
clear


# install timeshift and gparted
sudo apt install -y  timeshift gparted  
clear

# install important tools.....
echo "Installing Some Important Tools....."
sleep 3

sudo apt install tmux hashcat python3-distutils python3-setuptools gnome-tweak-tool terminator
clear

# Installing chrome browser and removing firefox browser

echo "Installing chrome browser and removing firefox browser"

sleep 3

wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install  -y ./google-chrome-stable_current_amd64.deb
echo "<<<<<<<< Chrome install Sucessfully >>>>>>>>"

sleep 2

echo "<<<<<<<< Removing Firefix >>>>>>>>"

sleep 3

sudo apt remove firefox -y
clear


# Setting up python and installing required modules

echo "<<<<<<<< Setting Up python Environment >>>>>>>"
sleep 3

sudo apt-get install python2.7 python-pip python-dev git libssl-dev libffi-dev build-essential  python3-dev python3-distutils python3-setuptools
/usr/bin/python3 -m pip install --upgrade pip
pip3 install --upgrade git+https://github.com/arthaud/python3-pwntools.git

clear

echo "Done"
sleep 2

# Installing Meow
echo "Installing Meow"

sleep 2

echo "deb https://dl.bintray.com/sbt/debian /" | sudo tee -a /etc/apt/sources.list.d/sbt.list
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 642AC823
sudo apt update
sudo apt install -f openjdk-8-jdk git sbt

wget https://goo.gl/HFvzOt -O meow_1.0_all.deb
sudo apt install ./meow_1.0_all.deb

sleep 5
echo "

<<<<<<<  Meow install Sucessfully  >>>>>>>"

clear

# Install sublime text editor
echo "

Installing Sublime 3 "

sleep 2

sudo apt install  -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt update
sudo apt install sublime-text

clear

echo " Installing sublime merge... "

sleep 2

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install sublime-merge

echo 'sublime-merge Sucessfully installed......'

sleep 2


echo "

<<<<<<<  Sublime 3 install Sucessfully  >>>>>>>"

sleep 2

clear



echo "Setup Complete........."
echo "
	Please restart the pc
	"