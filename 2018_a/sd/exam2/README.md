### Examen 2
**Universidad ICESI**  
**Curso:** Sistemas Distribuidos  
**Docente:** Daniel Barragán C.  
**Tema:** Automatización de infraestructura (Docker)  
**Correo:** daniel.barragan at correo.icesi.edu.co

### Objetivos
* Realizar de forma autónoma el aprovisionamiento automático de infraestructura
* Diagnosticar y ejecutar de forma autónoma las acciones necesarias para lograr infraestructuras estables
* Integrar servicios ejecutándose en nodos distintos

### Prerrequisitos
* Docker
* docker compose
* docker swam

### Descripción
Desplegar un ambiente compuesto por elasticsearch, kibana, fluentd y un servidor web apache o un servicio web de su elección. El servidor ó servicio web debe desplegar al menos 4 replicas y debe ser accedido a través de un punto único de balanceo de carga (consulte el manual de referencia de docker-compose 3 ó superior). Cada una de las replicas del servicio web debe estar limitada a un uso del 10% de cpu y 20Mb de memoria RAM. En el caso de usar el contenedor de servidor web deberá almacenar en elasticsearch los campos del log de apache en forma independiente (consulte el  manual de fluentd, parser-plugin).   

### Actividades
1. Documento en formato PDF:  
  * Formato PDF (5%)
  * Nombre y código de los integrantes del grupo (5%)
  * Ortografía y redacción (5%)
2. Consigne los comandos de linux necesarios para el aprovisionamiento de los servicios solicitados. En este punto no debe incluir archivos tipo Dockerfile solo se requiere que usted identifique los comandos o acciones que debe automatizar (15%)
3. Escriba los archivos Dockerfile necesarios junto con los archivos fuente necesarios. Tenga en cuenta consultar buenas prácticas para la elaboración de archivos Dockerfile. (20%)
4. Escriba el archivo docker-compose.yml necesario para el despliegue de la infraestructura (10%). Adicione comentarios en el archivo describiendo las configuraciones empleadas. No emplee configuraciones deprecated.
5. El informe debe publicarse en un repositorio de github el cual debe ser un fork de https://github.com/ICESI-Training/sd-exam2 y para la entrega deberá hacer un Pull Request (PR) respetando la estructura definida. El código fuente y la url de github deben incluirse en el informe (15%). Tenga en cuenta publicar los archivos para el aprovisionamiento
6. Incluya un diagrama de despliegue siguiendo la notación UML y evidencias que muestran el funcionamiento de lo solicitado (15%)
7. Documente algunos de los problemas encontrados y las acciones efectuadas para su solución al aprovisionar la infraestructura y aplicaciones (10%)

### Referencias
* https://www.draw.io
* https://docs.docker.com/
* https://docs.docker.com/compose/install/
* https://docs.docker.com/compose/compose-file/
* https://docs.docker.com/engine/swarm/stack-deploy/
* https://docs.docker.com/engine/reference/commandline/node_update/#add-label-metadata-to-a-node
* https://docs.docker.com/install/linux/docker-ce/centos/
* https://docs.docker.com/engine/reference/commandline/service_create/
* https://docs.docker.com/network/network-tutorial-overlay/
* http://www.littlebigextra.com/using-kibana-and-elasticsearch-for-log-analysis-with-fluentd-on-docker-swarm/

[1]: images/deployment.jpg
