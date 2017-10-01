### Examen 2
**Universidad ICESI**  
**Curso:** Sistemas Operativos  
**Docente:** Daniel Barragán C.  
**Tema:** Procesos, Microservicios  
**Correo:** daniel.barragan at correo.icesi.edu.co

### Objetivos
* Diagnosticar fallas en servicios(procesos) a través de su monitoreo
* Diseñar e implementar servicios para la gestión de infraestructura

### Prerrequisitos
* Virtualbox o WMWare
* Máquina virtual con sistema operativo CentOS7

### Descripción
El segundo parcial del curso sistemas operativos trata sobre el diseño e implementación de microservicios para la gestion de tareas de infraestructura

Cree un usuario de nombre check_user. Las acciones descritas en el contrato a continuación se deben realizar como el usuario check_user.

Implemente un proceso que se ejecute en background, el cual debe consultar y almacenar en una base de datos sqlite los siguientes valores (checks): consumo de memoria RAM, consumo de CPU, espacio disponible en disco, estado de un servicio de su elección (httpd, sshd, etc). El proceso debe consultar los valores cada 60 segundos. Los valores almacenados en la base de datos deben tener una rotación al alcanzar los 100 registros.  

Tenga en cuenta almacenar en una tabla de la base de datos sqlite los nombres de los checks (cpu, memory, disk, httpd).

Descripción de las URIs (check de cpu)

|   |POST   |GET   |PUT   |DELETE   |
|---|---|---|---|---|
| /checks  | No aplica  | Obtener listado de checks  | No aplica | No aplica |
| /checks/cpu/history?size=0  | No aplica  | Retorna las ultimas mediciones indicadas por size | No aplica | No aplica  |

Descripción de los formatos de envío de las solicitudes (check de cpu)

|   |POST   |GET   |PUT   |DELETE   |
|---|---|---|---|---|
| /checks  | No aplica  | No aplica  | No aplica  | No aplica  |
| /checks/cpu/history?size=0 | No aplica  | No aplica  | No aplica  | No aplica  |

Descripción de los formatos de respuesta de las solicitudes (check de cpu)

|   |POST   |GET   |PUT   |DELETE   |
|---|---|---|---|---|
| /checks  | HTTP 404 NOT FOUND | JSON o YML | HTTP 404 NOT FOUND | HTTP 404 NOT FOUND |
| /checks/cpu/history?size=0 | HTTP 404 NOT FOUND | JSON o YML | HTTP 404 NOT FOUND | HTTP 404 NOT FOUND |

Descripción del formato de intercambio de datos (JSON) para **/checks**

```json
{
  "checks": [
    "cpu",
    "memory",
    "disk",
    "httpd"
  ]
}
```

Descripción del formato de intercambio de datos (JSON) para **/checks/cpu/history?size=5**

```json
{
  "data": [
    "90%",
    "89%",
    "89%",
    "89%",
    "89%"
  ]
}
```

### Actividades
1. Incluir nombre, código (5%).
2. Ortografía y redacción cuando sea necesario (5%).
3. Código fuente del proceso en background que captura y almacena los valores de como mínimo un check en una base de datos sqlite (30%).
4. Código fuente de la implementación de la API de como mínimo un check y documentación con swagger (30%)
5. Pruebas de la solución a través de capturas de pantalla. Puede emplear si lo desea una herramienta de captura de pantalla a formato .gif (20%)
6. El informe debe ser entregado en formato pdf a través del moodle y el informe en formato README.md debe ser subido a un repositorio de github. El repositorio de github debe ser un fork de https://github.com/ICESI-Training/so-exam2 y para la entrega deberá hacer un Pull Request (PR) respetando la estructura definida. El código fuente y la url de github deben incluirse en el informe (10%).   

### Referencias
* http://brunorocha.org/python/flask/flasgger-api-playground-with-flask-and-swagger-ui.html
