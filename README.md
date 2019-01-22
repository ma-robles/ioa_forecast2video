# ioa_forecast2video
Transforma las imágenes de los pronósticos a videos

### Requerimientos:
  * FFMEG
  * ImageMagic
  * Xvfb
  * python 3
  * selenium
  * pyVirtualDisplay 
  * geckodriver https://github.com/mozilla/geckodriver/releases
  

## Selenium y geckodriver:
En conjunto permiten la navegación web automatizada.
#### Instalación
  1. Instalar *Selenium client* para python. La opción mas sencilla es usando *pip3 install selenium*. Métodos adicionales se pueden encontrar en https://www.seleniumhq.org/download/
  2. Descargar e instalar *geckodriver* (web driver para mozilla), desde https://github.com/mozilla/geckodriver/releases
  * La instalación consiste en copiar geckodriver al path (/usr/local/bin,/usr/bin, ~/bin,etc).
  * Verificar compatibilidad de versiones geckodriver con selenium (actualmente geckodriver 0.23.0 ,selenium 3.141.0)
## Xvfb y pyVirtualDisplay
En conjunto permiten crear una pantalla virtual para los scripts en python3 donde se desplegará la navegación web.
#### Instalación
* pip3 install PyVirtualDisplay
* Xvfb se puede instalar por medio del administrador de paquetes del sistema.

## FFMPEG e Imagemagic
Permiten el manejo y edición de videos e imágenes respectivamente
#### Instalación
Se pueden instalar por medio del administrador de paquetes del sistema.
