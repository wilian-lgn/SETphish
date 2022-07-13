dependencias(){

  if ! command -v wget &>/dev/null; then
    echo -e "\n [++] No tienes instalado wget, instalalo!.\n"
    echo -e "\tapt install wget -y\n"
    exit 1

  elif ! command -v ssh &>/dev/null; then
    echo -e "\n [++] No tienes instalado openssh, instalalo!.\n"
    echo -e "\tapt install openssh -y\n"
    exit 1
  
  elif ! command -v php &>/dev/null; then
    echo -e "\n [++] No tienes instalado php, instalalo!.\n"
    echo -e "\tapt install php -y\n"
    exit 1
  fi
}
