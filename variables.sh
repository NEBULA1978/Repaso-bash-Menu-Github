#!/bin/bash
# Author: Ramón Pascual
# Manejo variables scripting

variable_script="Esta es una variable de usuario, existe unicamente dentro de este script"

numA=15
numB=5
echo $LEDUIN          #VARIABLE DE ENTORNO
echo $variable_script #VARIABLE DE USUARIO
echo "================================================="

echo "Operadores Aritmeticos entre $numA y $numB"

echo "$numA + $numB = "$((numA + numB))
echo "$numA - $numB = "$((numA - numB))
echo "$numA * $numB = "$((numA * numB))
echo "$numA / $numB = "$((numA / numB))

echo "================================================"

echo "Operadores Relacionales"

echo "0 = FALSE; 1 = TRUE "
echo "$numA > $numB =  "$((numA > numB))
echo "$numA < $numB =  "$((numA < numB))
echo "$numA >= $numB = "$((numA >= numB))
echo "$numA <= $numB = "$((numA <= numB))
echo "$numA == $numB = "$((numA == numB))
echo "$numA != $numB = "$((numA != numB))

echo "==============================================="

echo "Operadores de  asignacion"

echo "$numA += $numB = "$((numA += numB))
echo "$numA -= $numB = "$((numA - numB))
echo "$numA *= $numB = "$((numA * numB))
