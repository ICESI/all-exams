### Examen 3
**Universidad ICESI**  
**Curso:** Sistemas Distribuidos  
**Docente:** Daniel Barragán C.  
**Tema:** Kubernetes/Microservicios  
**Correo:** daniel.barragan at correo.icesi.edu.co

### Objetivos
* Realizar de forma autónoma el aprovisionamiento automático de infraestructura
* Diagnosticar y ejecutar de forma autónoma las acciones necesarias para lograr infraestructuras estables
* Integrar servicios ejecutándose en nodos distintos

### Prerrequisitos
* Linux
* Docker

### Descripción
Desplegar una aplicación capaz de autoescalar automáticamente dependiendo de la carga en cuanto a memoria y CPU de los contenedores desplegados. Las instancias de la aplicación deben ser accedidas a través de un punto de entrada único y externo al cluster. El orquestador de contenedores empleado debe manejar la planificación de los contenedores, la red subyacente y la resolución de nombres de dominio. La infraestructura debe estar compuesta por un nodo maestro y tres nodos trabajadores.

### Actividades
* Desplegar un cluster de kubernetes y los componentes necesarios para cumplir los requerimientos (network,
metrics server)
* Configurar dos pods con aplicaciones de prueba en el lenguaje de su elección
* Configurar un Deployment para cada pod y asignar una cantidad de replicas de 10
* Configurar un Servicio para cada deployment como punto de entrada al interior del cluster a las aplicaciones de prueba
* Configurar un Ingress como punto de entrada externo al cluster. El ingress debe tener un CNAME de acceso único y dos paths que deberá direccionar a cada una de las aplicaciones creada.
* (Opcional) Escale las aplicaciones por medio de K8S HPA en lugar de tener réplicas fijas en el Deployment 

### Referencias
https://kubernetes.io/
