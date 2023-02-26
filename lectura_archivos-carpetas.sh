#!/bin/bash

while true; do
	# echo "Archivos en la ruta actual"
	# ls -l
	# echo "Archivos y carpetas en la ruta anterior a esta carpeta"
	# cd ..
	# ls -l
	# echo "Archivos y carpetas en la ruta de la carpeta ~ (home)"
	# cd ~
	# ls -l
	echo "Elige una opción: "
	echo "1. Ver archivos en la ruta actual"
	echo "2. Ver archivos y carpetas en la ruta anterior"
	echo "3. Ver archivos y carpetas en la ruta de la carpeta ~ (home)"
	echo "4. Salir"
	read choice

	if [ "$choice" == "1" ]; then
		# cd .
		echo "Archivos en la ruta actual"
		ls -l | more
	elif [ "$choice" == "2" ]; then
		cd ..
		echo "Archivos y carpetas en la ruta anterior"
		ls -l | more
	elif [ "$choice" == "3" ]; then
		cd ~
		echo "Archivos y carpetas en la ruta de la carpeta ~ (home)"
		ls -l | more
	elif [ "$choice" == "4" ]; then
		break
	else
		echo "Opción inválida. Inténtalo de nuevo."
	fi
done
