#!/bin/bash

echo "Introduce un número: "
read num

echo "Tabla de multiplicar del $num:"
for i in {0..10}; do
  result=$((num * i))
  echo "$num x $i = $result"
done
