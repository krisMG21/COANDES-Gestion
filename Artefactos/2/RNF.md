# Requisitos no funcionales


### SEGURIDAD
- **Gestión de roles y permisos :** Es esencial implementar un sistema de acceso diferenciado por roles, como responsable técnico, comercial y usuarios del cliente, para proteger la información sensible.
- **Autenticación y autorización :** Todos los usuarios deberán autenticarse en el sistema y recibir permisos específicos según su rol, asegurando así la confidencialidad de la información.
- **Cifrado de datos :** Los datos, especialmente los archivos XML y la información de contacto de los usuarios, deben estar cifrados tanto en tránsito como en reposo para garantizar la privacidad.
- **Recuperación :** Sistema de recuperacion de caidas de la bbdd - bbdd duplicada


### SW Y HW
- Aplicacion funcional en Windows, Linux , macOS , android , ios
- (Aplicacion funcional en dispositivos moviles)
- Base de datos SQL escalable y con suficiente capacidad de almacenamiento. 
- Almacenamiento de datos suficiente y escalable
- **Escalabilidad horizontal y vertical :** El sistema debe ser capaz de escalar añadiendo más servidores (horizontal) o aumentando los recursos de hardware (vertical) para manejar un mayor volumen de datos y usuarios sin afectar el rendimiento.


### RENDIMIENTO:
-  **Optimización de consultas :** Dado el volumen de información que gestionará el sistema (proyectos, aplicaciones, dependencias), es crucial que las consultas a la base de datos estén optimizadas para asegurar tiempos de respuesta rápidos.
- Capacidad de soportar mas usuarios que empleados en la empresa, siendo escalable en cuanquier momento.
- Importante grantizar que el sistema sea accesible desde distintos dispositivos, incluyendo navegadores web y móviles, para que los usuarios tengan la posibilidad de acceder desde cualquier lugar. 


### ACCESIBILIDAD Y USABILIDAD
- **Internacionalización :** Soporte para múltiples idiomas, configurable por usuario.
- **Alta disponibilidad :** El sistema debe estar operativo 24/7, con un tiempo de inactividad mínimo.

### INTEROPERABILIDAD: 
- **Estándares de cambio de datos :** El sistema debe integrarse con los sistemas de los clientes mediante estándares como XML, facilitando el intercambio eficiente y sin errores.
- **Compatibilidad con sistemas de terceros :** Dado que los clientes pueden utilizar diferentes sistemas, el sistema de COANDES debe ser compatible con una variedad de plataformas y formatos de datos.

### USABILIDAD: 
- **Interfaz amigable :** El sistema debe contar con una interfaz intuitiva que facilite su uso tanto a los empleados de COANDES como a los usuarios del cliente.
- 

