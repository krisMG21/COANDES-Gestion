# Requisitos no funcionales

### SEGURIDAD

- **Gestión de roles:** Es esencial implementar un sistema de acceso diferenciado por roles, como responsable técnico, comercial y usuarios del cliente, para proteger la información sensible.

- **Permisos de los roles:** Se tiene que asegurar que los permisos para cada rol son los adecuados, protegen información sensible y no interfieren con la funcionalidad del sistema.
- **Autenticación y autorización:** Todos los usuarios deberán autenticarse en el sistema y recibir permisos específicos según su rol, asegurando así la confidencialidad de la información.
- **Cifrado de datos:** Los datos, especialmente los archivos XML y la información de contacto de los usuarios, deben estar cifrados tanto en tránsito como en reposo para garantizar la privacidad.
- **Recuperación:** Sistema de recuperacion de caidas de la bbdd - bbdd duplicada
- **Copia de seguridad:** Sisteam de recuperación de caidas del sistema


### SW Y HW
- Aplicacion funcional en los sistemas operativos Windows, GNU/Linux, MacOS, Android e IOS.
- Aplicacion funcional en dispositivos de sobremesa, portátiles y móviles de uso personal.
- Base de datos relacional, SQL, escalable y con suficiente capacidad de almacenamiento.
- Navegadores internos del sistema.
- Almacenamiento de datos suficiente y escalable.
- **Escalabilidad horizontal y vertical :** El sistema debe ser capaz de escalar añadiendo más servidores (horizontal) o aumentando los recursos de hardware (vertical) para manejar un mayor volumen de datos y usuarios sin afectar el rendimiento.


### RENDIMIENTO:
-  **Optimización de consultas:** Dado el volumen de información que gestionará el sistema (proyectos, aplicaciones, dependencias), es crucial que las consultas a la base de datos estén optimizadas para asegurar tiempos de respuesta rápidos.
- Capacidad de soportar bastantes más usuarios que clientes y empleados en la empresa, siendo escalable en cualquier momento. Esta cifra debe de ser superior a mil conexiones simultáneamente.
- El tiempo de respuesta ha de ser consistente independientemente del dispositivo y el sistema operativo. Puede depender de la conectividad del dispositivo.
- **Alta disponibilidad :** El sistema funcionará a todas horas, salvo si se tienen que actualizar funciones internas que requieren la inactividad del servidor.


### ACCESIBILIDAD Y USABILIDAD
- **Internacionalización :** Soporte para múltiples idiomas, configurable por usuario mediante una opción de cambio de idioma. Han de existir español, inglés y las lenguas cooficiales de España.
- La inferfaz debe de tener un nivel de accesibilidad de mínimo AA. Debe permitir siempre el zoom del texto hasta mínimo el 200% sin perder contenido. 


### INTEROPERABILIDAD: 
- **Estándares de cambio de datos :** El sistema debe integrarse con los sistemas de los clientes mediante estándares como XML, facilitando el intercambio eficiente y sin errores.
- **Compatibilidad con sistemas de terceros :** Dado que los clientes pueden utilizar diferentes sistemas, el sistema de COANDES debe ser compatible con una variedad de plataformas y formatos de datos.


### USABILIDAD: 
- **Interfaz amigable :** El sistema debe contar con una interfaz sencilla e intuitiva que facilite su uso tanto a los empleados de COANDES como a los usuarios del cliente.
- La inferfaz debe de ser atractiva para el usuario, colorida y no sobrecargada con elementos y opciones.
