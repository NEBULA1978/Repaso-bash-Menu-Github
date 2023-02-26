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
