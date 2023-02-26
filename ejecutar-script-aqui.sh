#!/bin/bash

# Lista de nombres de archivos de script a ejecutar
scripts=(
  array_loop.sh
  case.sh
  condicionales.sh
  ejecutar-script-aqui.sh
  funciones.sh
  lectura_archivos-carpetas.sh
  lectura_archivos-entrar-ccarpetas2.sh
  lectura_archivos.sh
  lectura_archivos2-while.sh
  lectura_archivos2-while2.sh
  lectura_archivos2-while3.sh
  lectura_archivos2-while4.sh
  lectura_archivos2.sh
  manipular-archivos.sh
  manipular-archivos2.sh
  menubase.sh
  Menu-Github
  menubase4-completo-while-case.sh
  menubase4-completo-while-case2.sh
  menubasegit-Github-inputs.sh
  menubasegit-Github.sh
  pasos-git.sh
  primer_script.sh
  script_interactivo.sh
  tabla-multiplicar-input.sh
  variables.sh

)

# Iterar a través de los nombres de archivo de script y ejecutarlos uno por uno
for script in "${scripts[@]}"; do
  echo "Ejecutando el script: $script"
  bash "$script"
  echo "El script $script ha terminado"
done
