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
    saldo=$((saldo - apuesta))
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
echo "Jugadas perdidas: $jugadas_perdidas"
echo "Series ganadas: $series_ganadas"


# En este ejemplo, he añadido tres variables nuevas: serie_actual, que lleva la cuenta de la serie actual de rojos o negros ganada; series_ganadas, que lleva la cuenta del número total de series ganadas; y ultima_jugada, que guarda el resultado de la última jugada para comparar con la jugada actual.

# En cada jugada ganadora, incrementamos la variable serie_actual, y si la jugada actual es del mismo color que la anterior y hay una serie actual de al menos 2 jugadas, consideramos que se ha ganado una serie y aumentamos el contador series_ganadas. También imprimimos un mensaje indicando el número de jugadas ganadas de la serie y su color.

# Al final del juego, se imprime el saldo final y el número de series ganadas.
# En este ejemplo, he añadido la variable jugadas_perdidas y la incremento en cada jugada perdedora. Al final del juego, se imprime el saldo final, el número de jugadas perdidas y el número de series ganadas.

# Espero que esto te sea útil. ¡Que disfrutes del juego!