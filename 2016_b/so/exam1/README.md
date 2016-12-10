### Examen 1
**Universidad ICESI**  
**Curso:** Sistemas Operativos  
**Docente:** Daniel Barragán C.  
**Tema:** Comandos de Linux, Servicios web con Python  
**Correo:** daniel.barragan at correo.icesi.edu.co

### Objetivos
* Emplear comandos de linux para la realización de tareas administrativas y obtener información del sistema operativo.
* Implementar y desplegar servicios web en un servidor.

### Prerrequisitos
* Sistema operativo CentOS 6.8 versión servidor  

### Descripción

Cree un usuario de nombre filesystem_user. Las acciones descritas en el contrato a continuación se deben realizar sobre el directorio del usuario **/home/filesystem_user**.

Descripción de las URIs

|   |POST   |GET   |PUT   |DELETE   |
|---|---|---|---|---|
| /files  | Crear archivo  | Obtener listado de archivos  | No aplica | Elimina todos los archivos  |
| /files/recently_created  | No aplica  | Retorna los archivos que se crearon recientemente  | No aplica | No aplica  |

Descripción de los formatos de envío de las solicitudes

|   |POST   |GET   |PUT   |DELETE   |
|---|---|---|---|---|
| /files  | JSON  | No aplica  | No aplica  | No aplica  |
| /files/recently_created  | No aplica  | No aplica  | No aplica  | No aplica  |

Descripción de los formatos de respuesta de las solicitudes

|   |POST   |GET   |PUT   |DELETE   |
|---|---|---|---|---|
| /files  | HTTP 201 CREATED | JSON | HTTP 404 NOT FOUND | HTTP 200 OK |
| /files/recently_created  | HTTP 404 NOT FOUND | JSON  | HTTP 404 NOT FOUND | HTTP 404 NOT FOUND |

Descripción del formato de intercambio de datos (JSON)  

```json
{
  "filename": "carta",
  "content": "this is the file content"
}
```

```json
{
  "files": [
    "carta",
    "listado",
    "tareas",
    "recordatorio"
  ]
}
```

<!--
<p align="center">
  <img src="images/question_mark.jpeg" alt="Sublime's custom image"/>
</p> -->

### Actividades
1. Incluir nombre, código (5%).  
2. Realice la implementación del servicio web para la URI **/files** (20%).  
3. Realice la implementación del servicio web para la URI **/files/recently_created** (20%).  
4. Consigne los pasos necesarios para la ejecución y prueba de su solución. Tenga en cuenta incluir la creación del ambiente, activación, apertura de puertos, reinicio de servicios, entre otros (20%).  
5. Consigne capturas de pantalla de la solución usando la extensión postman (10%).  
6. Debe entregar un archivo README.md y su respectiva versión en pdf con el informe de su examen a través del enlace habilitado en moodle. El código fuente debe incluirse en el informe (10%).  
7. En el informe debe consignar la url del repositorio de github donde este ubicado el README.md y los archivos del código fuente de su solución (10%).  
8. Ortografía y redacción cuando sea necesario (5%).  

### Referencias 
https://atom.io/packages/markdown-pdf
