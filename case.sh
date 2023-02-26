#!/bin/bash
# Author: Ramón Pascual
# Switch Case

opcion=""
read -p "Ingrese una opcion [a-b]: " opcion

if [ "$opcion" == "a" ]; then
	echo "opcion A"
fi

case $opcion in
"a") echo "Ha ingresado la opcion A" ;;
"b") echo "Ha ingresado la opcion B" ;;
[c-z]) echo "Ha ingresado un valor fuera del rango" ;;
*) echo "Opcion invalida" ;;
esac

# Ejemplo2
#!/bin/bash

# Función que utiliza el switch case para ejecutar código dependiendo de la opción ingresada
switch_case() {
	local opcion=$1

	if [ "$opcion" == "a" ]; then
		echo "Ha ingresado la opcion A"
	fi

	case $opcion in
	"a") echo "Ha ingresado la opcion A" ;;
	"b") echo "Ha ingresado la opcion B" ;;
	[c-z]) echo "Ha ingresado un valor fuera del rango" ;;
	*) echo "Opcion invalida" ;;
	esac
}

# Solicitar la opción al usuario y llamar a la función switch_case
read -p "Ingrese una opcion [a-b]: " opcion
switch_case $opcion

# En este ejemplo, la función switch_case toma la opción ingresada como parámetro y la utiliza para ejecutar el código correspondiente. La función utiliza el switch case para determinar qué código se debe ejecutar.

# Para utilizar la función, el script primero solicita la opción al usuario y luego llama a la función switch_case con la opción ingresada como parámetro.
