#!/bin/bash
#Basic script to start anonymous surfing. You will need the "kali anon surf" installed on your system
#to use it and change the name of your NIC
#Alfa version.
contador=0
ejecuta=0
if [ $contador -eq $ejecuta ]

  then

    ifconfig wlp3s0 down

    macchanger -r wlp3s0

    ifconfig wlp3s0 up

    anonsurf start

    contador=1
  else
      echo "something fail"

fi
