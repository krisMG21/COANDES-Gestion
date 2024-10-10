# Requisitos funcionales

- **Gestión de empresas clientes:**
  - **RF(01)** El responsable comercial de COANDES puede atender a las empresas clientes, creando, modificando y verificando sus datos.

- **Gestión de proyectos:**
  - **RF(02)** El responsable técnico podrá crear y gestionar los proyectos, introduciendo datos como el precio, fechas, tiempo estimado de trabajo y aplicaciones involucradas, y podrá agrupar destinitas aplicaciones en un mismo proyecto.

- **Gestión de elementos y aplicaciones software:**
  - **RF(03)** El responsable técnico gestionará las aplicaciones de los clientes y sus elementos de software, incluyendo acciones como: la creación, modificación y eliminación de programas, datos y documentos asociados.

- **Carga y procesamiento de los archivos XML:**
  - **RF(04)** El comercial almacena los ficheros desde el correo electrónico y 
avisa al responsable del proyecto que se encargará de cargarlos en el sistema. La carga genera 
siempre un fichero log con el resultado del proceso (éxito o lista de errores).

- **Gestión de peticiones de mantenimiento:**
  - **RF(05)** Los usuarios de las aplicaciones pueden enviar peticiones de reparación correctiva, mientras que el responsable de cada aplicación podrá hacer también peticiones adaptativas, perfectivas y evolutivas.

- **Asignación de responsable para la petición:**
  - **RF(06)** El responsable asignado al proyecto se encargará de las peticiones recibidas, indicando su prioridad, tipo, complejidad, y le asigna un responsable para resolverla.

- **Seguimiento del estado de las peticiones:**
  - **RF(07)** Los usuarios responsables de cada aplicación podrán consultar el estado de las peticiones realizadas sobre dicha aplicación, mientras que cada usuario normal podrá ver, modificar o eliminar sus propias peticiones con el estado “recibidas”.

- **Gestión de tareas:**
  - **RF(08)** El responsable de la petición podrá crear tareas asociadas a dicha petición, definiendo un plazo de realización, asignando personas para su realización, y gestionando elementos dependientes.

- **Gestión del personal de COANDES:**
  - **RF(09)** El departamento de personal podrá gestionar/visualizar los datos de los empleados de COANDES, incluyendo su información personal y categoría laboral.

- **Generación de informes estadísticos:**
  - **RF(10)** Los jefes de los departamentos técnico y comercial tendrán la posibilidad de generar y consultar los informes sobre el esfuerzo dedicado a los proyectos, aplicaciones, peticiones y tareas así como la rentabilidad obtenida por cada proyecto.

- **Control de acceso a la información:**
  - **RF(11)** Los responsables de proyectos podrán consultar la información sobre sus propios proyectos, y los responsables de las peticiones podrán acceder únicamente a la información de sus propias peticiones.

- **Envío y consulta de informes en PDF:**
  - **RF(12)** Los jefes de los departamentos técnico y comercial recibirán automáticamente informes de carga mensual de recursos en formato PDF, y podrán consultarlos online en cualquier momento.

- **Funciones críticas:**
  - **RF(13)** Los responsables técnicos podrán realizar acciones críticas como la carga de ficheros XML, borrar usuarios cliente, modificar elementos de software y generar tareas asociadas a las peticiones.
 
- **Funciones automatizadas:**
  - **RF(14)** El sistema cada día actualizará la lista de peticiones (no urgentes) automáticamente y se enviará al responsable del proyecto.

- **Decisión sobre las peticiones:**
  - **RF(15)** El responsable de la petición tiene la posibilidad de rechazar o aceptar una petición.

- **Detalles de la petición:**
  - **RF(16) Depende de Req(15)** En caso de que la petición sea acpetada, se le asigna una fecha de inicio de ejecución y se le cambiará el estado a pendiente, una vez iniciada la ejecución, pasará a estado en desarrollo, y el usuario responsable de la aplicación la acepte y pase a terminada.

- **Generación de lista de elementos:**
  - **RF(17)** El sistema generará una lista de elementos que tiene alguna relación de dependencia con los elementos de la lista inicial a petición del responsable
 
- **Asignación de tareas:**
  - **RF(18)** Responsable de la petición asigna tareas a una o varias personas para llevarla a cabo .
