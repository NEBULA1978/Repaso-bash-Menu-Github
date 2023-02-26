#!/bin/bash
echo "Directorios en el home:"
ls -d ~/*/ * .
ls -d ~/*/
ls -d ~/*/ | * .

# El comando ls -d ~/*/ lista todas las carpetas en el directorio home, y luego el resultado se pasa como argumento al comando xargs ls, que a su vez lista los archivos dentro de esas carpetas.

# El comando cd .. cambia al directorio padre, mientras que el asterisco * y el punto . tienen diferentes significados. El asterisco * es un comodín que se usa para hacer coincidir cualquier secuencia de caracteres, mientras que el punto . representa el directorio actual. Por lo tanto, ls -d ./*/ listaría todas las carpetas en el directorio actual.
# echo "Directorios en el PATH:"

IFS=:
for dir in $PATH; do
  echo $dir
done

# Podemos introducir por la consola
