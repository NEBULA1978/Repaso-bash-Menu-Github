#!/bin/bash
# Author: Ramón Pascual
# Funciones

hola_mundo() {
	echo "hola mundo"
}

parametros() {
	echo "hola soy $1 y subscrite a $2"
}

read -p "Ingrese su nombre " nombre
read -p "Ingrese su canal " canal

hola_mundo

parametros $nombre $canal

# Ejemplo de función que muestra un saludo simple
saludar() {
	echo "¡Hola! Bienvenido al programa."
}

# Ejemplo de función que toma dos parámetros y los muestra en un mensaje
mostrar_mensaje() {
	local nombre=$1
	local mensaje=$2
	echo "$nombre dice: $mensaje"
}

# Ejemplo de función que verifica si un archivo existe en la ruta especificada
verificar_archivo() {
	local archivo=$1
	if [ -f "$archivo" ]; then
		echo "El archivo $archivo existe."
	else
		echo "El archivo $archivo no existe."
	fi
}

# Ejemplo de función que toma un número como parámetro y devuelve su cuadrado
calcular_cuadrado() {
	local numero=$1
	local cuadrado=$(($numero * $numero))
	echo "El cuadrado de $numero es $cuadrado."
}

# Ejemplo de función que toma dos números como parámetros y devuelve su suma
calcular_suma() {
	local num1=$1
	local num2=$2
	local suma=$(($num1 + $num2))
	echo "La suma de $num1 y $num2 es $suma."
}

# Ejemplo de uso de las funciones
saludar
mostrar_mensaje "Juan" "Hola, ¿cómo estás?"
verificar_archivo "archivo.txt"
calcular_cuadrado 5
calcular_suma 10 20

# En este ejemplo, la función saludar simplemente muestra un mensaje de saludo. La función mostrar_mensaje toma dos parámetros, nombre y mensaje, y los muestra en un mensaje. La función verificar_archivo toma un parámetro, archivo, y verifica si existe un archivo con ese nombre. La función calcular_cuadrado toma un número como parámetro y devuelve su cuadrado. La función calcular_suma toma dos números como parámetros y devuelve su suma.
