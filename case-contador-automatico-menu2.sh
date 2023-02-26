#!/bin/bash

# Función que utiliza el switch case para ejecutar código dependiendo de la opción ingresada
switch_case() {
	local opcion=$(echo $1 | tr '[:upper:]' '[:lower:]')

	if [ "$opcion" == "a" ]; then
		echo "Ha ingresado la opcion A"
		((contador_a++))
	elif [ "$opcion" == "b" ]; then
		echo "Ha ingresado la opcion B"
		((contador_b++))
	elif [ "$opcion" == "chattr" ]; then
		echo "Ha ingresado la opción para crear un flag especial"
		((contador_chattr++))
	elif [ "$opcion" == "lsattr" ]; then
		echo "Ha ingresado la opción para ver flags especiales"
		((contador_lsattr++))
	elif [ "$opcion" == "find" ]; then
		echo "Ha ingresado la opción para encontrar un archivo"
		((contador_find++))
	elif [ "$opcion" == "which" ]; then
		echo "Ha ingresado la opción para ver el tipo de archivo"
		((contador_which++))
	elif [ "$opcion" == "file" ]; then
		echo "Ha ingresado la opción para ver la información de un archivo"
		((contador_file++))
	elif [ "$opcion" == "hexeditor" ]; then
		echo "Ha ingresado la opción para ver el contenido de un archivo en hexadecimal"
		((contador_hexeditor++))
	else
		echo "Opcion invalida"
	fi
}

# Contadores para las opciones a y b
contador_a=0
contador_b=0

# Contadores para las nuevas opciones
contador_chattr=0
contador_lsattr=0
contador_find=0
contador_which=0
contador_file=0
contador_hexeditor=0

# Ejecutar durante un minuto
echo "Ejecutando durante un minuto..."
tiempo_inicio=$(date +%s)
while (($(date +%s) < tiempo_inicio + 60)); do
	# Generar un número aleatorio entre 0 y 7
	random=$(shuf -i 0-7 -n 1)

	# Asignar la opción en consecuencia
	if [ "$random" -eq 0 ]; then
		opcion="a"
	elif [ "$random" -eq 1 ]; then
		opcion="b"
	elif [ "$random" -eq 2 ]; then
		opcion="chattr"
	elif [ "$random" -eq 3 ]; then
		opcion="lsattr"
	elif [ "$random" -eq 4 ]; then
		opcion="find"
	elif [ "$random" -eq 5 ]; then
		opcion="which"
	elif [ "$random" -eq 6 ]; then
		opcion="file"
	else
		opcion="hexeditor"
	fi

	# Procesar la opción
	switch_case $opcion

	# Esperar 1 segundo antes de la siguiente iteración
	sleep 1
done

# Mostrar resultados
echo "Opciones ingresadas: "
echo "A=$contador_a, B=$contador_b, Chattr=$contador_chattr, Lsattr=$contador_lsattr, Find=$contador_find, Which=$contador_which, File=$contador_file, Hexeditor=$contador_hexeditor"
