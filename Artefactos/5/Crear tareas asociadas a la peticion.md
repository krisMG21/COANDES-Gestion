# Artefacto 5
### Crear tareas asociadas a la petición

PRECONDICIONES:
- El usuario debe de haber iniciado sesion como técnico
- El tecnico debe de haber solicitado al sistema la lista de elementos dependientes a la lista de elementos inicial.


POSTCONDICIONES:
- Se crea una lista de tareas, cada una con sus datos y personas a cargo.

ESCENARIO PRINCIPAL:

1. El tecnico pulsa el boton de la interfaz para accceder a su buzon de peticiones
2. El sistema le muestra el buzon de peticiones
3. El tecnico selecciona la peticion que desea añadir tareas
4. El sistema le muestra la informacion relativa a la peticion
5. El tecnico pulsa el boton de la interfaz que le muestra todos los elementos realtivos a la peticion
6. El sistema le muestra una lista de todos los elementos realivos a la tarea.
7. El tecnico selecciona un elemento y pulsa añadir tarea
8. El sistema le muestra una ventana donde introducir los datos relativos a la tarea.
9. El tecnico introduce los datos relativos a la tarea y pulsa aceptar.
10. El sistema le confirma su accion.
11. El tecnico pulsa el boton para confirmar los cambios sobre la peticion.
12. El sistema le confima su acción.

ESCENARIOS ALTERNATIVOS:

Si en el paso 11, se decide crear otra tarea entonces se vuelve al paso 9.

Si entre los pasos 7 y 11 se decide cancelar la accion, el tecnico pulsara el boton de cancelar y el sistema le confirma que se han desecho los cambios.
