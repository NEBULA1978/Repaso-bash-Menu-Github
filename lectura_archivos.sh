#!/bin/bash
#Autor: Ramón Pascual
# Leer archivos

input_name=$1
echo="=========================LECTURA ARCHIVOS================================"

cat $input_name
echo "======LECTURA LINEA A LINEA===================="

#IFS INTERNAL FIELD SEPARATOR, es el separador de palabras, define el limite entre palabras

while IFS= read line; do
	echo "$line"
done <$input_name
