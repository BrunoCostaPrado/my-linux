#!/bin/bash

sudo apt install btop gedit cmake -y
clear

echo "Deseja instalar VMware-Tools"
echo "1 para sim"
echo "0 para não"
read in
clear

if [ $in -gt "0" ]
then 
echo "Instalando VMware-Tools"
sudo apt install open-vm-tools open-vm-tools-desktop -y
else
 
echo "Pulando VMware-Tools"
fi
clear


echo "Deseja instalar Fish"
echo "1 para sim"
echo "0 para não"
read in
clear

if [ $in -gt "0" ]
then
echo 'deb http://download.opensuse.org/repositories/shells:/fish:/release:/4/Debian_12/ /' | sudo tee /etc/apt/sources.list.d/shells:fish:release:4.list
curl -fsSL https://download.opensuse.org/repositories/shells:fish:release:4/Debian_12/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/shells_fish_release_4.gpg > /dev/null
sudo apt update
sudo apt install fish
else 
echo "Pulando Fish"
fi
clear



echo "Deseja atualizar?"

echo "1 para sim"
echo "0 para não"
read in

if [ $in -gt "0" ]
then 
echo "Atualizando"
sudo apt update && sudo apt upgrade -y && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y && sudo apt update
else 
echo "Pulando Atualização"
fi
clear

echo "Deseja instalar VScode"
echo "1 para sim"
echo "0 para não"
read in
clear

if [ $in -gt "0" ]
then 
echo "Instalando VScode"
sudo apt install wget apt-transport-https -y
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install code -y
else
 
echo "Pulando VScode"
fi
clear

echo "Instalando Snapd"

sudo apt update
sudo apt install snapd -y
clear

echo "Deseja instalar Rust?"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
clear

echo "Deseja instalar GO?"
echo "1 para sim"
echo "0 para não"
read in

if [ $in -gt "0" ]
then 
sudo apt install golang-go 
else
echo "Pulando Go"
fi
clear

echo "Deseja instalar NodeJs?"
echo "1 para sim"
echo "0 para não"
read in

if [ $in -gt "0" ]
then 
sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg
sudo apt-get update
sudo apt-get install nodejs -y

sudo npm install -g pnpm
else
echo "Pulando NodeJs"
fi

clear

echo "Deseja instalar Python?"
echo "1 para sim"
echo "0 para não"
read in

if [ $in -gt "0" ]
then 
sudo apt install python -y
sudo apt install python3-pip
else
echo "Pulando Python"
fi

clear

sudo apt update
clear

echo "Deseja instalar Docker e K3S?"
echo "1 para sim"
echo "0 para não"
read in

if [ $in -gt "0" ]
then 
sudo apt install docker
curl -sfL https://get.k3s.io | sh -
k3s kubectl get node
else
echo "Pulando Docker"
fi
clear



echo "Atualizando"
sudo apt update
clear

echo "Tudo pronto"
