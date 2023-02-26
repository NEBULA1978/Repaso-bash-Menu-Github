#!/bin/bash
#Autor: Ramón Pascual
# Leer archivos

while true; do
	clear
	ls -l
	echo "Introduce el nombre del archivo: "
	read input_name
	if [ -f $input_name ]; then
		clear
		echo "=========================LECTURA ARCHIVOS================================"

		cat $input_name
		echo -e "\\n"
		echo "======LECTURA LINEA A LINEA===================="
		echo -e "\\n"

		#IFS INTERNAL FIELD SEPARATOR, es el separador de palabras, define el limite entre palabras

		while IFS= read line; do
			echo "$line"
		done <$input_name

		# Preguntar si desea leer otro archivo o salir
		echo -e "\\n"
		echo "¿Desea leer otro archivo? (s/n)"
		read answer
		if [ "$answer" == "s" ] || [ "$answer" == "S" ]; then
			continue
		else
			break
		fi
	else
		clear
		echo "El archivo $input_name no existe."
	fi
done
