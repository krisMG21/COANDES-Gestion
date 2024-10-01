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
```

* Dependencias: DEP

```xml
DEP <id><id>
```

Estos ficheros se cargan de forma manual desde el correo, cuya carga
genera un fichero ```log``` con el resultado del proceso.

## Resumen (continuación)

El sistema también debe gestionar las peticiones de mantenimiento realizadas por los usuarios de las aplicaciones. Estas peticiones pueden ser de diferentes tipos y urgencias, y siguen un flujo de estados desde su recepción hasta su finalización.

Se requiere un control detallado de las tareas asociadas a cada petición, incluyendo la asignación de personal, estimación de tiempo y registro de horas trabajadas.

El sistema debe proporcionar información estadística sobre el esfuerzo dedicado a proyectos, aplicaciones y peticiones, así como la carga de trabajo del personal y los resultados económicos de los proyectos.

## Principales objetos del sistema

### Usuario
- Tipos: Cliente (Responsable de Aplicación, Usuario normal), Personal COANDES (Responsable comercial, Responsable técnico, Personal técnico, Jefes de Departamento)
- Atributos: Nombre, tipo de usuario, información de contacto (teléfono, email, departamento)
- Para personal COANDES: categoría, coste por hora

### Cliente
- Atributos: Nombre de la empresa, responsable comercial asignado

### Proyecto
- Atributos: Cliente asociado, responsable técnico, precio total, fecha de inicio, fecha de fin, tiempo estimado, tiempo real
- Relaciones: Aplicaciones asociadas

### Aplicación
- Atributos: Nombre, proyecto asociado, usuario responsable
- Relaciones: Elementos de software, usuarios

### Elemento de Software
- Atributos: ID, nombre, dirección de almacenamiento, tipo (programa, datos, documentación)
- Relaciones: Dependencias con otros elementos

### Petición de Mantenimiento
- Atributos: Descripción, urgencia, tipo (correctivo, adaptativo, perfectivo, evolutivo), prioridad, complejidad, estado, fechas (recepción, inicio estudio, inicio prevista ejecución, inicio real ejecución y aceptación)
- Relaciones: Aplicación asociada, usuario solicitante, responsable COANDES, tareas asociadas

### Tarea
- Atributos: Fecha inicio, fecha fin, tipo (análisis, prueba unitaria, codificación), elemento asociado
- Relaciones: Petición asociada, personal asignado

### Departamento
- Tipos: Personal, Técnico, Comercial
- Atributos: Nombre, jefe del departamento

### Informe Estadístico
- Tipos: Esfuerzo por proyecto/aplicación/petición; Carga mensual; Resultados económicos.
- Atributos: Tipo informe; período; datos específicos según tipo
