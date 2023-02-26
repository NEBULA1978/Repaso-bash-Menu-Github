#!/bin/bash
#Autor: Ramón Pascual
# Leer archivos

while true; do
	clear
	echo "Seleccione el archivo a leer:"
	i=1
	for file in *; do
		if [ -f $file ]; then
			echo "$i) $file"
			((i++))
		fi
	done
	echo -e "\\n"
	echo -n "Ingrese el número del archivo que desea leer (o 'q' para salir): "
	read input_num
	if [ "$input_num" == "q" ]; then
		break
	elif [ $input_num -gt 0 ] 2>/dev/null && [ $input_num -lt $i ]; then
		input_name=$(ls -p | grep -v / | sed -n "${input_num}p")
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
		echo "Número inválido."
	fi
done
