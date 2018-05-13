### Examen 3
**Universidad ICESI**  
**Curso:** Sistemas Operativos  
**Docente:** Daniel Barragán C.  
**Tema:** Comandos de Linux, python3, APIs, pruebas unitarias  
**Correo:** daniel.barragan at correo.icesi.edu.co

### Objetivos
* Conocer y emplear comandos de Linux para tareas específicas
* Realizar programas en python3 que obtenga información del sistema operativo
* Diseñar e implementar APIs REST para la integración con microservicios
* Implementar pruebas unitarias para la integración con mecanismos de integración continua

### Prerrequisitos
* Virtualbox o WMWare
* Máquina virtual con sistema operativo CentOS7
* Compilador de python3 y gestor de paquetes pip3

### Descripción
El tercer parcial del curso sistemas operativos trata sobre comandos de Linux, implementación
de programas en python3, diseño e implementación de APIs REST y pruebas unitarias.

### Actividades
1. Incluir nombre, código (5%)
2. Ortografía y redacción cuando sea necesario (5%)
3. Implementar un servicio web en Flask siguiendo la estructura definida en clase que cumpla las siguientes condiciones:
* Consumo de CPU (10%)
* Memoria RAM disponible (10%)
* Espacio disponible en disco (10%)
* Incluya capturas de pantalla como evidencia del funcionamiento del API usando la extensión Postman
4. Implemente las pruebas unitarias para los servicios empleando Fixtures y Mocks como se vio en clase:
* Pruebas unitarias del endpoint para consumo de CPU (10%)
* Pruebas unitarias del endpoint para memorida RAM disponible (10%)
* Espacio disponible en disco (10%)
* Incluya capturas de pantalla como evidencia del funcionamiento de las pruebas unitarias
5. Emplee un servicio de integracíon continua que haga uso de las pruebas unitarias desarrolladas
para validar sus commits
* Integración con github (10%)
* Explicación detallada de los archivos de configuración empleados para emplear el servicio de Integración continua y la ejecución de las pruebas unitarias (10%)
* Incluya capturas de pantalla como evidencia del funcionamiento del servicio de integración continua
6. El informe debe ser subido a un repositorio de github en formato README.md. El repositorio de github debe ser un fork de https://github.com/ICESI-Training/so-exam3 y para la entrega deberá hacer un Pull Request (PR) respetando la estructura definida. La url del repositorio de github debe incluirse en el informe (10%)  

### Nota
* Cada commit debe seguir las buenas prácticas indicadas en clase
* No se recibiran exámenes que no sean mezclados automáticamente por la herramienta icesi-gm-tool
* El examen es individual, cualquier copia anula el examen

### Referencias
* https://travis-ci.org/
* https://docs.pytest.org/en/latest/
* http://flask.pocoo.org/
* https://tox.readthedocs.io/en/latest/
