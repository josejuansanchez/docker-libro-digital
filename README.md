# docker-libro-digital

Contenedor Docker para ejecutar el libro digital **GENERATION 1 Manuel Interactif** en Ubuntu 20.04 

## Paso 0

Ejecute el archivo `0_install_docker.sh` para instalar Docker en su equipo.

## Paso 1

Ejecute el archivo `1_build_image.sh` para crear la imagen Docker con el libro digital.

Para crear la imagen del contenedor Docker necesita añadir el archivo **libro.zip** (2.4 GB). 

El archivo **libro.zip** contiene los siguientes archivos y directorios:

```
drwxr-xr-x 3 usuario usuario     4096 oct 30 11:02  app.app
drwxr-xr-x 5 usuario usuario     4096 oct  6 22:16 'audio generation lycee1'
-rw-r--r-- 1 usuario usuario   303687 abr 15  2019  browser.swf
drwxr-xr-x 3 usuario usuario    61440 oct 30 10:58  contenido
drwxr-xr-x 2 usuario usuario    61440 oct 30 11:01  curso
-rw-r--r-- 1 usuario usuario     1132 jun  6  2016  exeBrowser.htm
-rw-r--r-- 1 usuario usuario 11487542 abr 15  2019  exeLinux
-rw-r--r-- 1 usuario usuario     4096 ago 11 18:08  ._exeMac
-rw-r--r-- 1 usuario usuario       98 ene 17  2020  exeMac
-rwxr-xr-x 1 usuario usuario  5547573 abr 15  2019  exeWin.exe
-rw-r--r-- 1 usuario usuario   911872 oct  2  2017 'GENERATION LYCEE 1 EVALUATION.doc'
-rw-r--r-- 1 usuario usuario     1598 may 31  2019  lisez-moi.txt
drwxr-xr-x 3 usuario usuario     4096 oct 30 11:02  macsc.app
drwxr-xr-x 2 usuario usuario     4096 oct 30 11:01  modulos
drwxr-xr-x 2 usuario usuario     4096 oct 30 11:01  recursos
```

## Paso 2

Ejecute el archivo `2_run_on_linux.sh` para ejecutar el contenedor Docker con el libro digital.

## Nota

Si tiene algún problema con el sonido ejecute el archivo `kill_pulseaudio.sh`.
