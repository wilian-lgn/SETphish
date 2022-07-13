titulo_pagina(){
  clear
  read -p $' [++] TÍTULO: ' title_page
  if [[ -z ${title_page} ]]; then
    echo -e "\n$g1 [++] OPCION INCORRECTA!$g0\n"
    sleep 1.5
    clear
    title_pagina
  else
    line_number_titulo2=$(grep -n cuadro2 index.html | awk -F: '{print $1}')
    line_number_titulo2index2=$(grep -n cuadro2 index2.html | awk -F: '{print $1}')
    line_number_titulo2index_love=$(grep -n cuadro2 index-love.html | awk -F: '{print $1}')

    sed -i "${line_number_titulo2}d" index.html
    sed -i "${line_number_titulo2}i <h1 class='cuadro2'>${title_page}</h1>" index.html
    sed -i "${line_number_titulo2index2}d" index2.html
    sed -i "${line_number_titulo2index2}i <h1 class='cuadro2'>${title_page}</h1>" index2.html
    sed -i "${line_number_titulo2index_love}d" index-love.html
    sed -i "${line_number_titulo2index_love}i <h1 class='cuadro2'>${title_page}</h1>" index-love.html
    clear
    run
  fi
}

poema_pagina(){
  clear
  read -p $' [++] POEMA: ' poema_page
  if [[ -z ${poema_page} ]]; then
    echo -e "\n$g1 [++] OPCION INCORRECTA!$g0\n"
    sleep 1.5
    clear
    poema_pagina
  else
    line_number_titulo3=$(grep -n cuadro3 index.html | awk -F: '{print $1}')
    line_number_titulo3index2=$(grep -n cuadro3 index2.html | awk -F: '{print $1}')
    line_number_titulo3index_love=$(grep -n cuadro3 index-love.html | awk -F: '{print $1}')

    sed -i "${line_number_titulo3}d" index.html
    sed -i "${line_number_titulo3}i <div class='col-sm cuadro3 columna2-1'>${poema_page}</div>" index.html
    sed -i "${line_number_titulo3index2}d" index2.html
    sed -i "${line_number_titulo3index2}i <div class='col-sm cuadro3 columna2-1'>${poema_page}</div>" index2.html
    sed -i "${line_number_titulo3index_love}d" index-love.html
    sed -i "${line_number_titulo3index_love}i <div class='col-sm cuadro3 columna2-1'>${poema_page}</div>" index-love.html
    clear
    run
  fi
}
