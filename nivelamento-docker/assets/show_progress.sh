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
  print_progress "Installing Java 8" /root/java-install-finished "Java 8 Installed"
  print_progress "Pulling images" /root/docker-images-finished "Docker images done"
}

show_progress