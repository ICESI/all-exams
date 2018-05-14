### Examen 2
**Universidad ICESI**  
**Curso:** Sistemas Operativos  
**Docente:** Daniel Barragán C.  
**Tema:** Comandos de Linux, Scripts, Herramientas  
**Correo:** daniel.barragan at correo.icesi.edu.co

### Objetivos
* Conocer y emplear comandos de Linux para la realización de tareas administrativas
* Instalar, configurar y emplear herramientas de Linux de apoyo al uso del sistema operativo
* Automatizar tareas por medio de scripts

### Prerrequisitos
* Virtualbox o WMWare
* Máquina virtual con sistema operativo debian 9
* Git, Python3, pip
* Librerias pip: flask, asciinema, pyCLI psutil, slackclient
* Usuario operativos

### Descripción
El segundo parcial del curso sistemas operativos trata sobre el empleo de comandos de Linux, la instalación y configuración de herramientas y la automatización de tareas.

### Actividades
1. Incluir nombre, código (5%)
2. Ortografía y redacción cuando sea necesario (5%)
3. Realice la instalación y configuración de zsh y git (10%):
 * Instalación de zsh.
 * Instalación de plugins de oh-my-zsh (usuario operativos).
 * Uso de un token en lugar de usuario y contraseña para la conexión con git (https://github.com/ICESI/so-git/tree/master/00_github_intro)
 * Capturas de pantalla muestre el uso de los alias **gaa**, **gcmsg** y **ggp** para el envío de un commit a su fork del repositorio so-exam2.
4. Realice la instalación y configuración del siguiente plugin (10%)
 * Instale el plugin zsh-autosuggestions
 * Cambie el color de resaltado de las coincidencias a amarillo
 * Por medio de capturas de pantalla muestre el autocompletado de dos comandos
5. Realice la instalación y configuración de tmux (10%).
 * Instale tmux
 * Emplear como prefijo la combinación de teclas **ctrl** + **a**
 * Activar la recarga de la configuración al presionar el prefijo y **R**
 * Activar el modo vi para la navegación a través del buffer (salida de la linea de comandos). Active tambien el modo de copia visual a portapapeles.
 * Por medio de asccinema grabe un ejemplo donde ilustre el funcionamiento del item anterior, cargue el video a la página de asciinema e incluya el link en el informe.
6. Cree una sesion de nombre so-exam2. Divide la pantalla en cuatro cuadrantes y en cada cuadrante muestre lo siguiente (20%):
 * Salida del comando top
 * Salida de la ejecución del script de python courses.py
 * Peticiones por medio de curl a cada endpoint. Salida formateada con **jq**
 * Salida de la ejecución de **telnet towel.blinkenlights.nl**
 * Incluya una captura de pantalla de los cuatro cuadrantes

  ```
  # courses.py
  from flask import Flask
  import json
  app = Flask(__name__)

  @app.route("/courses")
  def courses():
      courses = {"courses": ["SO2018", "DS2018"]}
      return json.dumps(courses), 200

  @app.route("/courses/SO2018/curriculum")
  def curriculum():
      curriculum = {"curriculum": ["virtualization", "processes", "memory"]}
      return json.dumps(curriculum), 200

  if __name__ == "__main__":
      app.run('0.0.0.0')
  ```
  ```
  python courses.py
  ```
7. Realice una aplicación que cumpla las siguientes características (30%)
 * Se debe ejecutar en background a las 8:00am todos los días, consulte el manual de crontab
 * Se debe ejecutar como una aplicación de linea de comandos usando https://pythonhosted.org/pyCLI/
 * Debe obtener los valores de procesador, memoria y disco disponibles usando https://pypi.python.org/pypi/psutil/4.3.0
 * Debe publicar en un canal de slack los valores de porcentaje de cpu, memoria y disco disponibles usando  https://github.com/slackapi/python-slackclient
 * Incluya el código fuente de la aplicación en un directorio de nombre codigo_punto6, incluya además capturas de pantalla como evidencia.
8. El informe debe ser subido a un repositorio de github en formato README.md. El repositorio de github debe ser un fork de https://github.com/ICESI-Training/so-exam2 y para la entrega deberá hacer un Pull Request (PR) respetando la estructura definida. La url del repositorio de github debe incluirse en el informe (10%)  

### Nota
* Cada commit debe seguir las buenas prácticas indicadas en clase
* No se recibiran exámenes que no sean mezclados automáticamente por la herramienta icesi-gm-tool
* El examen es individual, cualquier copia anula el examen

### Referencias
* https://www.debian.org/  
* https://github.com/robbyrussell/oh-my-zsh
* https://github.com/zsh-users/zsh-autosuggestions
* https://asciinema.org/docs/installation
