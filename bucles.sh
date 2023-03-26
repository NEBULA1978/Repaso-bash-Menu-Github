#!/bin/bash
echo "Directorios en el home:"
ls -d ~/*/ * .
ls -d ~/*/
ls -d ~/*/ | * .
# Ver todoslos archivos y la subcarpetas con sus archivos
tree ~ | more
# El comando ls -d ~/*/ lista todas las carpetas en el directorio home, y luego el resultado se pasa como argumento al comando xargs ls, que a su vez lista los archivos dentro de esas carpetas.

# El comando cd .. cambia al directorio padre, mientras que el asterisco * y el punto . tienen diferentes significados. El asterisco * es un comodín que se usa para hacer coincidir cualquier secuencia de caracteres, mientras que el punto . representa el directorio actual. Por lo tanto, ls -d ./*/ listaría todas las carpetas en el directorio actual.
# echo "Directorios en el PATH:"

IFS=:
for dir in $PATH; do
  echo $dir
done

# Podemos introducir por la consola

# Ver todos los nombres por consola
echo "Buscando archivos de texto en el directorio home"
find ~ -type f -name "*.txt" -print | while read file; do
  echo "Archivo encontrado: $file"
done

# El script es un conjunto de comandos de shell que se ejecutan en un entorno de terminal de Linux. Primero, muestra los directorios en el directorio home utilizando el comando ls y un comodín. Luego, usa el comando tree para mostrar la estructura de directorios y archivos debajo del directorio home. Después, utiliza un bucle for para mostrar todos los directorios en la variable de entorno PATH. Finalmente, utiliza el comando find para buscar archivos de texto con extensión ".txt" en el directorio home y muestra sus nombres por consola.