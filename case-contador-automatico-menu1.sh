#!/bin/bash

# Función que utiliza el switch case para ejecutar código dependiendo de la opción ingresada
switch_case() {
	local opcion=$(echo $1 | tr '[:upper:]' '[:lower:]')

	if [ "$opcion" == "1" ]; then
		echo "Mostrando directorio"
		ls
	elif [ "$opcion" == "2" ]; then
		echo "Mostrando calendario"
		cal
	elif [ "$opcion" == "3" ]; then
		echo "Introducir por consola texto para añadir a archivo texto.txt"
		echo "Elimina texto que hay anterior e introduce el nuevo"
		cat >archivo.txt
	elif [ "$opcion" == "4" ]; then
		echo "Saliendo del script"
		exit 0
	elif [ "$opcion" == "5" ]; then
		if [ -f "archivo.txt" ]; then
			echo "Mostrar archivo.txt texto introducido"
			cat archivo.txt
		else
			echo "El archivo archivo.txt no existe en la carpeta actual"
			archivos_txt=(*.txt)
			if [ "${#archivos_txt[@]}" -eq 0 ]; then
				echo "No hay archivos de texto en la carpeta actual"
			else
				echo "Se ha seleccionado aleatoriamente el archivo ${archivos_txt[RANDOM % ${#archivos_txt[@]}]}"
				cat "${archivos_txt[RANDOM % ${#archivos_txt[@]}]}"
			fi
		fi
	elif [ "$opcion" == "6" ]; then
		echo "Añadir texto a archivo.txt"
		cat >>archivo.txt
	elif [ "$opcion" == "7" ]; then
		echo "Crear archivo texto para añadir a archivo texto2.txt"
		touch archivo2.txt
	elif [ "$opcion" == "8" ]; then
		echo "Añadiendo texto a archivo2.txt texto:"
		cat >>archivo2.txt
	elif [ "$opcion" == "9" ]; then
		echo "Mostrar texto introducido archivo2.txt:"
		cat archivo2.txt
	else
		echo "Opcion invalida"
	fi
}

# Ejecutar durante un minuto
echo "Ejecutando durante un minuto..."
tiempo_inicio=$(date +%s)
while (($(date +%s) < tiempo_inicio + 60)); do
	# Generar un número aleatorio entre 1 y 9
	random=$(shuf -i 1-9 -n 1)

	# Procesar la opción
	switch_case $random

	# Esperar 1 segundo antes de la siguiente iteración
	sleep 1
done

# Mostrar resultados
echo "Opciones ingresadas: "
echo "Directorio=$contador_directorio, Calendario=$contador_calendario, Texto1=$contador_texto1, Texto2=$contador_texto2"
