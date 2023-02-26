#!/bin/bash

while true; do

  echo "¿Quieres crear una carpeta (1) o un archivo (2)?"
  read option

  echo "Introduce el nombre (o escribe 'salir' para terminar): "
  read name

  if [ "$name" == "salir" ]; then
    break
  fi

  if [ "$option" == "1" ]; then
    mkdir -m 777 $name
    echo "Carpeta $name creada."
  elif [ "$option" == "2" ]; then
    touch $name
    echo "Archivo $name creado."
  else
    echo "Opción inválida."
  fi
done

# Es un script de shell de bash que permite crear tanto carpetas como archivos en el sistema. Aquí está una descripción detallada de cómo funciona:

#     La primera línea #!/bin/bash indica que se está usando el intérprete de comandos bash.

#     El bucle while true se ejecutará hasta que se cumpla la condición de salida.

#     La primera línea dentro del bucle es una instrucción echo que pide al usuario que introduzca el nombre.

#     La siguiente línea es una instrucción read que guarda el nombre introducido por el usuario en la variable name.

#     La siguiente instrucción de control de flujo if comprueba si el nombre introducido es "salir". Si es así, el script termina con una instrucción break.

#     Si el nombre introducido no es "salir", el script continúa y pide al usuario que elija entre crear una carpeta o un archivo.

#     La siguiente instrucción de control de flujo if comprueba si el usuario eligió crear una carpeta (opción 1). Si es así, se ejecuta la instrucción mkdir para crear una carpeta con el nombre introducido y los permisos 777 (lectura, escritura y ejecución para todos los usuarios).

#     Si el usuario eligió crear un archivo (opción 2), se ejecuta la instrucción touch para crear un archivo con el nombre introducido.

#     Si el usuario eligió una opción inválida, el script muestra un mensaje de error.

#     El bucle while vuelve a empezar y pide al usuario que introduzca otro nombre o "salir".

# Este script es un ejemplo básico de cómo puedes crear carpetas o archivos en un sistema operativo basado en Unix con un script de bash. Puedes personalizarlo y ampliarlo para adaptarlo a tus necesidades específicas.
