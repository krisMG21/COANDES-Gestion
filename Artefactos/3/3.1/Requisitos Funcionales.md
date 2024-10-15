# Requisitos funcionales

- **Gestión de empresas clientes:**
  - **RF(01)** El responsable (del departamento) comercial de COANDES puede atender a las empresas clientes, creando, modificando y verificando sus datos.

- **Gestión de proyectos:**
  - **RF(02)** El responsable (del departamento) técnico podrá crear y gestionar los proyectos, introduciendo datos como el precio, fechas de inicio y fin, tiempo estimado de trabajo y las aplicaciones involucradas (que se pueden agrupar en un solo proyecto).

- **Gestión de elementos y aplicaciones software:**
  - **RF(03)** El responsable técnico gestionará los elementos de software dando a cada uno un código, identificacdor y nombre. El elemento debe de tener una dirección de almacenamiento conocida y un tipo (programa, dato o documentación).
  - **RF(04)** Al crear este un elemento software puede formar parte de una o varias aplicaciones.
  - **RF(05)** Existen dependencias entre elementos: un programa puede llamar y ser llamado por otros, un programa puedo o puede no utilizar datos, cuales pueden o no ser utilizados y los datos, programas y aplicaciones pueden ser asociados a uno o más documentos.
    
- **Carga y procesamiento de los archivos XML:**
  - **RF(06)** El comercial almacena los ficheros desde el correo electrónico. 
  - **RF(06.1)** El responsable del proyecto se encargará de cargar los ficheros XML en el sistema.
  - **RF(06.2)** El sistema genera un fichero log con el resultado del proceso (éxito o lista de errores). 
  - **RF(07)** Los responsables técnicos podrán realizar acciones críticas como la carga de ficheros XML, borrar usuarios cliente, modificar elementos de software y generar tareas asociadas a las peticiones.

- **Gestión de peticiones de mantenimiento:**
  - **RF(08)** Los usuarios de las aplicaciones pueden enviar peticiones de reparación correctiva, mientras que el responsable de cada aplicación podrá hacer también peticiones adaptativas, perfectivas y evolutivas.
 
- **Interfaz de peticiones:**
-   **RF(09)** Un usuario cliente puede hacer peticiones sobre su aplicación. Estas peticiones pueden ser marcadas como urgentes o no, aumentando un 20% su coste por hora.

- **Asignación de la petición:**
  - **RF(10)** El responsable asignado al proyecto se encargará de las peticiones recibidas, indicando su prioridad, tipo, complejidad, y le asigna un responsable para resolverla.
  - **RF(11)** El sistema cada día actualizará la lista de peticiones (no urgentes) automáticamente y se enviará al responsable del proyecto.
  - **RF(12)** El orden de las peticiones se puede modificar manualmente por el responsable del proyecto. En caso de hacerlo el sistema no ordenará esta petición al formar la lista.
  - **RF(13.1)** Una petición pasa a estado pendiente hasta otorgarla una fecha de inicio.
  - **RF(13.2)** Tras obtener la fecha de inicio, la peticion pasara a estar en desarrollo.
  - **RF(13.3)** Tras se aceptada la solucion de una peticion por el usuario responsable de la aplicacion, esta pasara a estar terminada.
  - **RF(14)** Una peticion se mantendrá en desarrollo hasta que el usuario responsable de la aplicacion decida que la peticion de mantenimiento se ha realizado correctamente, pudiendo aceptar o rechazar las soluciones propuestas por los tecnicos de coandes.

- **Tareas del responsable de las peticiones:**
  - **RF(16)** Sobre una petición se han de guardar el estado de la petición, la fecha de inicio esperada, la real y la de recepción.
  - **RF(17)** El tiempo estimado para una petición es introducida por el repsonsable COANDES de la petición.
  - **RF(18)** El responsable COANDES de la petición puede establecer una lista de elementos de la petición. Igualmente el sistema generará, a petición del responsable de la petición, una lista de elementos mediante las relaciones de dependencia.
  - **RF(19)** El responsable COANDES de la petición podrá crear tareas asociadas a uno o varios elementos concretos de dicha petición, definiendo un plazo de realización, asignando personas para su realización y un tipo predefinido.
  - **RF(20)** Los usuarios responsables de cada aplicación podrán consultar el estado de las peticiones realizadas sobre dicha aplicación, mientras que cada usuario normal podrá ver, modificar o eliminar sus propias peticiones con el estado “recibidas”.
  - **RF(21)** El responsable COANDES de la petición puede modificar la lista de elementos y de tarea en cualquier momento.
  
- **Gestión del personal de COANDES:**
  - **RF(22)** El departamento de personal podrá gestionar/visualizar los datos de los empleados de COANDES, incluyendo su información personal y categoría laboral.
  - **RF(23)** Cada usuario debe insertar el número de horas trabajado en cada proyecto cada día.
  - **RF(24)** El responsable de un proyecto debe ir insertando el número de horas trabajado por cada usuario de su proyeto cada día. Se comparará este al insertado por el usuario.

- **Generación de informes estadísticos:**
  - **RF(25)** Los jefes de los departamentos técnico y comercial tendrán la posibilidad de generar y consultar los informes sobre el esfuerzo dedicado a los proyectos, aplicaciones, peticiones y tareas así como la rentabilidad obtenida por cada proyecto.

- **Control de acceso a la información:**
  - **RF(26)** Los responsables de proyectos podrán consultar la información sobre sus propios proyectos, y los responsables de las peticiones podrán acceder únicamente a la información de sus propias peticiones.
  - **RF(27)** Aquellos del departamento técnico pueden ver los datos relacionados a una tarea en la que participen.
  - **RF(28)** Los jefes de los departamentos técnico y comercial recibirán automáticamente informes de carga mensual de recursos en formato PDF, y podrán consultarlos online en cualquier momento.

