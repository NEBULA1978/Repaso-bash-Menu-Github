#!/bin/bash
# Author: Ramón Pascual
# Manipulacion archivos

# input_type=""
# input_name=""
# input_text=""
# read -p "Desea generar un directorio(1) o un archivo(2)? " input_type
# if (($input_type == 1)); then
#   read -p "Ingrese el nombre del directorio: " input_name
#   mkdir -m 777 $input_name
# fi

# if (($input_type == 2)); then
#   read -p "Ingrese un nombre para el archivo: " input_name
#   touch $input_name #comando touch crea archivos
#   read -p "Ingrese un texto para el archivo: $input_name: " input_text
#   echo $input_text >>$input_name
# fi

# ///////////////////////////////////////////
# ///////////////////////////////////////////
# ///////////////////////////////////////////

# Cuando pulso intro se sale y no me crea nada

echo "¿Quieres crear una carpeta (1) o un archivo (2)?"
read option

echo "Introduce el nombre: "
read name

if [ "$option" == "1" ]; then
  mkdir -m 777 $name
  echo "Carpeta $name creada."
elif [ "$option" == "2" ]; then
  touch $name
  echo "Archivo $name creado."
else
  echo "Opción inválida."
fi
