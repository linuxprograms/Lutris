#!/usr/bin/env bash

set -e

GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${BLUE}=====================================${NC}"
echo -e "${BLUE}     Lutris Installer for Debian     ${NC}"
echo -e "${BLUE}=====================================${NC}"

echo -e "\n${YELLOW}[1/7] Añadiendo arquitectura i386...${NC}"
sudo dpkg --add-architecture i386

echo -e "\n${YELLOW}[2/7] Instalando dependencias...${NC}"
sudo apt update
sudo apt install -y 
wget 
curl 
gnupg 
wine 
wine32 
wine64 
winetricks 
gamemode

echo -e "\n${YELLOW}[3/7] Creando directorio de keyrings...${NC}"
sudo mkdir -p /etc/apt/keyrings

echo -e "\n${YELLOW}[4/7] Importando clave de Lutris...${NC}"
wget -qO- 
https://download.opensuse.org/repositories/home:/strycore:/lutris/Debian_13/Release.key 
| sudo gpg --dearmor -o /etc/apt/keyrings/lutris.gpg

echo -e "\n${YELLOW}[5/7] Añadiendo repositorio oficial...${NC}"

cat << EOF | sudo tee /etc/apt/sources.list.d/lutris.sources > /dev/null
Types: deb
URIs: https://download.opensuse.org/repositories/home:/strycore:/lutris/Debian_13/
Suites: ./
Components:
Signed-By: /etc/apt/keyrings/lutris.gpg
EOF

echo -e "\n${YELLOW}[6/7] Actualizando repositorios...${NC}"
sudo apt update

echo -e "\n${YELLOW}[7/7] Instalando Vulkan y Lutris...${NC}"
sudo apt install -y 
mesa-vulkan-drivers 
mesa-vulkan-drivers:i386 
lutris

echo -e "\n${GREEN}✓ Instalación completada correctamente${NC}"
echo -e "${GREEN}✓ Ejecuta: lutris${NC}"

