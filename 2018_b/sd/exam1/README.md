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
* Python3
* Librerias Python3: Flask, Connexion, Fabric
* Ngrok

### Descripción
Deberá desplegar una plataforma que cumpla con los siguientes requerimientos:

* Debe tener un repositorio de Github que corresponda a un fork del repositorio sd2018b-exam1
* El repositorio debe tener un Vagrantfile que permita el despliegue de tres máquinas virtuales con las siguientes características:
  * CentOS7 DHCP server
  * CentOS7 CI server
  * CentOS7 mirror server
  * CentOS7 client
* El CentOS7 DHCP server deberá entregar una dirección IP a las demas máquinas virtuales a través de una interfaz pública
* Deberá tener un listado de los paquetes a instalar en el CentOS7 mirror server en un archivo llamado packages.json en la raíz del repositorio
* Este listado debe ser usado para inyectar la lista de paquetes en el recurso de chef correspondiente encargado de hacer la descarga de los mismos. Al momento de ejecutar el comando vagrant up, el aprovisionamiento deberá usar el contenido del archivo packages.json para hacer la descarga de los paquetes a almacenar en el CentOS7 mirror server.
* Deberá realizar la configuración de un webhook en su repositorio de Github para que al momento de abrir un Pull Request a la rama master, se envie la información del repositorio a un endpoint en el CentOS7 CI server
* El CentOS7 CI server deberá contener una aplicación desarrollada en Flask o en algun framework de su preferencia (emplear arquitectura RESTful) con un endpoint para recibir la información desde Github
* El CentOS7 CI server realizará las siguientes tareas dentro de la lógica del endpoint:
 * El CentOS7 CI server deberá leer el archivo packages.json con el listado de los paquetes a descargar en el CentOS7 mirror server
 * El archivo packages.json deberá ser interpretado por el CentOS7 CI Server y de forma remota deberá ejecutar los comandos necesarios para hacer la actualización de los paquetes del CentOS7 mirror server
 * Si los comandos se ejecutan exitosamente se deberá colocar un mensaje de actualización existosa en el Pull Request, de lo contrario se deberá colocar un mensaje con la información del fallo
* Deberá realizar la comprobación en el CentOS7 client de que el paquete ha sido añadido exitosamente en el CentOS7 mirror server

![][1]

### Opcional
* Configurar un servidor DNS y registrar un subdominio para el CentOS7 mirror server
* Reservar una dirección IP en el CentOS7 DHCP server para el CentOS7 mirror server
* Si configura la direccion IP del servidor DNS correctamente en el CentOS7 client, no será necesario modificar el archivo /etc/hosts para obtener un ping exitoso al subdominio del CentOS7 mirror server

### Actividades
1. Documento README.md en formato markdown:  
  * Formato markdown (5%)
  * Nombre y código del estudiante (5%)
  * Ortografía y redacción (5%)
2. Consigne en el README.md los comandos de Linux necesarios para el aprovisionamiento de los servicios solicitados. En este punto no debe incluir recetas solo se requiere que usted identifique los comandos o acciones que debe automatizar con la respectiva explicación de los mismos (15%)
3. Escriba el archivo Vagrantfile para realizar el aprovisionamiento, teniendo en cuenta definir:
maquinas a aprovisionar, interfaces solo anfitrión, interfaces tipo puente, declaración de cookbooks (10%)
4. Escriba los cookbooks necesarios para realizar la instalación de los servicios solicitados (20%)
5. El informe debe publicarse en un repositorio de github el cual debe ser un fork de https://github.com/ICESI-Training/sd2018b-exam1 y para la entrega deberá hacer un Pull Request (PR) al upstream, para el examen NO cree un directorio con su código. El código fuente y la url de github deben incluirse en el informe (15%). Tenga en cuenta que el repositorio debe contener todos los archivos necesarios para el aprovisionamiento
6. Incluya evidencias que muestran el funcionamiento de lo solicitado (15%)
7. Documente algunos de los problemas encontrados y las acciones efectuadas para su solución al aprovisionar la infraestructura y aplicaciones (10%)

### Referencias
* https://docs.chef.io/  
* https://github.com/ICESI/ds-vagrant/tree/master/centos7/05_chef_load_balancer_example
* https://developer.github.com/v3/guides/building-a-ci-server/
* http://www.fabfile.org/
* http://flask.pocoo.org/
* https://connexion.readthedocs.io/en/latest/

[1]: images/01_diagrama_despliegue.png
