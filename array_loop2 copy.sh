#!/bin/bash
# Author: Ramón Pascual
# Array e Iteracion

# Agregar elementos a un arreglo

# Puedes agregar elementos a un arreglo utilizando la sintaxis de corchetes y la posición en la que deseas agregar el elemento:

numeros=(1 2 3)
numeros[3]=4
echo "${numeros[@]}" # imprime "1 2 3 4"

# También puedes utilizar la sintaxis += para agregar un elemento al final del arreglo:
numeros+=(5)
echo "${numeros[@]}" # imprime "1 2 3 4 5"

# Eliminar elementos de un arreglo

# Además de la opción unset que ya has utilizado, puedes eliminar elementos de un arreglo utilizando la sintaxis unset junto con la posición del elemento que deseas eliminar:

numeros=(1 2 3 4 5)
unset numeros[2] # elimina el elemento "3"
echo "${numeros[@]}" # imprime "1 2 4 5"

# Extraer un rango de elementos de un arreglo

# Puedes extraer un rango de elementos de un arreglo utilizando la sintaxis de corchetes y los índices de inicio y fin separados por dos puntos ::

numeros=(1 2 3 4 5)
echo "${numeros[@]:1:3}" # imprime "2 3 4"

# Ordenar un arreglo

# Puedes ordenar un arreglo utilizando el comando sort junto con la opción -n para ordenar numéricamente y -r para ordenar en orden descendente:

# bash

numeros=(5 1 3 2 4)
numeros_ordenados=($(echo "${numeros[@]}" | tr ' ' '\n' | sort -n)) # ordena numéricamente
echo "${numeros_ordenados[@]}" # imprime "1 2 3 4 5"

numeros_ordenados_desc=($(echo "${numeros[@]}" | tr ' ' '\n' | sort -nr)) # ordena numéricamente en orden descendente
echo "${numeros_ordenados_desc[@]}" # imprime "5 4 3 2 1"

# Obtener el índice de un elemento en un arreglo

# Puedes obtener el índice de un elemento en un arreglo utilizando un bucle for y la sintaxis de corchetes para comparar cada elemento del arreglo con el elemento que estás buscando:

# bash

numeros=(1 2 3 4 5)
buscar=4
for i in "${!numeros[@]}"; do
    if [[ "${numeros[$i]}" = "${buscar}" ]]; then
        echo "El elemento ${buscar} está en la posición ${i}"
    fi
done

# Esto imprimirá "El elemento 4 está en la posición 3".
