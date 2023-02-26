#!/bin/bash
#Autor: Ramón Pascual
# Leer archivos

# Contador para el número de archivos copiados
copied_files=0

while true; do
	clear
	echo "Seleccione una opción:"
	echo "1) Ver archivos y carpetas en el directorio actual"
	echo "2) Navegar por los directorios del usuario"
	echo "3) Navegar por los directorios del sistema"
	echo "4) Salir"
	read option

	if [ "$option" == "1" ]; then
		clear
		echo "Archivos y carpetas en el directorio actual:"
		ls -l
		echo -e "\\n"
		echo -n "Ingrese el nombre del archivo que desea leer (o 'q' para salir): "
		read input_name

		if [ "$input_name" == "q" ]; then
			break
		elif [ -f "$input_name" ]; then
			clear
			echo "=========================LECTURA ARCHIVOS================================"
			cat $input_name
			echo -e "\\n"
			echo "======LECTURA LINEA A LINEA===================="
			echo -e "\\n"
			while IFS= read line; do
				echo "$line"
			done <$input_name

			# Preguntar qué líneas desea copiar
			echo -e "\\n"
			echo "Especifique las líneas que desea copiar (por ejemplo: 2-5,7): "
			read line_nums

			# Crear un nuevo archivo con el contenido de las líneas seleccionadas
			copied_file="copia$((copied_files + 1)).txt"
			sed -n "${line_nums}"p $input_name >$copied_file
			echo -e "\\n"
			echo "El archivo $copied_file se ha creado correctamente."

			# Incrementar el contador de archivos copiados
			((copied_files++))

			# Preguntar si desea leer otro archivo o salir
			echo -e "\\n"
			echo "¿Desea leer otro archivo? (s/n)"
			read answer
			if [ "$answer" == "s" ] || [ "$answer" == "S" ]; then
				continue
			else
				break
			fi

		elif [ -d "$input_name" ]; then
			cd "$input_name"
		else
			echo "Nombre de archivo o carpeta inválido."
			sleep 1
			continue
		fi

	elif [ "$option" == "2" ]; then
		clear
		ls -l "$HOME"
		echo "Carpeta actual: $(pwd)"
		echo "Archivos y carpetas en la carpeta actual:"
		ls -l
		echo -e "\\n"
		echo "Archivos y carpetas en el directorio base del usuario:"
		ls -l "$HOME"
		echo -e "\\n"
		echo -n "Ingrese el nombre de la carpeta que desea abrir (o '.' para mantenerse en la carpeta actual, '..' para retroceder una carpeta, o '$HOME' para navegar al directorio base del usuario): "
		read input_name

		if [ "$input_name" == "." ]; then
			continue
		elif [ "$input_name" == ".." ]; then
			cd ..
		elif [ "$input_name" == "$HOME" ]; then
			cd "$HOME"
		elif [ -d "$input_name" ]; then
			cd "$input_name"
		else
			echo "Nombre de carpeta inválido."
			sleep 1
			continue
		fi

	elif [ "$option" == "3" ]; then
		clear
		echo "Carpeta actual: $(pwd)"
		echo "Archivos y carpetas en la carpeta actual"
		echo -e "\\n"
		echo -n "Ingrese el nombre del archivo que desea leer (o 'q' para salir): "
		read input_name

		if [ "$input_name" == "q" ]; then
			break
		elif [ -f "$input_name" ]; then
			clear
			echo "=========================LECTURA ARCHIVOS================================"
			cat $input_name
			echo -e "\\n"
			echo "======LECTURA LINEA A LINEA===================="
			echo -e "\\n"
			while IFS= read line; do
				echo "$line"
			done <$input_name

			# Preguntar qué líneas desea copiar
			echo -e "\\n"
			echo "Especifique las líneas que desea copiar (por ejemplo: 2-5,7): "
			read line_nums

			# Crear un nuevo archivo con el contenido de las líneas seleccionadas
			copied_file="copia$((copied_files + 1)).txt"
			sed -n "${line_nums}"p $input_name >$copied_file
			echo -e "\\n"
			echo "El archivo $copied_file se ha creado correctamente."

			# Incrementar el contador de archivos copiados
			((copied_files++))

			# Preguntar si desea leer otro archivo o salir
			echo -e "\\n"
			echo "¿Desea leer otro archivo? (s/n)"
			read answer
			if [ "$answer" == "s" ] || [ "$answer" == "S" ]; then
				continue
			else
				break
			fi

		elif [ -d "$input_name" ]; then
			cd "$input_name"
		else
			echo "Nombre de archivo o carpeta inválido."
			sleep 1
			continue
		fi

	elif [ "$option" == "4" ]; then
		break

	else
		echo "Opción inválida."
		sleep 1
		continue
	fi
done

echo -e "\\n"
echo "Saliendo del programa. Se copiaron $copied_files archivos."
