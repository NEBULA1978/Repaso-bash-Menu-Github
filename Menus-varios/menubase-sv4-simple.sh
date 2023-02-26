#!/bin/bash

function show_content() {
    current_dir=$1

    # Muestra el contenido de la carpeta actual
    echo "El contenido de la carpeta $current_dir es:"
    ls -1 $current_dir

    # Pregunta al usuario si desea entrar en una carpeta, leer un archivo, salir
    # del script o retroceder a la carpeta anterior
    read -p "¿Quieres entrar en una carpeta, leer un archivo, salir o retroceder? (C/L/S/R) " choice
    choice=$(echo $choice | tr '[:lower:]' '[:upper:]')
    if [ "$choice" == "C" ]; then
        read -p "Introduce el nombre de la carpeta: " folder
        if [ -d "$current_dir/$folder" ]; then
            cd "$current_dir/$folder"
            show_content "$current_dir/$folder"
        else
            echo "La carpeta $folder no existe en $current_dir."
        fi
    elif [ "$choice" == "L" ]; then
        read -p "Introduce el nombre del archivo: " file
        if [ -f "$current_dir/$file" ]; then
            cat "$current_dir/$file"
        else
            echo "El archivo $file no existe en $current_dir."
        fi
    elif [ "$choice" == "R" ]; then
        cd ..
        show_content "$(dirname "$current_dir")"
    elif [ "$choice" == "S" ]; then
        exit
    else
        echo "Opción inválida, elige una de las siguientes: (C/L/S/R)."
    fi
}

while :; do
    # Mostrar el menú
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Mostrar contenido de carpeta e introducir nombre a entrar,leer o retroceder a carpeta anterior"
    echo "2. Mostrar calendario"
    echo "3. Mostrar fecha y hora"
    echo "4. Salir"
    echo ""
    # Preguntar al usuario por la opción deseada
    echo -n "Escoger opción: "
    read opcion

    # Seleccionar la opción deseada
    case $opcion in
    1)
        # Mostrar contenido de la carpeta
        echo "Mostrando contenido de carpeta"
        read -p "¿Quieres ver el contenido de la carpeta home o del sistema? (H/S) " choice
        choice=$(echo $choice | tr '[:lower:]' '[:upper:]')
        if [ "$choice" == "H" ]; then
            show_content "$HOME"
        elif [ "$choice" == "S" ]; then
            show_content "/"
        else
            echo "Opción inválida, elige una de las siguientes: (H/S)."
        fi
        read foo
        ;;
    2)
        # Mostrar calendario
        echo "Mostrando calendario"
        cal
        read foo
        ;;
    3)
        # Mostrar fecha y hora
        echo "Mostrando fecha y hora"
        date
        read foo
        ;;
    4)
        # Salir del script
        exit 0
        ;;
    *)
        # Mostrar alerta en caso de opción inválida
        echo "Opción inválida..."
        sleep 1
        ;;
    esac
done
