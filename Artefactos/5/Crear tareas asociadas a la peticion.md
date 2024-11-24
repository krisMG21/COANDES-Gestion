# Artefacto 5
### Crear tareas asociadas a la petición

PRECONDICIONES:
- El usuario debe de haber iniciado sesion como técnico
- El tecnico debe de haber solicitado al sistema la lista de elementos dependientes a la lista de elementos inicial.
- La petición debe de estar en estado en desarrollo.


POSTCONDICIONES:
- Se crea una lista de tareas, cada una con sus datos y personas a cargo.
- Se da de alta la tarea en la tabla tareas de la base de datos
- Se da de alta la tarea en la tabla tarea-petición de la base de datos
- Se da de alta la tarea en la tabla alta‐tarea‐técnicos de la base de datos
- Se da de alta la tarea en la tabla alta tarea‐elemento de la base de datos

ESCENARIO PRINCIPAL:

--- 
| Actor                                       | Sistema                                                                                           |
|---------------------------------------------|---------------------------------------------------------------------------------------------------|
| 1. Pulsa el boton de la interfaz para accceder a su buzon de peticiones. | 2.	Muestra el buzon de peticiones.   |
| 3. Selecciona la peticion que desea añadir tareas.           | 4.	Muestra la informacion relativa a la peticion.    |
| 5. Pulsa el boton de la interfaz que le muestra todos los elementos realtivos a la peticion.        | 6. Muestra una lista de todos los elementos relativos a la tarea.        |
| 7. Selecciona un elemento y pulsa añadir tarea.       | 8. Muestra una ventana donde introducir los datos relativos a la tarea.  |
| 9. Introduce los datos relativos a la tarea y pulsa aceptar.   | 10. Confima su acción        |


--- 

ESCENARIOS ALTERNATIVOS:

Si en el paso 11, se decide crear otra tarea entonces se vuelve al paso 9.

Si entre los pasos 7 y 9 se decide cancelar la accion, el tecnico pulsara el boton de cancelar y el sistema le confirma que se han desecho los cambios.
