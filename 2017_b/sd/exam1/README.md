### Examen 1
**Universidad ICESI**  
**Curso:** Sistemas Distribuidos  
**Docente:** Daniel Barragán C.  
**Tema:** Automatización de infraestructura (Vagrant+Chef)  
**Correo:** daniel.barragan at correo.icesi.edu.co

### Objetivos
* Realizar de forma autónoma el aprovisionamiento automático de infraestructura
* Diagnosticar y ejecutar de forma autónoma las acciones necesarias para lograr infraestructuras estables
* Integrar servicios ejecutándose en nodos distintos

### Prerrequisitos
* Vagrant
* Box del sistema operativo CentOS 6.5 o superior

### Nota Importante
El parcial debe realizarse de forma individual, en caso de encontrar copia a otros compañeros se anulará su examen. Podrá usar cualquier material de clase o realizar consultas en Internet. Una vez termine correctamente la parte práctica se le pedirá que realice la respectiva sustentación de su solución, esta sustentación tendrá un factor de 0 a 1 sobre el valor del punto.

### Descripción
El stack ELK es un paquete de tres herramientas open source de la empresa Elastic. Las herramientas son Elasticsearch, Logstash y Kibana. Estas tres herramientas son proyectos independientes pero pueden ser usadas en conjunto para desplegar un ambiente de monitoreo de
infraestructura.

Deberá	realizar	el	aprovisionamiento	de	un	ambiente	compuesto	por	los	siguientes	elementos: Un servidor encargado de almacenar logs por medio de la aplicación Elasticsearch, un servidor encargado de hacer la conversión de logs por medio de la aplicación Logstash, un servidor con la herramienta encargada de visualizar la información de los logs por medio de la aplicación Kibana, por último uno o varios servidores web ejecutando la aplicación filebeat para el envío de los logs al servidor con Logstash

![][1]

En el repositorio de github del curso se encuentran ejemplos de vagrant y chef los cuales pueden ser consultados para construir su solución.

### Actividades
En un documento en formato PDF cuyo nombre de
archivo debe ser examen1_codigoestudiante.pdf debe incluir lo siguiente:

1. Documento en formato PDF:  
  * Formato PDF (5%)
  * Nombre y código del estudiante (5%)
  * Ortografía y redacción (5%)
2. Consigne los comandos de Linux necesarios para el aprovisionamiento de los servicios solicitados. En este punto no debe incluir recetas solo se requiere que usted identifique los comandos o acciones que debe automatizar (15%)
3. Escriba el archivo Vagrantfile para realizar el aprovisionamiento, teniendo en cuenta definir:
maquinas a aprovisionar, interfaces solo anfitrión, interfaces tipo puente, declaración de cookbooks, variables necesarias para plantillas (10%)
4. Escriba los cookbooks necesarios para realizar la instalación de los servicios solicitados (20%)
5. El informe debe publicarse en un repositorio de github el cual debe ser un fork de https://github.com/ICESI-Training/sd-exam1 y para la entrega deberá hacer un Pull Request (PR) respetando la estructura definida. El código fuente y la url de github deben incluirse en el informe (15%). Tenga en cuenta publicar los archivos para el aprovisionamiento
6. Incluya evidencias que muestran el funcionamiento de lo solicitado (15%)
7. Documente algunos de los problemas encontrados y las acciones efectuadas para su solución al aprovisionar la infraestructura y aplicaciones (10%)

### Referencias
* https://docs.chef.io/
* http://developerlover.com/monitorizacion-logs-stack-elk-elasticsearch-logstash-kibana/  
* https://github.com/ICESI/so-monitoring
* https://www.draw.io

[1]: images/ELKStack.jpg
