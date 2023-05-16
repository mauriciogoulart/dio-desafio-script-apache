#!/bin/bash

echo "Atualizando Servidor"
apt-get update
apt-get upgrade -y

echo "Instalando Apache"
apt-get install apache2 -y

echo "Instalando unzip"
apt-get install unzip -y

echo "Baixando aplicacao para pasta tmp"
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando aplicacao"
unzip main.zip

echo "Copiando arquivos para pasta padrao do Apache"
cd linux-site-dio-main
cp -R * /var/www/html/