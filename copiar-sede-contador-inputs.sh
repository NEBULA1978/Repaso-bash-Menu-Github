#!/bin/bash
# Author: Ramón Pascual

clear
ls -l
while :; do
  echo "¿Desea entrar en una carpeta (C/c), leer un archivo (A/a) o salir (E/e)?"
  read opcion
  if [ "$opcion" == "C" ] || [ "$opcion" == "c" ]; then
    echo "Introduce el nombre de la carpeta:"
    read carpeta
    cd $carpeta || {
      echo "La carpeta no existe"
      continue
    }
  elif [ "$opcion" == "A" ] || [ "$opcion" == "a" ]; then
    echo "Introduce el nombre del archivo:"
    read archivo
    echo
    printf " 1  2  3\n"
    batcat $archivo
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
    echo "Las líneas seleccionadas se han guardado en resultado$counter.txt"
    echo "¿Desea leer otro archivo? (s/n)"
    ls
    read otro
    if [ "$otro" == "n" ]; then
      echo "Los archivos de la carpeta actual son:"
      ls
    fi
  elif [ "$opcion" == "E" ] || [ "$opcion" == "e" ]; then
    break
  else
    echo "Opción inválida"
  fi
done
