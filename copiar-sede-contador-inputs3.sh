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
  echo "Carpetas disponibles:"
  i=0
  for d in *; do
    i=$((i + 1))
    echo "$i) $d"
  done
  echo "Leer archivo (2), Salir (E/e)"
  read opcion
  if [ "$opcion" -ge "1" ] && [ "$opcion" -le "$i" ]; then
    cd "$(ls -1 * | sed -n "$opcion p")"
    echo "Está en el directorio $(pwd)"
    echo "Archivos disponibles:"
    i=0
    for d in *; do
      i=$((i + 1))
      echo "$i) $d"
    done
    echo "Entrar en una carpeta (C/c), Leer un archivo (A/a), Salir (E/e)"
    read opcion
    if [ "$opcion" == "C" ] || [ "$opcion" == "c" ]; then
      continue
    elif [ "$opcion" == "A" ] || [ "$opcion" == "a" ]; then
      leer_archivo
    elif [ "$opcion" == "E" ] || [ "$opcion" == "e" ]; then
      break
    else
      echo "Opción inválida"
    fi
  elif [ "$opcion" == "2" ]; then
    leer_archivo
  elif [ "$opcion" == "E" ] || [ "$opcion" == "e" ]; then
    break
  else
    echo "Opción inválida"
  fi
done
