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
| 3. Selecciona la peticion en desarrollo que desea añadir tareas.           | 4.	Muestra la lista de elementos de la petición.    |
| 5. Selecciona el elemento sobre el que se desea añadir la tarea.        | 6. Muestra un formulario donde introducir los datos de la tarea y asociar un técnico a ella.        |
| 7. Introduce los datos de la tarea y selecciona un técnico.       | 8. Verifica los datos y pide confirmación.  |
| 9. Confirma.   | 10. Crea la tarea y sus relaciones con petición, elemento y técnico  |
| | 11. Pregunta si desea añadir otra tarea al elemento.|
| 12. Responde 'no'.| 13. Pregunta si desea añadir otra tarea sobre otro elemento de la petición. |
| 14. Responde 'no' y termina el proceso. | | 


--- 

ESCENARIOS ALTERNATIVOS:

Si en el paso 8 el sistema encuentra fallos en los datos de entrada introducidos por el usuario, muestra un mensaje de error informando de los motivos y vuelve a al paso 7.

Si en el paso 9 se decide cancelar la accion, el sistema descartarña los cambios y termina el proceso.

Si en el paso 12 se decide crear otra tarea sobre el mismo elemento respondiendo 'si', entonces se vuelve al paso 7.

Si en el paso 14 se decide crear otra tarea sobre la misma petición respondiendo 'si', entonces se vuelve al paso 5.

