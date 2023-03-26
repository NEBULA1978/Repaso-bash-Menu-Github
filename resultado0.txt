#!/bin/bash
# Author: Ramón Pascual

# Primer video PelardoNerd
# Clonamos repositorio github
git clone nombreRepo
# Para pasar a master o main
git checkout main
# Asegurarnos que tenemos la ultima version del codigo
git pull origin main
# Creamo una branch(rama)
git branch ramaNueva
# Pasamos de main a nuevaRama
git checkout ramaNueva
# Hacemos algun cambio en algun archivo o añadimos nuevos archivos
# Agregamos nuevos cambios
# git add .
git add -A
# Agregamos commit
Agregamos commit -m "Nuevo cambio"
# Subimos cambios de la nueva rama al proyecto de git:
git push origin ramaNueva
# Pasamos a main
git checkout main
# Para ver si esta nuestra branch(ramaNueva)
git branch --merged
# Para unir la ramaNueva a main
git merge ramaNueva
# Para subir las dos ramas a gurthub
git push origin main
# Para borrar branch de repo externo de Github
git push origin --delete nuevaRama
# Para vefr las brachs
git branch -a
# Borrar la branch de mi copia local
git branch -d nuevaRama
# BORRAR archivo que no queremos añadir:
git rm --cached .gitignore

# SEGUNDO VIDEO

Tenemos 3 estados:
# workingdirectori:
# Estan fuera de git ,solo nos muestra pero no tiene los cambios añadidos a github

# StageArea
# Cuando agregamos con git add -A estan en esta area,esperando a hacer el commit y pasar al workindirectory para tener control de cambios que hagamos en github
