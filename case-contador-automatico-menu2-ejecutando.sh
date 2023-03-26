# un ejemplo de cómo podrías agregar la ejecución de la opción "chattr":

# bash

# switch_case() {
# 	local opcion=$(echo $1 | tr '[:upper:]' '[:lower:]')

# 	if [ "$opcion" == "a" ]; then
# 		echo "Ha ingresado la opcion A"
# 		((contador_a++))
# 	elif [ "$opcion" == "b" ]; then
# 		echo "Ha ingresado la opcion B"
# 		((contador_b++))
# 	elif [ "$opcion" == "chattr" ]; then
# 		echo "Ha ingresado la opción para crear un flag especial"
# 		((contador_chattr++))
# 		# Ejecutar el comando chattr
# 		chattr +l -V file.txt
# 	else
# 		echo "Opcion invalida"
# 	fi
# }

# De esta manera, puedes agregar la ejecución de los demás comandos de la misma forma.
# Ramonet Pascualet
# el escript entero

# Aquí está el script completo con la ejecución de todas las opciones:

# bash

# #!/bin/bash

# # Función que utiliza el switch case para ejecutar código dependiendo de la opción ingresada
# switch_case() {
# 	local opcion=$(echo $1 | tr '[:upper:]' '[:lower:]')

# 	if [ "$opcion" == "a" ]; then
# 		echo "Ha ingresado la opcion A"
# 		((contador_a++))
# 	elif [ "$opcion" == "b" ]; then
# 		echo "Ha ingresado la opcion B"
# 		((contador_b++))
# 	elif [ "$opcion" == "chattr" ]; then
# 		echo "Ha ingresado la opción para crear un flag especial"
# 		((contador_chattr++))
# 		# Ejecutar el comando chattr
# 		chattr +l -V file.txt
# 	elif [ "$opcion" == "lsattr" ]; then
# 		echo "Ha ingresado la opción para ver flags especiales"
# 		((contador_lsattr++))
# 		# Ejecutar el comando lsattr
# 		lsattr
# 	elif [ "$opcion" == "find" ]; then
# 		echo "Ha ingresado la opción para encontrar un archivo"
# 		((contador_find++))
# 		# Ejecutar el comando find
# 		find . -name -file*
# 	elif [ "$opcion" == "which" ]; then
# 		echo "Ha ingresado la opción para ver el tipo de archivo"
# 		((contador_which++))
# 		# Ejecutar el comando which
# 		which file
# 	elif [ "$opcion" == "file" ]; then
# 		echo "Ha ingresado la opción para ver la información de un archivo"
# 		((contador_file++))
# 		# Ejecutar el comando file
# 		file file.txt
# 	elif [ "$opcion" == "hexeditor" ]; then
# 		echo "Ha ingresado la opción para ver el contenido de un archivo en hexadecimal"
# 		((contador_hexeditor++))
# 		# Ejecutar el comando hexeditor
# 		hexeditor file.txt
# 	else
# 		echo "Opcion invalida"
# 	fi
# }

# # Contadores para las opciones a, b, chattr, lsattr, find, which, file y hexeditor
# contador_a=0
# contador_

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
		# Ejecutar el comando chattr
		chattr +l -V file.txt
	elif [ "$opcion" == "lsattr" ]; then
		echo "Ha ingresado la opción para ver flags especiales"
		((contador_lsattr++))
		# Ejecutar el comando lsattr
		lsattr
	elif [ "$opcion" == "find" ]; then
		echo "Ha ingresado la opción para encontrar un archivo"
		((contador_find++))
		# Ejecutar el comando find
		find . -name -file*
	elif [ "$opcion" == "which" ]; then
		echo "Ha ingresado la opción para ver el tipo de archivo"
		((contador_which++))
		# Ejecutar el comando which
		which file
	elif [ "$opcion" == "file" ]; then
		echo "Ha ingresado la opción para ver la información de un archivo"
		((contador_file++))
		# Ejecutar el comando file
		file file.txt
	elif [ "$opcion" == "hexeditor" ]; then
		echo "Ha ingresado la opción para ver el contenido de un archivo en hexadecimal"
		((contador_hexeditor++))
		# Ejecutar el comando hexeditor
		hexeditor file.txt
	else
		echo "Opcion invalida"
	fi
}

# Contadores para las opciones a, b, chattr, lsattr, find, which, file y hexeditor
contador_a=0
contador_b=0
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
	# Generar un número aleatorio entre 0 y 6
	random=$(shuf -i 0-6 -n 1)

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
	elif [ "$random" -eq 7 ]; then
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

# ESste script realiza lo siguiente:

#     Inicializa un contador para cada una de las opciones "a", "b", "chattr", "lsattr", "find", "which", "file" y "hexeditor".

#     Ejecuta un bucle durante 60 segundos (1 minuto), generando un número aleatorio entre 0 y 7 en cada iteración.

#     Asigna una opción a cada número generado aleatoriamente, utilizando una estructura de control "if" anidada.

#     Llama a la función switch_case para procesar la opción asignada y aumentar el contador correspondiente.

#     Espera 1 segundo antes de continuar con la siguiente iteración del bucle.

#     Después de 60 segundos, muestra los resultados finales, es decir, los valores de los contadores para cada opción.

# Este script es útil para simular una serie de acciones aleatorias y ver cuántas veces se eligen cada una de las opciones en un período de tiempo determinado.
