#!/bin/bash
# Author: Ramón Pascual

function leer_archivo {
  echo "Introduce el nombre del archivo:"
  read archivo
  echo
  printf " 1  2  3\n"
  batcat $archivo
  echo "¿Desea copiar algunas líneas del archivo? (s/n)"
  read respuesta
  if [ "$respuesta" == "s" ]; then
    echo "Desde qué línea desea copiar?"
    read inicio
    echo "Hasta qué línea desea copiar?"
    read fin

    # Añadir un contador al nombre de archivo resultado
    counter=0
    while [ -e "resultado$counter.txt" ]; do
      counter=$((counter + 1))
    done

    # Guardar las líneas seleccionadas en un archivo resultado con el contador
    sed -n "${inicio},${fin}p" "$archivo" >>resultado$counter.txt
    echo
    echo -e "\033[32mLas líneas seleccionadas se han guardado en resultado$counter.txt\033[0m"
  fi
}

clear
while :; do
  echo "Está en el directorio $(pwd)"
  echo "Carpetas disponibles: Home (1), Raíz (2)"
  ls -l
  echo "¿Desea entrar en una carpeta (1), leer un archivo (2) o salir (E/e)?"
  read opcion
  if [ "$opcion" == "1" ]; then
    cd $HOME
  elif [ "$opcion" == "2" ]; then
    cd /
  elif [ "$opcion" == "2" ]; then
    leer_archivo
  elif [ "$opcion" == "E" ] || [ "$opcion" == "e" ]; then
    break
  else
    echo "Opción inválida"
  fi
done
