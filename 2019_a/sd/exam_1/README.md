### Examen 1
**Universidad ICESI**  
**Curso:** Sistemas Distribuidos  
**Docente:** Daniel Barragán C.  
**Tema:** Automatización de infraestructura  
**Correo:** daniel.barragan at correo.icesi.edu.co

### Objetivos
* Realizar de forma autónoma el aprovisionamiento automático de infraestructura
* Diagnosticar y ejecutar de forma autónoma las acciones necesarias para lograr infraestructuras estables

### Tecnlogías sugeridas para el desarrollo del examen
* Vagrant
* Box del sistema operativo CentOS7
* Repositorio Github
* Ansible

### Descripción
Deberá desplegar una plataforma que cumpla con los siguientes requerimientos:

* Debe tener un repositorio de Github que corresponda a un fork del repositorio **sd2019a-exam1**.
* El repositorio debe tener un Vagrantfile que permita el despliegue de cuatro máquinas virtuales que cumpliran las siguientes funciones:
  * CentOS7 Load Balancer
  * CentOS7 Webserver 1
  * CentOS7 Webserver 2
  * CentOS7 Database
* El aprovisionamiento se deberá realizar empleando la herramienta Ansible de forma remota sobre las máquinas virtuales ya desplegadas con vagrant.
* El usuario desde la consola o navegador web realiza peticiones al balanceador **CentOS7 Load Balancer**
* El **CentOS7 Load Balancer** deberá redireccionar las peticiones entrantes hacia uno de los servidores web **CentOS7 Webserver 1** y **CentOS7 Webserver 2**. Incluir un mensaje que indique el servidor que responde la petición.
* Los servidores web deberán realizar peticiones para obtener información almacenada en la base de datos **CentOS7 Database**
* Solo existe un servidor de base de datos **CentOS7 Database**. Solo es necesario realizar consultas.
* Emplee tecnologías para frontend y backend diferentes a las empleadas en clase.

![][1]
**Figura 1**. Diagrama de Despliegue

### Opcional
* Se recomienda hacer la instalación de los paquetes necesarios a través de un mirror local. Puede asignar un dominio local en los nodos de la red propuesta editando el archivo /etc/hosts con una IP-Dominio personalizado.
* Se recomienda desplegar un servidor DHCP que asigne IPs automáticamente a los nodos de la red y emplear una herramienta de service discovery para actualizar dinámicamente la configuración del balanceador.

### Actividades
1. Documento README.md en formato markdown:  
  * Formato markdown (5%).
  * Nombre y código del estudiante (5%).
  * Ortografía y redacción (5%).
2. Documentación del procedimiento para el aprovisionamiento del balanceador (10%). Evidencias del funcionamiento (5%).
3. Documentación del procedimiento para el aprovisionamiento de los servidores web (10%). Evidencias del funcionamiento (5%).
4. Documentación del procedimiento para el aprovisionamiento de la base de datos (10%). Evidencias del funcionamiento (5%).
5. Documentación de las tareas de integración (10%). Evidencias de la integración (10%).
6. El informe debe publicarse en un repositorio de github el cual debe ser un fork de https://github.com/ICESI-Training/sd2019a-exam1 y para la entrega deberá hacer un Pull Request (PR) al upstream (10%). Tenga en cuenta que el repositorio debe contener todos los archivos necesarios para el aprovisionamiento.
7. Documente algunos de los problemas encontrados y las acciones efectuadas para su solución al aprovisionar la infraestructura y aplicaciones (10%).

### Referencias
* https://www.ansible.com/

[1]: images/01_diagrama_despliegue.png
