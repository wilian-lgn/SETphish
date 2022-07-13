#!/usr/bin/bash

# colores

declare -rg g0="\033[0m"
declare -rg g1="\033[1;31m"
declare -rg g2="\033[1;32m"
declare -rg g3="\033[1;33m"
declare -rg g4="\033[1;34m"
declare -rg g5="\033[1;35m"
declare -rg g6="\033[1;36m"
declare -rg g7="\033[1;37m"

# modulos

source files/bash-modules/dependencias.sh
source files/bash-modules/link-descriptions.sh
source files/bash-modules/page-credentials.sh
source files/bash-modules/esperando-credenciales.sh
source files/bash-modules/starting-servers.sh

# Si el script es interrumpido la funcion ctrl_c se ejecutara

cd files
trap 'ctrl_c' 2

function ctrl_c {
  rm link.txt 2> /dev/null
  sed -i "/<meta property='og:.*' content='.*'>/d" index.html 2> /dev/null
  exit 1
}

# Funcion que se ejecuta primero cuando se ejecuta el script

run(){
	clear
	echo -e "
 [++] Personaliza el link

 [01] Título: ${link_titulo}
 [02] Descripción: ${description}
 [03] Imagen: ${image}

 [++] Personaliza la pagina

 [04] Agregar titulo: ${title_page}
 [05] Dedicar poema: ${poema_page}

 [10] Empezar
"

read -p $' ---> ' opcion


case ${opcion} in
  '1'|'01') titulo;;
  '2'|'02') descripcion;;
  '3'|'03') imagen;;
  '4'|'04') titulo_pagina;;
  '5'|'05') poema_pagina;;
  '10') starting;;
  *) echo -e "\n $g1[*] Opcion incorrecta!${g0}"; sleep 2; run
esac

}

# Llamando funciones

dependencias
run
esperando_credenciales
