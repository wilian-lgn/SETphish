imagen(){
        rm imagenes/* 2> /dev/null
        clear
        read -p $' [++] IMAGEN: ' image
        if [[ -z ${image} ]]; then
		echo -e "\n [++] NO ESCRIBISTE NADA!\n"
		sleep 1.5
		clear
		imagen
        else
		if [[ -f "${image}" ]]; then
			cp $image imagenes 2> /dev/null
			name_image=$(basename "${image}")
			sed -i "5i <meta property='og:image' content='imagenes/${name_image}'>" index.html
			clear
			run
		else
			image="\033[1;31mimagen no encontrada!"
			run
		fi
        fi
}

titulo(){
        clear
        read -p $' [++] TÍTULO: ' link_titulo
        if [[ -z ${link_titulo} ]]; then
		echo -e "\n $g3[${g1}*$g3]$d2 NO ESCRIBISTE NADA!\n"
		sleep 1.5
		clear
		titulo
	else
		sed -i  "5i <meta property='og:title' content='${link_titulo}'>" index.html
		clear
		run
	fi
}

descripcion(){
	clear
	read -p $' [++] DESCRIPCION: ' description
	if [[ -z ${description} ]]; then
		echo -e " [++] No escribiste nada"
		sleep 1
		clear
		descripcion
	else
		sed -i "5i <meta property='og:description' content='${description}'>" index.html
		clear
		run
	fi
}
