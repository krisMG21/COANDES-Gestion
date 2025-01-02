# CASO DE USO: Borrar un usuario cliente. 

## Precondiciones:
- El usuario que realizará el caso de uso está autenticado y es responsable comercial de COANDES.
- El comercial responsable es responsable del usuario cliente a borrar. Esto se puede comprobar en el caso de uso CU47- Consultar usuarios clientes
- El usuario cliente a borrar no tiene nada activo en el sistema, ya sean aplicaciones (no es responsable de ella) o peticiones (solo en estados recibidas, rechazadas o terminadas). 

## Postcondiciones: 
- El usuario cliente queda eliminado de la tabla usuarios de la base de datos.
- Las peticiones en estado "recibido" cuyo solicitante sea el usuario borrado quedan borradas.
- Las tuplas de la tabla usuarios-peticiones que tengan como usuario y peticiones las que se pretende borrar en los dos puntos anteriores quedan eliminadas.
- Se eliminan las relaciones usuario cliente - aplicacion de la base de datos

## Escenario Principal: 
*El comercial ya se encuentra en la pestaña de consutla de usuarios
--- 
| Actor                                       | Sistema                                                                                           |
|---------------------------------------------|---------------------------------------------------------------------------------------------------|
| 1. Solicita la eliminación de un usuario cliente específico pulsando el boton de "eliminar". | 2.	Confirma que es posible eliminar ese usuario.   |
|            | 3.	Muestra un listado de las peticiones que serian eliminadas.    |
| 4. Confirma la acción de eliminación        | 5. Elimina las peticiones en estado "recibida", desactiva las que estan en estado "terminadas" o "rechazadas"        |
|                                             | 6. Elimina el usuario cliente y su relacion con las aplicaciones  |


--- 
## Escenarios alternativos : 
### Escenario Alternativo 1: No es posible eliminar al usuario cliente.
  - Si tras el paso 1 el usuario cliente a eliminar seria responsable de aplicación y/o tuviera peticiones en estado "en desarrollo" , "pendiente" o "en estudio":
    -  (2.) El sistema informa al usuario de que no es posible eliminar al cliente
    -  (3.) El sistema muestra al usuario una lista de las peticiones y/o aplicaciones que impiden el borrado
    -  (4.) El usuario pulsa el boton de "Aceptar"
    -  (5.) Se vuelve al paso 1

### Escenario Alternativo 2: Cancelar el borrado.
  - Si tras el paso 4 el comercial no desea realizar el borrado
    - (5.) El usuario pulsa el boton de cancelar
    - (6.) Se vuelve al paso 1
  


