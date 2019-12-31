#!/bin/bash

ulang="y"
while [ $ulang = "y" ];
do
    echo "( 1 ) install package termux"
    echo "( 2 ) install termu-theme"
    echo "( 3 ) install cmatrix"
read -p "Masukan pilihan anda : " pilih;
if [ $pilih = "1" ];
then
    echo "Installing package termux"
    cd $HOME
    pkg update && pkg upgrade
    pkg install python && pkg install python2
    pkg install nano && pkg install git
    pkg install php && pkg install wget
    pkg install curl && pkg install figlet
    pkg install clang && pkg install toilet
    pkg install sl && pkg install mpv
    pkg install neofetch && pkg install lynx
    pkg install w3m && pkg install openssh
    echo "Installing SUCCES"
    sleep 3
elif [ $pilih = "2" ];
then
    echo "Installing termux-theme"
    cd $HOME
    pkg update && pkg upgrade
    pkg install git
    git clone https://github.com/Cabbagec/termux-ohmyzsh
    cd ohmyzsh
    chmod +x *
    ./install.sh
    echo "Installing SUCCES"
    sleep 3
elif [ $pilih = "3" ] ;
then
    echo "Installing cmatrix"
    pkg update && pkg upgrade
    pkg inatall cmatrix
    cmatrix
    sleep 3
fi
done