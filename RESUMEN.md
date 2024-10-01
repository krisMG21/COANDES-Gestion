# COANDES Gestión

## Resumen

La empresa COANDES necesita un sistema informático para
gestionar outsourcing para mantenimiento de software.

Se necesita llevar control de las empresas clientes y
los proyectos asociados y las aplicaciones que lo conformen.

El sistema debe controlar clientes, proyectos, aplicaciones,
peticiones de mantenimiento y asignación de tareas.

Existen una serie de puestos que pueden interactuar con el
sistema, unos requerimientos funcionales que deben cumplirse
y varios aspectos técnicos a destacar.

## Actores

### Clientes
  
* Resp. de Aplicación:
  * Realizar peticiones de mantenimiento (todos los tipos)
  * Aceptar peticiones terminadas
* Usuario:
  * Realizar peticiones de mantenimiento correctivo

### COANDES
  
* Resp. comercial:
  * Gestión de clientes, cada cliente tiene un responsable
  comercial asociado
  * Recepción y carga de ficheros XML de aplicaciones
* Resp. técnico:
  * Gestión del proyecto: Datos del proyecto, tiempo estimado
  y tiempo real diariamente
  * Carga de ficheros XML
  * Asignación de prioridades a peticiones
* Personal técnico:
  * Ejecución de tareas
  * Registro de horas trabajadas
* Jefes de Departamento (Personal, Técnico, Comercial):
  * Acceso a todos los datos de esfuerzo (C,T)
  * Carga mensual de recursos (P,T), pdf por correo o consulta online
  * Acceso a resultados económicos de los proyectos (C,T)

## Componentes

### Proyecto

Cada proyecto tiene asociado un **precio total**, una
**fecha de inicio** y una **fecha de finalización**, así como
el **tiempo estimado** y el **tiempo real** de realización.

Cada proyecto se compone de aplicaciones.

### Aplicación

Las aplicaciones se componen de elementos de software y pueden
ser utilizadas por varias aplicaciones.

Cada elemento de SW tiene una **dirección de almacenamiento**,
un **código de identificación** y el **tipo de elemento** que es.

Los elementos tienen dependencias entre sí:

* Un programa es llamado por / puede llamar a otros.
* Puede usar o no datos.
* Un dato se usa mínimo por un programa.
* Un documento puede referirse a programa, dato o aplicación.
* Puede haber varios documentos asociados a cada uno.

La información de los elementos de cada app se envían a través de ficheros XML:

* Lista de elementos: ELEM

```xml
ELEM <id><nombre><direccion>
