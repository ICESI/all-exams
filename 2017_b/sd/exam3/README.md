### Examen 3
**Universidad ICESI**  
**Curso:** Sistemas Distribuidos  
**Docente:** Daniel Barragán C.  
**Tema:** Descubrimiento de servicios
**Correo:** daniel.barragan at correo.icesi.edu.co

### Objetivos
* Realizar de forma autónoma el aprovisionamiento automático de infraestructura
* Diagnosticar y ejecutar de forma autónoma las acciones necesarias para lograr infraestructuras estables

### Prerrequisitos
* Docker
* Docker-Compose
* Contenedores: consul, consul-template, registrator, load balancer (nginx, haproxy)

### Descripción
Deberá realizar el aprovisionamiento de un ambiente compuesto por los siguientes elementos:
un servidor web con capacidad de escalar a N instancias (puede	emplear	apache+php o crear	un servicio web con el	lenguaje de su preferencia), un balanceador de carga para redireccionar las peticiones a los servidores web.

Tenga en cuenta:
* Para el aprovisionamiento deberá usar docker-compose
* Emplear una herramienta de descubrimiento de servicio (zookeper, consul, etcd) que permita
registrar automáticamente las nuevas instancias de servidores web. Las tecnologías de descubrimiento de servicio se componen de agentes y un servidor ó clúster de servidores. Los
agentes envían información al clúster acerca de los servicios que se ejecutan en las instancias. El servidor registran los servicios que son anunciados por los agentes para ser consultados por los clientes ú otros servicios
* Para evitar ejecutar mas de un servicio por contenedor (agente de consul y servicio web) emplee la aplicación dockerizada registrator (ó una tecnología similar) para registrar los nuevos contenedores ante el servidor de descubrimiento de servicio
* Para actualizar la configuración de los archivos de configuración del balanceador de carga y reiniciar el servicio emplee la aplicación consul-template. Consul-template consulta al servidor de consul el estado de los servicios y ante un cambio en ellos, a partir de plantillas, crea nuevamente los archivos de configuración.

### Actividades
1. Documento en formato PDF:  
  * Formato PDF (5%)
  * Nombre y código de los integrantes del grupo (5%)
  * Ortografía y redacción (5%)
2. Consigne los comandos de linux necesarios para el aprovisionamiento de los servicios solicitados. En este punto no debe incluir archivos tipo Dockerfile solo se requiere que usted identifique los comandos o acciones que debe automatizar (15%)
3. Escriba los archivos Dockerfile para cada uno de los servicios solicitados junto con los archivos fuente necesarios. Tenga en cuenta consultar buenas prácticas para la elaboración de archivos Dockerfile. (20%)
4. Escriba el archivo docker-compose.yml necesario para el despliegue de la infraestructura (10%). No emplee configuraciones deprecated. Incluya un diagrama general de los componentes empleados.
5. El informe debe publicarse en un repositorio de github el cual debe ser un fork de https://github.com/ICESI-Training/sd-exam3 y para la entrega deberá hacer un Pull Request (PR) respetando la estructura definida. El código fuente y la url de github deben incluirse en el informe (15%). Tenga en cuenta publicar los archivos para el aprovisionamiento
6. Incluya evidencias que muestran el funcionamiento de lo solicitado (15%)
7. Documente algunos de los problemas encontrados y las acciones efectuadas para su solución al aprovisionar la infraestructura y aplicaciones (10%)

### Referencias
https://livewyer.io/blog/2015/02/05/service-discovery-docker-containers-using-consul-and-registrator/  
https://picodotdev.github.io/blog-bitix/2017/01/registro-y-descubrimiento-de-servicios-con-spring-cloud-y-consul/
