#!/bin/bash
set -x

# Descargamos el archivo sources.list para Ubuntu 20.04
cd /etc/apt/sources.list.d/
rm ubuntu.list
wget https://gist.githubusercontent.com/josejuansanchez/f8c08133b6be6f4a98165210ff9cadf2/raw/e8883e8dc473fc6896a64907615f4b445f2db2e4/ubuntu.list

# Eliminamos el archivo de guadalinexedusc.list
rm /etc/apt/sources.list.d/guadalinexedusc.list

# Actualizamos los paquetes
sudo apt update
sudo apt upgrade -y

# Instalamos Docker
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y
 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER
sudo systemctl enable docker