#!/bin/bash
ulang="y"
while [ $ulang = "y" ];
do
     echo "( 1 ) Install Package Termux"
     echo "( 2 ) Install Metasploit"
     echo "( 3 ) Termux-Theme"
     echo "( 4 ) Install Cmatrix"
     echo "( 5 ) Install termux-ubuntu""
     echo "( 6 ) Red-Hawk"
     echo "( 7 ) DDOS"
     echo "( 8 ) AutoPixieWps"
read -p "Masukan pilihan anda : " pilih;
if [ $pilih = "1" ];
then
     echo "Installing package Termux"
     echo "Moohon di tunggu,mungkin ini sedikit memakan waktu"
     sleep 3
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
    sleep 2
    elif [ $pilih = "2" ]
then
    echo "Installing METASPLOIT"
    echo "Mohon di tunggu mungkin ini memakan sedikit waktu"
    cd $HOME
    pkg update && pkg upgrade
    pkg install git
    pkg install wget
    wget https://Auxilus.github.io/metasploit.sh
    bash metasploit.sh
    cd metasploit-framework
    echo "Jalankan metasploit (./msfconsole)"
    sleep 3
elif [ $pilih = "3" ]
then
    echo "Installing Termux-Theme"
    cd $HOME
    pkg update && pkg upgrade
    pkg install git
    git clone https://github.com/Cabbagec/termux-ohmyzsh
    cd ohmyzsh
    chmod +x *
    ./install.sh
    sleep 2
    fi
    done
    