#!/bin/bash

#Simple script for update the system


echo "el sistema procedera a actualizar la liusta de repositorios, esto puede tardar unos segundos"
echo ""
echo ""
sudo apt-get update
echo ""
echo ""
echo " a continuación el sistema comprobara las actualizaciones disponibles"
echo ""
echo ""
sudo apt-get upgrade
echo ""
echo ""

read -p "¿deseas que miremos si existe alguna actualizacion de la distribiucion? Y/n---> " distroup
echo ""
echo ""

if [[ "$distroup" = "Y" ]]; then
  echo "vamos a verificar, un segundo..."
  sudo apt-get dist-upgrade
else
  echo "De acuerdo, Tu equipo ha sido actualizado recuerda verificar periodicamente si existen actualizaciones disponibles para tu eqipo"
fi
