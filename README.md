# ioa_forecast2video
transforma las imágenes de los pronósticos a videos

## Requerimientos:
  * FFMEG
  * ImageMagic
  * Xvfb
  * python 3
  * selenium (pip3 install selenium)
  * pyVirtualDisplay (pip3 install PyVirtualDisplay)
  * geckodriver https://github.com/mozilla/geckodriver/releases
  

## Instalación de selenium y geckodriver:
  1. Instalar Selenium client para python. La opción mas sencilla es usando *pip install selenium*. Métodos adicionales se pueden encontrar en https://www.seleniumhq.org/download/
  2. Descargar e instalar *geckodriver* (web driver para mozilla), desde https://github.com/mozilla/geckodriver/releases
  * La instalación consiste en copiar geckodriver al path (/usr/local/bin,/usr/bin, ~/bin,etc).
  * Verificar compatibilidad de versiones geckodriver con selenium (actualmente geckodriver 0.23.0 ,selenium 3.141.0)
