# CASO DE USO: Modificar un elemento de software 
## Precondiciones: 
- El usuario está autenticado y tiene rol de responsable técnico de COANDES.
- El usuario está asignado a un proyecto al que pertenece alguna de las aplicaciones en las que está incluido el elemento a modificar.
- El elemento está inactivo.

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
| 1. El usuario selecciona la opción "Modificar Elemento de Software".   | 2. El sistema verifica que el usuario está autenticado y tiene rol de responsable técnico de COANDES y que el usuario está asignado a un proyecto al que pertenece alguna de las aplicaciones en las que está incluido el elemento a modificar. Si no cumple con esas condiciones, muestra un mensaje de error y termina el caso de uso. |
|             | 3. El sistema muestra los datos actuales del elemento a modificar. |
| 4. El usuario confirma que desea modificar el elemento.     | 5. El sistema pregunta si el usuario desea cambiar la lista de elementos relacionados. |
| 6. El usuario decide si quiere modificar las relaciones.     | 7. El sistema busca las peticiones en desarrollo en las que el elemento a modificar está en la lista inicial y pide confirmación para proceder. |
| 8. El usuario confirma para continuar.                          | 9. El sistema muestra los elementos relacionados actuales. |
| 10. El usuario selecciona los elementos que desea dar de baja y añade nuevos elementos si es necesario.              | 11. El sistema genera una nueva lista de elementos relacionados para cada petición en desarrollo en las que esté el elemento a modificar en la lista inicial y compara con la lista anterior. |
|               | 12. El sistema identifica los elementos que deben ser eliminados, incluyendo el inicial si corresponde. |
|               | 13. Para cada petición en desarrollo afectada, el sistema busca las tareas de los elementos que deben eliminarse. |
|               | 14. El sistema muestra los elementos que tienen tareas no cerradas con horas cargadas y notifica que no se pueden eliminar esas relaciones. Pide confirmación para continuar. |
| 15. El usuario confirma para continuar con los cambios posibles.              | 16. El sistema elimina las relaciones de los elementos que se pueden eliminar y actualiza las peticiones y tareas correspondientes. |
|               | 17. El sistema añade los nuevos elementos relacionados en las peticiones no terminadas donde está el elemento a modificar en la lista inicial, si aún no están presentes. |
|               | 18. El sistema guarda todas las modificaciones en la base de datos. |
|               | 19. El sistema muestra un mensaje de confirmación indicando que los cambios se han guardado exitosamente. |

## Escenarios excepcionales o alternativos
  ### - Escenario Alternativo 1: El usuario no confirma la modificación del elemento
- Si en el paso 4 el usuario no confirma que desea modificar el elemento:
    -  a) El sistema termina el caso de uso.
  ### - Escenario Alternativo 2: El usuario no confirma la modificación de las relaciones
- Si en el paso 7 el usuario no confirma proceder con los cambios en las peticiones en desarrollo:
    -  a) El sistema termina el caso de uso.
  ### - Escenario Alternativo 3: El usuario decide no continuar tras la advertencia
- Si en el paso 14 el usuario decide no continuar después de saber que no se pueden eliminar ciertas relaciones:
    -  a) El sistema termina el caso de uso.
  ### - Escenario Alternativo 4: Datos Ingresados No Válidos
- Si el sistema detecta datos no válidos en cualquier paso:
    -  a) Muestra un mensaje de error indicando los campos inválidos.
    -  b) Permite al usuario corregir los errores y vuelve al paso correspondiente.
  ### - Escenario Alternativo 5: Error al Guardar Cambios
- Si ocurre un error al intentar guardar los cambios:
    -  a) Muestra un mensaje informando que no se pudieron guardar los cambios.
    -  b) Registra el error en el log del sistema para futuras auditorías.
    -  c) Permite al usuario intentar guardar nuevamente o cancelar la operación, regresando al paso 15 del escenario principal.
