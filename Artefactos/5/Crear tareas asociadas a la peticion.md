# Artefacto 5
### Crear tareas asociadas a la petición

PRECONDICIONES:
- El usuario debe de haber iniciado sesion como técnico
- El tecnico debe de haber solicitado al sistema la lista de elementos dependientes a la lista de elementos inicial.
- El técnico debe de encontrarse en la pestaña de consultas de todas las peticiones que posee. Esta funcionalidad se puede comprobar en el caso de uso CU33 - Consultar informacion sobre petición
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
| 1. Selecciona la peticion en desarrollo que desea añadir tareas.           | 2.	Muestra la lista de elementos de la petición.    |
| 3. Selecciona el elemento sobre el que se desea añadir la tarea.        | 4. Muestra un formulario donde introducir los datos de la tarea y asociar un técnico a ella.        |
| 5. Introduce los datos de la tarea y selecciona un técnico.       | 6. Verifica los datos y pide confirmación.  |
| 7. Confirma.   | 8. Crea la tarea y sus relaciones con petición, elemento y técnico  |
| | 9. Pregunta si desea añadir otra tarea al elemento.|
| 10. Responde 'no'.| 11. Pregunta si desea añadir otra tarea sobre otro elemento de la petición. |
| 12. Responde 'no' y termina el proceso. | | 


--- 

ESCENARIOS ALTERNATIVOS:

Si en el paso 6 el sistema encuentra fallos en los datos de entrada introducidos por el usuario, muestra un mensaje de error informando de los motivos y vuelve a al paso 5.

Si en el paso 7 se decide cancelar la accion, el sistema descartarña los cambios y termina el proceso.

Si en el paso 10 se decide crear otra tarea sobre el mismo elemento respondiendo 'si', entonces se vuelve al paso 5.

Si en el paso 12 se decide crear otra tarea sobre la misma petición respondiendo 'si', entonces se vuelve al paso 3.

