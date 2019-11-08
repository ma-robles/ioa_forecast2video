# ioa_forecast2video
Conjunto de scripts en Python y Bash shell que transforma las imágenes y páginas de OWGIS de pronósticos del grupo IOA a videos.

### Requerimientos:
  * FFMEG
  * ImageMagic
  * Xvfb
  * python 3
  * selenium
  * pyVirtualDisplay 
  * geckodriver https://github.com/mozilla/geckodriver/releases
  

### Selenium y geckodriver:
En conjunto permiten la navegación web automatizada.
#### Instalación
  1. Instalar *Selenium client* para python. La opción mas sencilla es usando *pip3 install selenium*. Métodos adicionales se pueden encontrar en https://www.seleniumhq.org/download/
  2. Descargar e instalar *geckodriver* (web driver para mozilla), desde https://github.com/mozilla/geckodriver/releases
  * La instalación consiste en copiar geckodriver al path (/usr/local/bin,/usr/bin, ~/bin,etc).
  * Verificar compatibilidad de versiones geckodriver con selenium (actualmente geckodriver 0.23.0 ,selenium 3.141.0)
### Xvfb y pyVirtualDisplay
En conjunto permiten crear una pantalla virtual para los scripts en python3 donde se desplegará la navegación web.
#### Instalación
* pip3 install PyVirtualDisplay
* Xvfb se puede instalar por medio del administrador de paquetes del sistema.

### FFMPEG e Imagemagic
Permiten el manejo y edición de videos e imágenes respectivamente
#### Instalación
Se pueden instalar por medio del administrador de paquetes del sistema.

##Descripción
Dado que existen dos tipos de información que se puede obtener de la página: Imágenes y mpas interactivos (OWGIS).
Por lo cual, se utilizan scripts diferentes para cada tipo.
###Obteniendo videos de OWGIS
Consta un script principal escrito en Python, el cual es llamado por los scripts en Bash Shell con los parámetros adecuados para generar los videos.
El script principal es *owgis_rec_local.py*, éste es llamado por *owgis_all.sh*, *ow_comp_marea.sh* y *ow_comp_oleaje.sh*.
Adicionalmente *copy_all.sh* realiza la copia automática. 

###Creación de videos de imágenes
La creación de videos apartir de las imágenes generadas y disponibles en la página web se compone de varios scripts.
* *path_creator.py* crea rutas especiales que cambian todos los días.
* *forecast2video.py*. Genera los videos a partir de un archivo con la lista.
* *join_banner.sh* pega información a los mapas.
Adicionalmente *join_copy* realiza la copia automática a diferentes ip's.

####path_creator.py
Es necesario para rutas especiales (ceniza).
Toma un archivo con la lista de las rutas para crear el path adecuado.
Requiere 3 parámetros separados por espacio: root, post y el nombre del archivo de salida.
Se puede usar "#" para comentarios.

####forecast2video.py
Toma un archivo y una carpeta de salida.
El archivo contiene una lista separada por comas en el que para cada línea se especifica una URL y el nombre del archivo de salida.
La carpeta de salida indica la carpeta donde se generarán los videos.

####join_banner.sh
Agrega información a los videos

join_banner.sh folder_videos folder_info
folder_videos es la carpeta donde se encuentran los videos
folder_info carpeta donde se encuentran las imágenes a agregar


####Otros archivos
* *base_list.txt*. Es un archivo de ejemplo que crea diferentes videos, sirve como base a la cual se le puede agregar rutas de ceniza mediante *path_creator.py*.
* *special_path.txt*. Se utiliza para crear rutas especiales con *path_creator.py*.
* *fore_list.txt*. Es un archivo de ejemplo que crea diferentes videos incluyendo los de ceniza.

