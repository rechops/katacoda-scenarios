#!/bin/bash
set +x

print_progress()
{
  echo -n "$1"
  local -r delay='0.75'
  local spinstr='\|/-'
  local temp
  while true; do 
    grep -i "done" $2 &> /dev/null
    if [[ "$?" -ne 0 ]]; then     
      temp="${spinstr#?}"
      printf " [%c]  " "${spinstr}"
      spinstr=${temp}${spinstr%"${temp}"}
      sleep "${delay}"
      printf "\b\b\b\b\b\b"
    else
      break
    fi
  done
  printf "    \b\b\b\b"
  echo ""
  echo "$3"
}

show_progress()
{
  print_progress "Configurando ambiente 1/2 - Instalando Java 8" /root/java-install-finished "Java 8 Instalado"
  print_progress "Configurando ambiente 2/2 - Baixando imagens Docker" /root/docker-images-finished "Imagens Docker baixadas"
  echo "Ambiente pronto!"
}

show_progress