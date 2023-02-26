#!/bin/bash
#Autor: Ramón Pascual
# Leer archivos
clear
ls -l | more
echo "Introduce el nombre del archivo: "
read input_name
echo "=========================LECTURA ARCHIVOS================================"

cat $input_name
echo -e "\\n"
echo "======LECTURA LINEA A LINEA===================="
echo -e "\\n"

#IFS INTERNAL FIELD SEPARATOR, es el separador de palabras, define el limite entre palabras

while IFS= read line; do
	echo "$line"
done <$input_name
