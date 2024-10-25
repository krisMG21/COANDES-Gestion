# CASO DE USO: Modificar un elemento de software 
## Precondiciones: 
- El usuario está autenticado y tiene rol de responsable técnico de COANDES.
- El elemento SW que se desea modificar ya existe en el sistema. (o más bien la aplicación ya que de la APP se sacan)
- Se ha ejecutado el caso de uso de Carga del fichero XML, que establece las dependencias entre elementos.
## Poscondiciones: 
- Se actualiza el nombre o la dirección de almacenamiento del elemento de Software en la base de datos, según la modificación realizada.
- Se actualizan las relaciones de dependencia con otros elementos:
  - En caso de eliminar una dependencia, se borra la relación de la base de datos.
  - Lo mismo pasa cuando se agrega una nueva dependencia, se crea una nueva relación en la base de datos.
- Si hay cambios en la lista inicial de elementos asociado a la petición, se actualiza la lista de tareas en la base de datos.
## Escenario principal: 
| Actor         | Sistema                                                                 |
|---------------|-------------------------------------------------------------------------|
| 1. El usuario selecciona la opción "Modificar Elemento de Software".   | 2. El sistema presenta una lista de elementos de software disponibles. |
| 3. El usuario selecciona el elemento deseado para modificar.            | 4. El sistema muestra los detalles actuales del elemento seleccionado (nombre, dirección de almacenamiento, dependencias). |
| 5. El usuario modifica los campos deseados (nombre y/o dirección).     | 6. El sistema valida los datos ingresados y verifica que no existan conflictos. |
| 7. El usuario ajusta las dependencias del elemento si es necesario.     | 8. El sistema actualiza las listas de elementos dependientes basándose en los cambios realizados. |
| 9. El usuario confirma los cambios realizados.                          | 10. El sistema guarda las modificaciones del elemento en la base de datos. |
|               | 11. El sistema actualiza las tareas relacionadas con el elemento modificado si es necesario. |
|               | 12. El sistema muestra un mensaje de confirmación indicando que los cambios se han guardado exitosamente. |

## Escenarios excepcionales o alternativos
  ### - Escenario Alternativo 1: Datos Ingresados No Válidos :
- Si el sistema detecta que los datos ingresados no son válidos:
     -  a) Muestra un mensaje de error indicando qué campos son inválidos.
     -  b) Permite al usuario corregir los errores y vuelve al paso 5 del escenario principal.
  ### Escenario Alternativo 2: Ciclo de Dependencias
- Si el cambio en las dependencias crea un ciclo:
    - a) Muestra un mensaje advirtiendo sobre el ciclo de dependencias.
    -  b) Solicita al usuario que revise y ajuste las dependencias.
    -  c) Regresa al paso 7 del escenario principal.
  ### Escenario Alternativo 3: Error al Guardar Cambios
- Si ocurre un error al intentar guardar los cambios:
    -  a) Muestra un mensaje informando que no se pudieron guardar los cambios.
    -  b) Registra el error en el log del sistema para futuras auditorías.
    -  c) Permite al usuario intentar guardar nuevamente o cancelar la operación, regresando al paso 9 del escenario principal.
