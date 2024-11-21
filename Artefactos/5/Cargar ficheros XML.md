# CASO DE USO: Consultar proyectos

## Precondiciones: 

- EL usuario debe tener el rol de técnico de COANDES

## Postcondiciones:
NADA

## Escenario principal

|         Actor                                                             |       Sistema                                                            |
|---------------------------------------------------------------------------|---------------------------------------------------------------------------|
| 1. Pulsa la pestaña para acceder a sus proyectos. | 2. El sistema muestra una lista de los proyectos de los que es responsable                     |

## Escenarios alternativos:
### Escenario Alternativo 1: dar de alta un proyecto.
  - Si tras el paso 2 se desea dar de alta un proyecto:
    - (3.) Extend>> CU6 - Crear proyecto
    
### Escenario Alternativo 2:  modificar  los datos de un proyecto.
  - Si tras el paso 2 se desea modificar los datos de un proyecto:
    - (3.) Extend>> CU7 - Modificar proyecto
    
### Escenario Alternativo 3: borrar los datos de un proyecto.
   - Si tras el paso 2 se desea borrar un usuario proyecto:
     - (3.) Extend>> CU8 - Borrar proyecto
     - 
### Escenario Alternativo 4: consultar apliaciones de un proyecto.
   - Si tras el paso 2 se desea consultar la informacion de las apliaciones de un protecto:
     - (3.) Extend>> CUX - Consultar aplicaciones
    


# CASO DE USO: Consultar aplicaciones

## Precondiciones: 

- EL usuario debe tener el rol de técnico de COANDES
- El técnico debe de ser responsable de algun proyecto

## Postcondiciones:
NADA

## Escenario principal

|         Actor                                                             |       Sistema                                                            |
|---------------------------------------------------------------------------|---------------------------------------------------------------------------|
| 1. Pulsa el boton "aplicaciones" de un proyecto. | 2. El sistema muestra una lista de las apliaciones del proyecto que es responsable                  |

## Escenarios alternativos:
### Escenario Alternativo 1: dar de alta una apliacion.
  - Si tras el paso 2 se desea dar de alta una apliacion:
    - (3.) Extend>> CUX - Crear aplicacion
    
### Escenario Alternativo 2:  modificar  los datos de una aplicacion.
  - Si tras el paso 2 se desea modificar los datos de un proyecto:
    - (3.) Extend>> CU7 - Modificar aplicacion
    
### Escenario Alternativo 3: borrar los datos de una aplicacion.
   - Si tras el paso 2 se desea borrar un usuario aplicacion:
     - (3.) Extend>> CU8 - Borrar aplicacion
     - 
### Escenario Alternativo 4: cargar fichero XML.
   - Si tras el paso 2 se desea cargar la informacion de un fichero XML:
     - (3.) Extend>> CU22 - Cargar fichero XML



# CASO DE USO : Cargar ficheros XML. 

## Precondiciones: 
- El usuario debe tener  el rol de Responsable Técnico de COANDES.
- El fichero XML debe estar en el correo electrónico tras haber sido recibido por el responsable comerical,
 y debe tener la estructura y los formatos requeridos para así ser procesados bien y no causar ningún problema.
- El proyecto (debe ser responsable del este) y la aplicación correspondiente ya existen en el sistema.

## Postcondiciones: 
- Los elementos de Software se han creado/actualizado en la base de datos.
- Las dependencias entre elementos se han establecido/actualizado en el sistema.
- Las relaciones entre elementos y aplicacion son creadas en la base de datos.
- Se crea un log con el resultado de la carga. En el caso de un error, estos se reflejan en el log de carga con
  descripciones detalladas de cada error, indicando los elementos o dependencias epecíficos que generaron el error.

## Escenario principal: 
Actor: responsable técnico
Sistema: Sistema de COANDES


|         Actor                                                             |       Sistema                                                            |
|---------------------------------------------------------------------------|---------------------------------------------------------------------------|
| 1. Selecciona la opción para cargar un fichero XML en una aplicacion. | 2. El sistema muestra una interfaz para seleccionar el fichero XML                     |
| 3. Selecciona el fichero XML. | 4. El sistema valida el formato del fichero XML.                       |
|                          | 5. El sistema procesa el contenido del fichero XML, creando o actualizando los elementos SW.                                              |
|                          | 6. El sistema establece/actualiza las dependencias entre los elementos.                     |
|                          | 7. El sistema genera un fichero log con el resultado del proceso .|
|                          | 8. El sistema muestra un mensaje de confirmación indicando la finalización de la carga y dando la opción para acceder al fichero log.                     |


## Escenarios alternativos: 
  ### Escenario alternativo 1: Formato de fichero XML incorrecto
- Si el sistema  detecta que el formato del fichero XML no es válido:
  -  1. Muestra un mensaje de error indicando que el formato del fichero es incorrecto.
  -  2. Salta a los pasos 7 y 8 del escenario principal.
  ### Escenario alternativo 2: Cancelar acción de la carga de fichero
- Si el autor cancela la acción
  - 1. Después del paso 3 del escenario principal pusla el botón puslar y finaliza. 

