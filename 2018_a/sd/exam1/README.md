### Examen 1
**Universidad ICESI**  
**Curso:** Sistemas Distribuidos  
**Docente:** Daniel Barragán C.  
**Tema:** Automatización de infraestructura (Vagrant+Chef)  
**Correo:** daniel.barragan at correo.icesi.edu.co

### Objetivos
* Realizar de forma autónoma el aprovisionamiento automático de infraestructura
* Diagnosticar y ejecutar de forma autónoma las acciones necesarias para lograr infraestructuras estables
* Realizar el aprovisionamiento automático de un balanceador de carga

### Prerrequisitos
* Vagrant
* Box del sistema operativo CentOS7

### Descripción
Deberá	realizar	el	aprovisionamiento	de	un	ambiente	compuesto	por	los	siguientes	elementos:	un servidor	encargado de	realizar balanceo de	carga,	dos	servidores	web. Se	debe probar	el	funcionamiento	del balanceador	 mostrando visualmente cual servidor web atiende la	petición

![][1]

### Actividades
1. Documento en formato markdown:  
  * Formato markdown (5%)
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
* https://github.com/ICESI/ds-vagrant

[1]: images/01_diagrama_despliegue.png
