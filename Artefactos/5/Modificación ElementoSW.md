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
| 13. Confirma las tareas que serán eliminadas. | 14. Elimina las tareas, las dependencias y las relaciones necesarias. |
|               | 15. Añade los nuevos elementos relacionados a la lista de dependencias del elemento modificado. |

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
