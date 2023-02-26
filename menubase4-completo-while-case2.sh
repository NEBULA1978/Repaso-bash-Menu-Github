#!/bin/bash

original_dir=$(pwd)
current_dir=$(pwd)

while true; do
  echo "Elige una opción: "
  echo "1. Ver archivos en la ruta actual"
  echo "2. Ver archivos y carpetas en la ruta anterior"
  echo "3. Ver archivos y carpetas en la ruta de la carpeta ~ (home)"
  echo "4. Leer un archivo"
  echo "5. Entrar en una carpeta"
  echo "6. Salir"
  read choice

  if [ "$choice" == "1" ]; then
    cd $original_dir
    echo "Archivos en la ruta actual"
    ls -l | more
  elif [ "$choice" == "2" ]; then
    cd ..
    current_dir=$(pwd)
    echo "Archivos y carpetas en la ruta anterior"
    ls -l | more
  elif [ "$choice" == "3" ]; then
    cd ~
    current_dir=$(pwd)
    echo "Archivos y carpetas en la ruta de la carpeta ~ (home)"
    ls -l | more
  elif [ "$choice" == "4" ]; then
    echo "Introduce el nombre del archivo: "
    read file_name
    echo -e "\\n"

    # Salen unalinea y otra abajo
    # echo -e "Esta es la primera línea\\nEsta es la segunda línea"
    if [ -f "$current_dir/$file_name" ]; then
      cat "$current_dir/$file_name" | more
      echo -e "\\n"

    else
      echo "El archivo $file_name no existe en la carpeta $current_dir"
    fi
  elif [ "$choice" == "5" ]; then
    echo "Introduce el nombre de la carpeta: "
    read folder_name
    if [ -d "$current_dir/$folder_name" ]; then
      cd "$current_dir/$folder_name"
      current_dir=$(pwd)
    else
      echo "La carpeta $folder_name no existe en la carpeta $current_dir"
    fi
  elif [ "$choice" == "6" ]; then
    break
  else
    echo "Opción inválida. Inténtalo de nuevo."
  fi
done

# No caba de ir bien
