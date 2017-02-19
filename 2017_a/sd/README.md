### Examen 1
**Universidad ICESI**  
**Curso:** Sistemas Distribuidos  
**Docente:** Daniel Barragán C.  
**Tema:** Automatización de infraestructura  
**Correo:** daniel.barragan at correo.icesi.edu.co

### Objetivos
* Realizar de forma autónoma el aprovisionamiento automático de infraestructura
* Diagnosticar y ejecutar de forma autónoma las acciones necesarias para lograr infraestructuras estables
* Integrar servicios ejecutandose en nodos distintos

### Prerrequisitos
* Vagrant
* Box del sistema operativo CentOS 6.5 o superior

### Nota Importante
El parcial debe realizarse de forma individual, en caso de encontrar copia a otros compañeros se anulará su examen. Podrá usar cualquier material de clase o realizar consultas en Internet. Una vez termine correctamente la parte práctica se le pedirá que realice la respectiva sustentación de su solución, esta sustentación tendrá un factor de 0 a 1 sobre el valor del punto.

### Descripción
Deberá	realizar	el	aprovisionamiento	de	un	ambiente	compuesto	por	los	siguientes	elementos:	un servidor	encargado de	realizar balanceo de	carga,	dos	servidores	web	(puede	emplear	apache+php o crear	un servicio web con el	lenguaje de su preferencia) y un servidor de base de datos (postgresql o mysql). Se	debe probar	el	funcionamiento	del balanceador	a través	de	una	aplicación	web	que realice	 consultas	 a	 la	 base	 de	 datos	 a	 través	 de	 los servidores	 web (mostrar visualmente cual	servidor web atiende la	petición)

![][1]

Se provee un cookbook de ejemplo para la instalación de postgresqsl en el directorio de nombre **material** sin garantía de funcionamiento. Puede usarlo como guía sin embargo deberá construir el suyo propio.

### Actividades
En un documento en formato PDF cuyo nombre de
archivo debe ser examen1_codigoestudiante.pdf debe incluir lo siguiente:

1. Documento en formato PDF:  
  * Formato PDF (5%)
  * Nombre y código de los integrantes del grupo (5%)
  * Ortografía y redacción (5%)
2. Consigne los comandos de linux necesarios para el aprovisionamiento de los servicios solicitados. En este punto no debe incluir recetas solo se requiere que usted identifique los comandos o acciones que debe automatizar (15%)
3. Escriba el archivo Vagrantfile para realizar el aprovisionamiento, teniendo en cuenta definir:
maquinas a aprovisionar, interfaces solo anfitrión, interfaces tipo puente, declaración de cookbooks, variables necesarias para plantillas (10%)
4. Escriba los cookbooks necesarios para realizar la instalación de los servicios solicitados (20%)
5. Publicar en un repositorio de github los archivos para el aprovisionamiento junto con un archivo de extensión .md donde explique brevemente como realizar el aprovisionamiento (15%)
6. Incluya evidencias que muestran el funcionamiento de lo solicitado (15%)
7. Documente algunos de los problemas encontrados y las acciones efectuadas para su solución al aprovisionar la infraestructura y aplicaciones (10%)

### Referencias
* https://docs.chef.io/

[1]: images/01_diagrama_despliegue.png
