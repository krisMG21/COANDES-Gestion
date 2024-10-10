# COANDES Gestión

## Indice

* [Resumen](#resumen)
* [Actores](#actores)
* [Componentes](#componentes)
* [Principales objetos del sistema](#principales-objetos-del-sistema)
* [Requerimientos Funcionales](#requerimientos-funcionales)
* [Requerimientos No Funcionales](#requerimientos-no-funcionales)
* [Procesos del Sistema](#procesos-del-sistema)
* [Aspectos Técnicos](#aspectos-técnicos)
* [Consideraciones Adicionales](#consideraciones-adicionales)
* [Datos de la Empresa y Volumen de Trabajo](#datos-de-la-empresa-y-volumen-de-trabajo)
* [Infraestructura Actual](#infraestructura-actual)
* [Objetivos Estratégicos](#objetivos-estratégicos)

## Resumen

La empresa COANDES necesita un sistema informático para gestionar outsourcing para
mantenimiento de software. Se necesita llevar control de las empresas clientes y
los proyectos asociados y las aplicaciones que lo conformen.

El sistema debe controlar clientes, proyectos, aplicaciones, peticiones de
mantenimiento y asignación de tareas.

Existen una serie de puestos que pueden interactuar con el sistema, unos
requerimientos funcionales que deben cumplirse y varios aspectos técnicos a destacar.

El sistema también debe gestionar las peticiones de mantenimiento realizadas por
los usuarios de las aplicaciones. Estas peticiones pueden ser de diferentes tipos
y urgencias, y siguen un flujo de estados desde su recepción hasta su finalización.

Se requiere un control detallado de las tareas asociadas a cada petición, incluyendo
la asignación de personal, estimación de tiempo y registro de horas trabajadas.

El sistema debe proporcionar información estadística sobre el esfuerzo dedicado a
proyectos, aplicaciones y peticiones, así como la carga de trabajo del personal y
los resultados económicos de los proyectos.

## Actores

### Clientes

* **Resp. de Aplicación**:
  * Realizar peticiones de mantenimiento (todos los tipos)
  * Aceptar peticiones terminadas
* **Usuario**:
  * Realizar peticiones de mantenimiento correctivo

### COANDES

* **Resp. comercial**:
  * Gestión de clientes; cada cliente tiene un responsable comercial asignado
  * Recepción y almacenamiento de ficheros XML de aplicaciones
* **Resp. técnico**:
  * Gestión del proyecto: datos del proyecto, tiempo estimado y tiempo real diariamente
  * Carga de ficheros XML en el sistema
  * Asignación de prioridades y gestión de peticiones
* **Personal técnico**:
  * Ejecución de tareas asignadas
  * Registro diario de horas trabajadas en cada tarea
* **Jefes de Departamento (Personal, Técnico, Comercial)**:
  * Acceso a todos los datos de esfuerzo (Comercial, Técnico)
  * Carga mensual de recursos (Personal, Técnico), pdf por correo o consulta online
  * Acceso a resultados económicos de los proyectos (Comercial, Técnico)

## Componentes

### Proyecto

Cada proyecto tiene asociado un **precio total**, una **fecha de inicio** y una
**fecha de finalización**, así como el **tiempo estimado** y el **tiempo real**
de realización.

Cada proyecto se compone de aplicaciones y tiene un responsable técnico asignado.

### Aplicación

Las aplicaciones se componen de elementos de software y pueden ser utilizadas por
varias aplicaciones.

Cada aplicación tiene un **nombre**, está asociada a un **proyecto** y tiene un
**usuario responsable**.

Las aplicaciones se componen de elementos de software y tienen asociados usuarios
que pueden realizar peticiones.

### Elemento de Software

Cada elemento de software tiene una **dirección de almacenamiento**, un
**código de identificación**, un **nombre** y un **tipo** (programa, datos, documentación).

Los elementos tienen dependencias entre sí:

* Un programa es llamado por o puede llamar a otros programas.
* Un programa puede usar o no datos.
* Un dato puede ser usado por uno o varios programas.
* Un documento puede referirse a un programa, dato o aplicación.
* Puede haber varios documentos asociados a cada uno.

La información de los elementos de cada aplicación se envía a través de ficheros
XML:

* Lista de elementos: ELEM

  `<ELEM> <id></id> <nombre></nombre> <direccion></direccion> </ELEM>`

* Dependencias: DEP

  `<DEP> <id_elemento_origen></id_elemento_origen>
  <id_elemento_destino></id_elemento_destino> </DEP>`

Estos ficheros se cargan de forma manual desde el correo, cuya carga genera un
fichero `log` con el resultado del proceso.

## Principales objetos del sistema

### Usuario

* **Tipos**: Cliente (Responsable de Aplicación, Usuario normal), Personal COANDES
(Responsable comercial, Responsable técnico, Personal técnico, Jefes de Departamento)
* **Atributos**: Nombre, tipo de usuario, información de contacto (teléfono, email,
departamento)
* **Para personal COANDES**: categoría, coste por hora

### Cliente

* **Atributos**: Nombre de la empresa, responsable comercial asignado

### Proyecto

* **Atributos**: Cliente asociado, responsable técnico, precio total, fecha de
inicio, fecha de fin, tiempo estimado, tiempo real
* **Relaciones**: Aplicaciones asociadas

### Aplicación

* **Atributos**: Nombre, proyecto asociado, usuario responsable
* **Relaciones**: Elementos de software, usuarios

### Elemento de Software

* **Atributos**: ID, nombre, dirección de almacenamiento, tipo (programa, datos,
documentación)
* **Relaciones**: Dependencias con otros elementos

### Petición de Mantenimiento

* **Atributos**: Descripción, urgencia, tipo (correctivo, adaptativo, perfectivo,
evolutivo), prioridad, complejidad, estado, fechas (recepción, inicio de estudio,
inicio prevista de ejecución, inicio real de ejecución y aceptación)
* **Relaciones**: Aplicación asociada, usuario solicitante, responsable COANDES,
tareas asociadas

### Tarea

* **Atributos**: Fecha de inicio, fecha de fin, tipo (análisis, prueba unitaria,
codificación, etc.), elemento asociado
* **Relaciones**: Petición asociada, personal asignado

### Departamento

* **Tipos**: Personal, Técnico, Comercial
* **Atributos**: Nombre, jefe del departamento
* **Relaciones**: Personal asignado al departamento

### Informe Estadístico

* **Tipos**: Esfuerzo por proyecto/aplicación/petición; Carga mensual;
Resultados económicos
* **Atributos**: Tipo de informe; período; datos específicos según tipo

## Requerimientos Funcionales

### Gestión de Clientes

* Registrar y mantener información de los clientes
* Asignar responsables comerciales
* Gestionar información de contacto de los usuarios de las aplicaciones

### Gestión de Proyectos

* Registrar proyectos con sus datos clave
* Asignar responsables técnicos
* Asociar aplicaciones a proyectos
* Registrar tiempo estimado y real dedicado al proyecto

### Gestión de Aplicaciones

* Registrar y actualizar información de las aplicaciones
* Cargar elementos de software y dependencias mediante ficheros XML
* Gestionar manualmente elementos y dependencias
* Modificar elementos de software y actualizar tareas afectadas

### Gestión de Peticiones de Mantenimiento

* Permitir a usuarios realizar peticiones según su rol
* Registrar peticiones con detalles completos
* Gestionar el flujo de estados de las peticiones
* Asignar prioridades, tipos, complejidad y responsables
* Generar listas diarias de peticiones a tratar
* Permitir modificación manual del orden de atención de peticiones

### Gestión de Tareas

* Generar listas de elementos dependientes
* Crear y asignar tareas asociadas a peticiones
* Asignar personal y horas a tareas
* Registrar horas trabajadas en cada tarea

### Gestión de Personal

* Mantener datos de los empleados
* Gestionar categorías y costes por hora
* Asignar personal a tareas y proyectos
* Registrar horas trabajadas en proyectos y tareas

### Informes y Estadísticas

* Generar informes sobre esfuerzo y carga de trabajo
* Proporcionar información económica de los proyectos
* Permitir acceso a informes según el rol del usuario

### Seguridad y Acceso

* Autenticación de usuarios con usuario y contraseña
* Posibilidad de autenticación de dos factores
* Control de accesos y permisos según roles
* Elección de idioma al iniciar sesión o guardar preferencia

### Accesibilidad y Plataforma

* Acceso desde ordenadores y dispositivos móviles
* Interfaz adaptable a distintos tamaños de pantalla

## Requerimientos No Funcionales

* **Capacidad de Usuarios**: Soportar al menos 250 usuarios, escalable a 500 o 1000
* **Rendimiento**: Tiempos de respuesta razonables en todas las operaciones
* **Seguridad**: Garantizar la confidencialidad e integridad de los datos
* **Internacionalización**: Soporte para múltiples idiomas, configurable por usuario
* **Almacenamiento de Datos**: Centralizado y seguro, con sistemas de backup adecuados
* **Compatibilidad**: Funcionamiento en sistemas Windows y equipos actuales de la
empresa
* **Escalabilidad**: Preparado para el crecimiento y expansión internacional de la
empresa

## Procesos del Sistema

### Flujo de una Petición de Mantenimiento

1. **Recepción de la Petición**
   * El usuario realiza la petición a través del sistema, indicando descripción
   y urgencia
   * Si el tipo no es correctivo y el usuario no es el responsable de la aplicación,
   la petición se rechaza automáticamente

2. **Asignación Inicial**
   * El responsable COANDES asigna prioridad, tipo, complejidad y responsable a
   la petición
   * La petición pasa a estado "en estudio"

3. **Ordenación de Peticiones**
   * El sistema genera diariamente la lista de peticiones no urgentes a tratar
   * El responsable del proyecto puede modificar manualmente el orden

4. **Decisión**
   * Se decide si se rechaza o se acepta la petición
   * Si se acepta, se establece una fecha de inicio y la petición pasa a estado "pendiente"

5. **Desarrollo**
   * Al iniciar la ejecución, la petición pasa a estado "en desarrollo"
   * Se genera la lista de elementos dependientes y se crean las tareas asociadas
   * El personal técnico trabaja en las tareas y registra las horas

6. **Finalización**
   * El usuario responsable revisa y acepta la petición
   * La petición pasa a estado "terminada"

### Carga de Elementos de Software

* **Recepción de Ficheros XML**
  * El cliente envía los ficheros al responsable comercial
  * El responsable comercial almacena los ficheros y notifica al responsable técnico

* **Carga en el Sistema**
  * El responsable técnico carga los ficheros en el sistema
  * Se genera un fichero `log` con el resultado
  * Posteriormente, se pueden gestionar manualmente los elementos y dependencias

## Aspectos Técnicos

* **Arquitectura del Sistema**: Cliente*servidor, con acceso web para facilitar
el uso desde distintos dispositivos
* **Base de Datos**: Centralizada, reemplazando la actual base de datos Access
y ficheros Excel
* **Seguridad**: Implementación de protocolos seguros y control de acceso basado
en roles
* **Internacionalización**: Soporte multilingüe, adaptable según la preferencia
del usuario
* **Escalabilidad**: Diseño preparado para aumentar el número de usuarios y volumen
de datos
* **Backup y Recuperación**: Sistemas de respaldo y recuperación para garantizar
la continuidad
* **Integración**: Posibilidad de integración con sistemas de correo corporativo
y otros futuros
* **Mantenimiento**: Considerar que el mantenimiento puede ser externo; facilitar
su gestión

## Consideraciones Adicionales

* **Roles y Permisos**: Definición clara para garantizar accesos adecuados
* **Flujo de Trabajo Personalizable**: Flexibilidad para adaptarse a cambios en
procesos internos
* **Registro de Actividades**: Log de acciones para auditorías y seguimiento
* **Notificaciones**: Sistema para informar a usuarios sobre cambios y actualizaciones
* **Reporte de Carga Mensual**: Generación automática y envío a jefes de departamento
* **Análisis Financiero**: Herramientas para comparar costos y precios, facilitando
decisiones económicas

## Datos de la Empresa y Volumen de Trabajo

* **Empleados**: 250 (75% técnicos, 10% comercial, 10% RRHH, 5% otros)
* **Clientes**: 20 activos
* **Proyectos**: 260 en los últimos 6 años; 60 activos actualmente
* **Aplicaciones por Proyecto**: Aproximadamente 4
* **Elementos por Aplicación**: Alrededor de 500
* **Peticiones Mensuales por Proyecto**: 10
* **Tareas por Petición**: 15 de media

## Infraestructura Actual

* **Sistema Operativo**: Windows
* **Equipos**: Ordenadores personales con software ofimático
* **Red y Servidores**: La empresa cuenta con servidores capaces de albergar
aplicaciones
* **Almacenamiento de Datos**: Actualmente en una base de datos Access y ficheros
Excel centralizados en un único PC
* **Correo Corporativo**: Existente, utilizado para comunicación y recepción de
ficheros XML
* **Departamento de Informática**: No existe; el mantenimiento podría ser contratado
externamente

## Objetivos Estratégicos

* **Crecimiento**: Expansión nacional e internacional en los próximos 1*2 años
* **Adaptabilidad**: El sistema debe ser flexible para adaptarse a nuevas sedes y
contextos internacionales
* **Seguridad**: Implementar medidas de seguridad que actualmente no existen
* **Modernización**: Sustituir sistemas obsoletos (Access, Excel) por una solución
más robusta y escalable
