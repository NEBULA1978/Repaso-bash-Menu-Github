#!/bin/bash

while :; do
    #Menu
    clear
    echo -e "\e[1;32m"
    echo " MENU SCRIPT V.1 "
    echo ""
    echo "1. Clonar Repositorio de GitHub"
    echo "2. Cambiar a Rama Principal (main)"
    echo "3. Asegurarse de tener la Última Versión del Código"
    echo "4. Crear una Nueva Rama"
    echo "5. Realizar Cambios en un Archivo"
    echo "6. Agregar Nuevos Cambios al Repositorio"
    echo "7. Subir Cambios de la Nueva Rama al Proyecto de GitHub"
    echo "8. Ver Ramas Unidas"
    echo "9. Unir la Nueva Rama con la Rama Principal (main)"
    echo "10. Subir las Dos Ramas a GitHub"
    echo "11. Borrar Rama de Repositorio Externo de GitHub"
    echo "12. Ver Ramas"
    echo "13. Borrar Rama de Copia Local"
    echo "14. Borrar Archivo del Repositorio"
    echo "15. Salir"
    echo ""
    #Escoger menu
    echo -n "Escoger opcion: "
    read opcion
    #Seleccion de menu
    case $opcion in
    1)
        echo "Clonando Repositorio de GitHub"
        echo -n "Introduce el nombre del repositorio a clonar: "
        read nombreRepo
        git clone $nombreRepo
        read foo
        ;;
    2)
        echo "Cambiando a Rama Principal (main)"
        git checkout main
        read foo
        ;;
    3)
        echo "Asegurándose de tener la Última Versión del Código"
        git pull origin main
        read foo
        ;;
    4)
        echo "Creando una Nueva Rama"
        echo -n "Introduce el nombre de la nueva rama: "
        read ramaNueva
        git branch $ramaNueva
        read foo
        ;;
    5)
        echo "Realizando Cambios en un Archivo"
        # cambios a realizar
        read foo
        ;;
    6)
        echo "Agregando Nuevos Cambios al Repositorio"
        git add -A
        echo -n "Introduce un mensaje para el commit: "
        read mensaje
        git commit -m "$mensaje"
        read foo
        ;;
    7)
        echo "Subiendo Cambios de la Nueva Rama al Proyecto de GitHub"
        git push origin $ramaNueva
        read foo
        ;;
    8)
        echo "Viendo Ramas Unidas"
        git branch --merged
        read foo
        ;;

    9)
        echo "Uniendo la Nueva Rama con la Rama Principal (main)"
        git checkout main
        git merge $ramaNueva
        read foo
        ;;
    10)
        echo "Subiendo las Dos Ramas a GitHub"
        git push origin main
        read foo
        ;;
    11)
        echo "Borrando Rama de Repositorio Externo de GitHub"
        git push origin --delete $ramaNueva
        read foo
        ;;
    12)
        echo "Viendo Ramas"
        git branch -a
        read foo
        ;;
    13)
        echo "Borrando Rama de Copia Local"
        git branch -d $ramaNueva
        read foo
        ;;
    14)
        echo "Borrando Archivo del Repositorio"
        echo -n "Introduce el nombre del archivo a borrar: "
        read archivo
        git rm --cached $archivo
        read foo
        ;;
    15) exit 0 ;;
    #Alerta
    *)
        echo "Opción inválida..."
        sleep 1
        ;;
    esac
done

# Este script es un menú en Bash que permite realizar diferentes acciones con un repositorio de Git.

# Las opciones disponibles son:

#     Clonar un repositorio de GitHub.
#     Cambiar a la rama principal (main).
#     Asegurarse de tener la última versión del código.
#     Crear una nueva rama.
#     Realizar cambios en un archivo.
#     Agregar nuevos cambios al repositorio.
#     Subir los cambios de la nueva rama al proyecto de GitHub.
#     Ver las ramas unidas.
#     Unir la nueva rama con la rama principal (main).
#     Subir las dos ramas a GitHub.
#     Borrar una rama del repositorio externo de GitHub.
#     Ver las ramas disponibles.
#     Borrar una rama de la copia local.
#     Borrar un archivo del repositorio.
#     Salir del menú.

# Para cada opción, se piden los datos necesarios (como el nombre del repositorio a clonar o el nombre de la nueva rama) y se ejecutan los comandos de Git correspondientes.
