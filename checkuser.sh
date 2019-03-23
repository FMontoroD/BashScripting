#!/bin/bash

#3a version del programa de control de usuariosscript, podria entrar el
#valor del usuario por parametro y lo aria mas rapido, Esta es una versión más "User Friendly".



function buscar() {
  read -p "¿qué deseas buscar en este equipo? - 1)usuario 2) grupo  > " eleccion

  if [[ $eleccion = 1 ]]; then
    read -p "Qué usuario deseas verificar si existe? > " usuario
    echo "Buscando al usuario -> "  $usuario
    busqueda=$(id -un "$usuario")

    if [[ $busqueda = $usuario ]]; then
      echo "El usuario $usuario SI existe en el sistema con el numero: " `id -u $usuario`
    else
      echo "El usuario especificado no existe."
    fi

  elif [[ $eleccion = 2 ]]; then
    read -p "Qué grupo deseas verificar si existe? > " grupo
    echo "Buscando el grupo -> "  $grupo
    busqueda=$(id -gn "$grupo")

    if [[ $busqueda = "$grupo" ]]; then
      echo "El grupo $grupo SI existe en el sistema con el numero: " `id -g $grupo`
    else
      echo "El grupo e no existe."
    fi
  fi

  if [ $eleccion != 1 -a $eleccion != 2 ]; then

    echo "**La opcion introducida no esta soportada**"
    read -p "¿Quieres volver a intertarlo? Y/N  > " retry

  #SOLUCIONADO, he introducido el if de control dentro de la propia funcion "buscar" esto parece resolver el problemas
  #Supongo que el problema estaba siendo que no podia llamar a la funcion, ya que si entraba en el if pero no reconocia
  #la funcion como funcion declarada previamente,ahora mismo, la funcion se llama a si misma
  #si se da la condición (el parentesis que me apuntaste no resolvia el problema).

    if [ $retry = Y ]; then
      buscar
    else
      echo "gracias por usar Checkuser, nos vemos!"
    fi
  fi

}

#quiere
#volver a intentarlo. si es que si (Y) que vuelva a disparar la funcion.Entra en el bucle pero parece que no reconoce la funcion
#Creo que estoy teniendo problemas con el SCOPE de las funciones.



#llamada original a la fincion
buscar
