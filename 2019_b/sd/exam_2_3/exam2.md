# Exam 2 

**Universidad ICESI**  
**Course:** Distributed systems  
**Teacher:** Juan M Álvarez Q.  
**Topic:** Microservices Architecture design  
**email:** juan.alvarez8 at correo.icesi.edu.co

### Learning goals
* Design a microservices architecture application

### Suggested technologies for the midterm development
* [Open API](https://openapi.tools/)
* github repository
* Flask and [connexion](https://connexion.readthedocs.io/en/latest/)
* Mongo db and [mlab](https://mlab.com/)
* [travis-ci](https://travis-ci.org/)

### Description

For this exam you should redesing the application developed in midterm 1 into a REST-based microservices arquitecture. your aplication must comply the following:

* Must have a github repository which is a fork of the **[sd-mdterm2](https://github.com/ICESI-Training/sd-midterm2)** repository
* It is suggested to use mlab for data storage: mlab is a database as a service provider for mongo databases.
* The system must accept Http requests from cURL (you can use other REST clients like postman, insomnia or postwoman.
* The application must have an endpoint to inser data in the database.
* The apllication mus have an endpoint to retrieve all the registers from a database collection or table.
* The design must have continous integration unit tests for all microservices.


### Actividades (EN español para evitar ambigüedades)
1. Documento README.md en formato markdown:  
  * Formato markdown (5%).
  * Nombre y código del estudiante (5%).
  * Ortografía y redacción (5%).
2. Documentación de la API de conformidad con el estándar [OpenAPI](https://github.com/OAI/OpenAPI-Specification). (15%)
3. Pruebas unitarias de cada microservicio ara el proceso de integración contínua (10%). Evidencia del código pasando dichas pruebas(5%).
4. Archivos fuentes en el repositorio de los microservicios implementados (15%).
5. Documentación de las tareas para desplegar los microservicios en una máquina local (10%). Evidencias del despliegue (peticiones cURL o similares)(10%).
6. El informe debe publicarse en un repositorio de github el cual debe ser un fork de https://github.com/ICESI-Training/sd-midterm2 y para la entrega deberá hacer un Pull Request (PR) al upstream (10%). Tenga en cuenta que el repositorio debe contener todos los archivos necesarios para el despliegue.
7. Documente algunos de los problemas encontrados y las acciones efectuadas para su solución (10%).


