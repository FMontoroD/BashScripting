#!/bin/bash

#basic script to make  a folder backup
#Actualy is backuping the files modificated 3 days ago
#directorie have to be fixed, acxtually you need to move the script to te folder you want to backup
#Maybe send the directorie route by parameter $1-need to refix it


directorio=`pwd`
folder=`date +"%m-%d-%y"`
destino=$folder"BACKUP"
#esta linea establece los tipos de archivo que se copiaran y el margen de tiempo en dias.
ultimas=`find -type f -mtime -3`
#echo $destino
#echo $ultimas
#echo $directorio

function creafolder {

  mkdir $destino
  copia 

}

function copia {

  cp -ri $ultimas $destino

}

#cp $ultimas
creafolder
echo "Este script ccreara una copia de los archivos modificados en los ultimos tres dias en el directorio $destino"
