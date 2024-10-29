# CASO DE USO : Cargar ficheros XML. 

## Precondiciones: 
- El usuario debe tener  el rol de Responsable Técnico de COANDES.
- El fichero XML debe estar en el correo electrónico tras haber sido recibido por el responsable comerical,
 y debe tener la estructura y los formatos requeridos para así ser procesados bien y no causar ningún problema.
- El proyecto y la aplicación correspondiente ya existen en el sistema.

## Postcondiciones: 
- Los elementos de Software se han creado/actualizado en la base de datos.
- Las dependencias entre elementos se han establecido/actualizado en el sistema.
- Se crea un log con el resultado de la carga. En el caso de un error, estos se reflejan en el log de carga con
  descripciones detalladas de cada error, indicando los elementos o dependencias epecíficos que generaron el error.

## Escenario principal: 
Actor: responsable técnico
Sistema: Sistema de COANDES


|         Actor                                                             |       Sistema                                                            |
|---------------------------------------------------------------------------|---------------------------------------------------------------------------|
| 1. Selecciona la opción para cargar un fichero XML. | 2. El sistema muestra una interfaz para seleccionar el fichero XML y la aplicación asociada                     |
| 3. Selecciona el ficher XML y la aplicación correspondiente. | 4. El sistema valida el formato del fichero XML.                       |
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

