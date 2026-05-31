#!/bin/bash

echo "🚀 Instalando Lutris"
echo "🔧 Añadiendo soporte de 32 bits"

sudo dpkg --add-architecture i386

echo " 📦 Instalando depencias básicas"
sudo apt install -y wine wine32 wine64 winetricks curl gamemode

echo "🎮 Agregando repositorio oficial de Lutris"
echo -e "Types: deb\nURIs: https://download.opensuse.org/repositories/home:/strycore:/lutris/Debian_13/\nSuites: ./\nComponents: \nSigned-By: /etc/apt/keyrings/lutris.gpg" | sudo tee /etc/apt/sources.list.d/lutris.sources > /dev/null

echo "🔑 Importando Clave"
wget -q -O- https://download.opensuse.org/repositories/home:/strycore:/lutris/Debian_13/Release.key | sudo gpg --dearmor -o /etc/apt/keyrings/lutris.gpg

echo " 🔄 Actualizando repositorios"
sudo apt update -y

echo "🎮 Instalando soporte Vulkan"
sudo apt install -y mesa-vulkan-drivers mesa-vulkan-drivers:i386

echo "🚀 Instalando Lutris"
sudo apt install lutris -y

echo "✅ Instalación exitosa"
echo "👉 Executa lutris"
