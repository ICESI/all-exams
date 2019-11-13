#3er examen parcial sistemas distribuidos#

**Universidad ICESI**  
**Course:** Distributed systems  
**Teacher:** Juan M Álvarez Q.  
**Topic:** Microservices Architecture design  
**email:** juan.alvarez8 at correo.icesi.edu.co

### Description

For this exam you should redesing the application developed in midterm 2 into a REST-based microservices arquitecture with a frontend and a health check dashboard. your aplication must comply the following:

* Must have a github repository which is a fork of the **[sd-mdterm3](https://github.com/ICESI-Training/)** repository
* It is suggested to use mlab for data storage: mlab is a database as a service provider for mongo databases.
* The system must accept Http requests from cURL (you can use other REST clients like postman, insomnia or postwoman.
* The application must have an endpoint to insert data in the database.
* The application must have an endpoint to retrieve all the registers from a database collection or table.
* The design must have continous integration unit tests for all microservices.
* Microservices must be deployed on containers.
* Microservices must be orchestrated using docker-compose, docker-swarm or Kubernetes

## Actividades (EN español para evitar ambigüedades)
1. Documento README.md en formato markdown:  
  * Formato markdown (5%).
  * Nombre y código del estudiante (5%).
  * Ortografía y redacción (5%).
2. Documentación del procedimiento para el despliegue de los contenedores. (30%)
3. Archivos fuentes en el repositorio de la aplicación implementada (15%).
4. Documentación de las tareas para desplegar la aplicación (20%).
5. El informe debe publicarse en un repositorio de github el cual debe ser un fork de https://github.com/ICESI-Training/repoToBeDefined y para la entrega deberá hacer un Pull Request (PR) al upstream (10%). Tenga en cuenta que el repositorio debe contener todos los archivos necesarios para el despliegue.
6. Documente algunos de los problemas encontrados y las acciones efectuadas para su solución (10%).

