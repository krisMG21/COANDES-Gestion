# CASO DE USO: Modificar un elemento de software 
## Precondiciones: 
- El usuario está autenticado y tiene rol de responsable técnico de COANDES.
- El usuario está asignado a un proyecto al que pertenece alguna de las aplicaciones en las que está incluido el elemento a modificar. Esto esta comprobado en el caso de uso CU14 - Consultar elementos SW
- El elemento no está inactivo.

## Poscondiciones: 
- Se modifica la información del elemento (nombre y/o dirección de almacenamiento) en la base de datos.
- Se actualizan las relaciones de alta y/o baja entre:
	- Documento y Aplicación
	- Documento y Dato
	- Documento y Programa
	- Programa y Programa
	- Programa y Dato
- Se actualizan las relaciones de elementos con peticiones, reflejando las altas y/o bajas correspondientes.

## Escenario principal: 
| Actor         | Sistema                                                                 |
|---------------|-------------------------------------------------------------------------|
| 1. Selecciona la opción "Modificar Elemento de Software".   | 2. Muestra los datos actuales del elemento a modificar. |
| 3. Modifica el elemento y confirma los cambios. | 4. Pregunta al usuario si quiere cambiar la lista de dependencias.  |
| 5. Confirma que desea modificar la lista de dependencias. |6. .Verifica los datos, muestra las peticiones en desarrollo en las que el elemento está en la lista inicial y pregunta si quiere modificar dependencias . |
| 8. Modifica la lista de dependencias (añade, bajas). | 9. Busca las peticiones en desarrollo donde el elementoSW a modificar este en la lista inicial. |
| | 10. Para cada petición en desarrollo muestra una nueva lista inicial aplicando los cambios resultantes y la compara con la lista anterior |
| 11. Confirma los cambios de las listas iniciales.| 12. Muestra aquellas tareas que serán eliminadas y aquellas que no será posible debido a que no estan cerradas. |
| 13. Confirma las tareas que serán eliminadas. | 14. Para cada petición en desarrollo en las que el elemento está en la lista inicial, genera nueva lista de elementos relacionados con los cambios propuestos,compara con la anterior y genera una lista de elementos que deben desaparecer de los elementos de la petición, incluido el inicial.. |
| | 15. Busca tareas de los elementos a desaparecer para cada petición y muestran todos los elementos a desaparecer que tienen alguna tarea no cerrada con horas cargadas en cualquier petición, indica que no se puede eliminar la relación del elemento a modificar con esos elementos y se pide confirmación.. |
| | 16. Para los elementos que se pueden eliminar de la relación con el elemento a modificar: Elimina la relación con el elemento a modificar; Para cada petición del paso 12, elimina la relación con la petición; Para cada petición del paso 12, elimina las tareas no cerradas sin horas cargadas del elemento. |
| | 17. Para los elementos a añadir de la relación con el elemento a modificar: crea la relación y los añade en la lista de elementos relacionados de las peticiones no terminadas en las que está el elemento a modificar en la lista inicial. |
| | 18. Muestra la lista de las dependencias del elemento después de aplicar los cambios. |


## Escenarios excepcionales o alternativos
  ### - Escenario Alternativo 1: El usuario no confirma la modificación del elemento
- Si en el paso 3 el usuario no confirma que desea modificar el elemento:
    -  a) El sistema termina el caso de uso.
  ### - Escenario Alternativo 2: El usuario no confirma la modificación de las relaciones
- Si en el paso 5 el usuario no confirma proceder con los cambios en las peticiones en desarrollo:
    -  a) El sistema termina el caso de uso.
  ### - Escenario Alternativo 3: El usuario decide no continuar tras la advertencia
- Si en el paso 14 el usuario decide no continuar después de saber que no se pueden eliminar ciertas relaciones:
    -  a) El sistema termina el caso de uso.
  ### - Escenario Alternativo 4: Datos Ingresados No Válidos
- Si el sistema detecta datos no válidos el paso 3:
    -  a) Muestra un mensaje de error indicando los campos inválidos.
    -  b) Permite al usuario corregir los errores y vuelve al paso correspondiente.
