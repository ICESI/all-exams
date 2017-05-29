### Examen 3
**Universidad ICESI**  
**Curso:** Sistemas Operativos  
**Docente:** Daniel Barragán C.  
**Tema:** Monitoreo de infraestructura y servicios  
**Correo:** daniel.barragan at correo.icesi.edu.co

### Objetivos
* Comprender las diferencias entre el monitoreo a nivel de infraestructura y a nivel de servicios
* Instalar y configurar tecnologías para el monitoreo de infraestructura y servicios
* Realizar consultas sobre datos y crear visualizaciones para la interpretación de información de monitoreo

### Prerrequisitos
* Virtualbox o WMWare
* Máquinas virtuales con sistema operativo CentOS7
* Cuenta en Slack y un canal propio para el envío de notificaciones

### Descripción
El tercer parcial del curso sistemas operativos trata sobre el monitoreo de infraestructura y servicios. Se trabajará sobre dos herramientas empleadas para el monitoreo de información: stack de sensu y stack de ELK.

### Actividades
1. Incluir nombre, código (5%).
2. Ortografía y redacción cuando sea necesario (5%).
3. Consignar las instrucciones comentadas para la instalación y configuración del stack de sensu (cliente, servidor, api, uchiwa dashboard y rabbitmq como bus de mensajería) (10%)
4. Evidencie la correcta instalación del stack de sensu por medio de la creación de un api rest de prueba y su check de sensu respectivo. Evidencie la generación de una alerta ante la caída del servicio. Para las evidencias emplee capturas de pantalla del dashboard de uchiwa (15%)
5. Realice la instalación y configuración de un plugin de sensu para el monitoreo de infraestructura (disco, memoria ram, procesador). Para las evidencias emplee capturas de pantalla del dashboard de uchiwa (15%)
6. Crear un handler en slack para el envío de una notificación en caso de ocurrir una caída del servicio de prueba creado en el ítem anterior. Consigne el código del handler y una captura de pantalla del funcionamiento (10%)
7. Consignar las instrucciones comentadas para la instalación y configuración del stack de ELK (elasticsearch, logstash, kibana, filebeat en el client) (10%)
8. Evidencie la correcta instalación del stack ELK a través de la selección y prueba de uno de los ejemplos del repositorio examples del usuario elastic. Para las evidencias emplee capturas de pantalla de kibana y agregue una breve explicación del conjunto de datos empleado (10%)
9. El informe debe ser entregado en formato pdf a través del moodle y el informe en formato README.md debe ser subido a un repositorio de github. El repositorio de github debe ser un fork de https://github.com/ICESI-Training/so-exam3 y para la entrega deberá hacer un Pull Request (PR) respetando la estructura definida. El código fuente y la url de github deben incluirse en el informe (20%).   

### Referencias
* https://github.com/sensu-plugins  
* https://github.com/elastic/examples
* https://www.slideshare.net/td-nttcom/fluentd-vs-logstash-for-openstack-log-management  
* http://zohararad.github.io/presentations/micro-services-monitoring/  
* https://logz.io/blog/logstash-grok/
