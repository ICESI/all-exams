### Examen 3
**Universidad ICESI**  
**Curso:** Sistemas Distribuidos  
**Docente:** Daniel Barragán C.  
**Tema:** Instalación, configuración y empleo de sistemas de ficheros distribuidos con docker swarm  
**Correo:** daniel.barragan at correo.icesi.edu.co

### Objetivos
* Realizar de forma autónoma el aprovisionamiento automático de infraestructura
* Diagnosticar y ejecutar de forma autónoma las acciones necesarias para lograr infraestructuras estables
* Emplear un sistema de ficheros distribuido como volumen persistente en un cluster de docker swarm

### Prerrequisitos
* Docker
* Docker Swarm
* GlusterFs (Sistema de ficheros distribuidos)

### Descripción
Desplegar un ambiente compuesto por al menos tres nodos (un nodo maestro, dos nodos de trabajo). Los tres nodos deben ser parte de un cluster de glusterfs. Desplegar un cluster de docker swarm sobre los tres nodos aprovisionados. Demostrar que es posible desplegar un contenedor de postgres sobre el nodo de trabajo uno, realizar inserciones a la base de datos, destruir el contenedor, desplegarlo en el nodo de trabajo dos y finalmente realizar una consulta que recupere la información ingresada previamente.

Cada nodo de trabajo debe tener un disco extra de 5 Gigabytes para las configuraciones de glusterfs.
Puede emplear un archivo de docker compose o el comando docker service para la realización de las pruebas con postgres.

### Actividades
1. Documento en formato PDF:  
  * Formato PDF (5%)
  * Nombre y código de los integrantes del grupo (5%)
  * Ortografía y redacción (5%)
2. Documente y realice las siguientes tareas de aprovisionamiento:
  * Instalación y configuración del sistema de archivos distribuidos en los 3 nodos (15%)
  * Despliegue del cluster de docker swarm (10%)
  * Despliegue del servicio solicitado (20%)
3. El informe debe publicarse en un repositorio de github el cual debe ser un fork de https://github.com/ICESI-Training/sd-exam3 y para la entrega deberá hacer un Pull Request (PR) respetando la estructura definida. El código fuente y la url de github deben incluirse en el informe (15%). Tenga en cuenta publicar los archivos para el aprovisionamiento
4. Incluya evidencias que muestran el funcionamiento de lo solicitado (15%)
5. Documente algunos de los problemas encontrados y las acciones efectuadas para su solución al aprovisionar la infraestructura y aplicaciones (10%)

### Referencias
* http://embaby.com/blog/using-glusterfs-docker-swarm-cluster/
* http://ask.xmodulo.com/create-mount-xfs-file-system-linux.html
* https://www.cyberciti.biz/faq/linux-how-to-delete-a-partition-with-fdisk-command/
* https://everythingshouldbevirtual.com/virtualization/vagrant-adding-a-second-hard-drive/
