### Examen 2
**Universidad ICESI**  
**Curso:** Sistemas Distribuidos  
**Docente:** Daniel Barragán C.  
**Tema:** Construcción de artefactos para entrega continua  
**Correo:** daniel.barragan at correo.icesi.edu.co

### Objetivos
* Realizar de forma autómatica la generación de artefactos para entrega continua
* Emplear librerías de lenguajes de programación para la realización de tareas específicas
* Diagnosticar y ejecutar de forma autónoma las acciones necesarias para corregir fallos en
la infraestructura

### Tecnlogías sugeridas para el desarrollo del examen
* Vagrant
* Docker
* Box del sistema operativo CentOS7
* Repositorio Github
* Python3
* Librerias Python3: Flask, Connexion, Docker
* Ngrok

### Descripción
Para la realización de la actividad tener en cuenta lo siguiente:

* Crear un Fork del repositorio sd2018b-exam2 y adicionar las fuentes de un microservicio
de su elección.
* Alojar en su fork un archivo Dockerfile para la construcción de un artefacto tipo Docker a
partir de las fuentes de su microservicio.

Deberá probar y desplegar los siguientes componentes:

* Despliegue de un **registry** local de Docker para el almacenamiento de imágenes de Docker. Usar la imagen de DockerHub: https://hub.docker.com/_/registry/ . Probar que es posible descarga la imagen generada desde un equipo perteneciente a la red.

* Realizar un método en Python3.6 o superior que reciba como entrada el nombre de un servicio,
la version y el tipo (Docker ó AMI) y en su lógica realice la construcción de una imagen de Docker cuyo nombre deberá ser **service_name:version** y deberá ser publicada en el **registry** local creado en el punto anterior.

* Realizar una integración con GitHub para que al momento de realizar un **merge** a la rama
**develop**, se inicie la construcción de un artefacto tipo Docker a partir del Dockerfile y las fuentes del repositorio. Idee una estrategia para el envío del nombre de servicio y la versión a través del **webhook** de GitHub. La imagen generada deberá ser publicada en el **registry** local creado.

* Si la construcción es exitosa/fallida debera actualizarse un **badge** que contenga la palabra build y la versión del artefacto creado mas recientemente (opcional).

* En lugar de una máquina virtual de CentOS7 para alojar el CI server,  emplear la imagen de Docker de Docker hub para el ejecución de la API (webhook listener) y la generación del artefacto: https://hub.Docker.com/_/Docker/ (opcional).

![][1]
**Figura 1**. Diagrama de Entrega Continua

### Actividades
1. Documento README.md en formato markdown:  
  * Formato markdown (5%)
  * Nombre y código del estudiante (5%)
  * Ortografía y redacción (5%)
2. Documentación del procedimiento para el montaje del registry (10%). Evidencias del funcionamiento (5%).
3. Documentación e implementación del método para la generación del artefacto. Incluya el código fuente en el informe. Incluya comentarios en el código donde explique cada paso realizado (20%). Evidencias del funcionamiento (5%).
4. Documentación e integración de un repositorio de GitHub junto con la generación del artefacto tipo Docker (20%). Evidencias del funcionamiento (5%).
5. El informe debe publicarse en un repositorio de github el cual debe ser un fork de https://github.com/ICESI-Training/sd2018b-exam2 y para la entrega deberá hacer un Pull Request (PR) al upstream (10%). Tenga en cuenta que el repositorio debe contener todos los archivos necesarios para el aprovisionamiento
7. Documente algunos de los problemas encontrados y las acciones efectuadas para su solución al aprovisionar la infraestructura y aplicaciones (10%)

### Referencias
* https://hub.docker.com/_/registry/
* https://hub.docker.com/_/docker/
* https://docker-py.readthedocs.io/en/stable/index.html
* https://developer.github.com/v3/guides/building-a-ci-server/
* http://flask.pocoo.org/
* https://connexion.readthedocs.io/en/latest/

[1]: images/01_diagrama_delivery.png
