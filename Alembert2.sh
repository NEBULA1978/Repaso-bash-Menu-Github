#!/bin/bash

saldo=100000 # saldo inicial
apuesta=1 # cantidad inicial de la apuesta
jugadas=10000 # número de jugadas

echo "Bienvenido al juego de ruleta con el método d'Alembert"
echo "Saldo inicial: $saldo"
echo "Apuesta inicial: $apuesta"
echo "Número de jugadas: $jugadas"

serie_actual=0
series_ganadas=0
jugadas_perdidas=0
ultima_jugada=-1

for (( i=1; i<=$jugadas; i++ )); do
  echo "=== Jugada $i ==="
  resultado=$((RANDOM % 2)) # 0 para negro, 1 para rojo
  if (( resultado == 0 )); then
    echo "Resultado: negro"
  else
    echo "Resultado: rojo"
  fi

  if (( resultado == 0 )); then # perdemos
    saldo=$((saldo - apuesta / 2)) # pierdes la mitad de la apuesta
    apuesta=$((apuesta + 1))
    echo "Has perdido. Nuevo saldo: $saldo"
    jugadas_perdidas=$((jugadas_perdidas + 1))
    serie_actual=0
  else # ganamos
    saldo=$((saldo + apuesta))
    apuesta=$((apuesta - 1))
    if (( apuesta < 1 )); then
      apuesta=1
    fi
    echo "Has ganado. Nuevo saldo: $saldo"
    serie_actual=$((serie_actual + 1))
    if (( serie_actual > 1 && resultado == ultima_jugada )); then
      series_ganadas=$((series_ganadas + 1))
      echo "¡Serie de $serie_actual $([ $resultado == 1 ] && echo rojos || echo negros) ganada!"
    fi
  fi

  ultima_jugada=$resultado
done

echo "=== Resultado final ==="
echo "Saldo final: $saldo"

if (( saldo > 100000 )); then
  echo "¡Felicidades, has ganado $"$((saldo - 100000))"!"
elif (( saldo == 100000 )); then
  echo "No has ganado ni perdido dinero."
else
  echo "Lo siento, has perdido $"$((100000 - saldo))"."
fi

echo "Jugadas perdidas: $jugadas_perdidas"
echo "Series ganadas: $series_ganadas"


# echo "Jugadas perdidas: $jugadas_perdidas"
# echo "Series ganadas: $series_ganadas"

# En este ejemplo, he añadido una sentencia if al final del juego para comparar el saldo final con el saldo inicial y determinar si has ganado o perdido dinero. Si el saldo final es mayor que el saldo inicial, se considera que has ganado dinero y se imprime el monto ganado. Si el saldo final es igual al saldo inicial, se imprime un mensaje indicando que no has ganado ni perdido dinero. Si el saldo final es menor que el saldo inicial, se considera que has perdido dinero y se imprime el monto perdido.