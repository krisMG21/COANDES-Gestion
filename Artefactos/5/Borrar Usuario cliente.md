# CASO DE USO: Borrar un usuario cliente. 

## Precondiciones: (he dado por hecho que el autor que podría hacer esta acción es del dpto. comercial, que según lo que dice el enunciado el departamento comercial es quien lleva la gestión de clientes).
- El usuario está autenticado y es responsable técnico de COANDES.
- El usuario cliente que desea eliminar existe en el sistema.

## Postcondiciones: 
- El usuario cliente queda eliminado de la base de datos.
- Se eliminan las aplicaciones para las que era responsable.

## Escenario Principal: 
--- 
| Actor                                       | Sistema                                                                                           |
|---------------------------------------------|---------------------------------------------------------------------------------------------------|
| 1. Solicita la eliminación de un usuario cliente específico. | 2.	Verifica si es responsable téncico.   |
| 4. Confirma la acción de eliminación.       | 3.	Pide una confirmación final para proceder con la eliminación.    |
|                                             | 5. Elimina el usuario de la base de datos.        |
|                                             | 6. Elimina las aplicaciones para las que el usuario eliminado era el responsable.  |


--- 
## Escenarios alternativos : 
### Escenario Alternativo 1: Búsqueda por ID de usuario.
  - Si el autor introduce un ID de usuario que no existe en el sistema.
      - 1) El sistema le muestra un mensaje de error indicando que el usuario con el ID especificado no existe en el sistema.
      - 2) Permite al actor volver al paso 1 del escenario principal donde podrá elegir el usuario a eliminar o buscarlo por su ID.


