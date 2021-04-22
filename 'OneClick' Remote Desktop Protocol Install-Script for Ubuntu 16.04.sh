#!/bin/bash

####################################################################################
# 'OneClick' Remote Desktop Protocol Install-Script for Ubuntu 16.04 by rainbot.ch #
####################################################################################
#*********************************************************************************************************************************************************************************
# How to:
# Connect to your Machine via SSH (Putty) and Login as Root
# in case you logged in via SSH-Key make sure to set a Password for root:
# sudo passwd root
# enter a strong Password
# use nano to create a File: (in case nano is not installed yet install it with 'sudo apt-get install nano')
# nano install.sh
# Copy-Paste the whole Text from here ('Ctrl + A', 'Ctrl + C' to copy and Right-Mouseclick to paste in Putty) and save it with 'Ctrl + O' (Enter) then Exit nano with 'Ctrl + X'
# give the File Permission to execute:
# chmod +x install.sh
# Run it with:
# ./install.sh
# after the Machine rebooted Login with the IP of your Server via your favorite RDP Client
#*********************************************************************************************************************************************************************************

setterm -term linux -fore green

sudo apt-get update

sudo apt-get update -y

sudo apt-get upgrade -y

sudo apt-get dist-upgrade -y

sudo apt-get install nautilus gnome-terminal htop wmctrl -y

sudo apt-get install xfce4 xfce4-goodies -y

apt install -y gnome-core 

sudo apt-get install xrdp -y

sudo apt-get install firefox flashplugin-installer -y

sudo apt-get update && apt-get upgrade -y

sudo apt autoremove

sudo rm install.sh

reboot Now
