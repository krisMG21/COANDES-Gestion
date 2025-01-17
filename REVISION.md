# Apuntes de Revisión

> 29/10/2020

## Elementos de Acción

> [!IMPORTANT]
> Lista de elementos que se han revisado y/o se van a cambiar en el proyecto.

### Carga de archivos XML

| Precondiciones | Grupo 12-3 | Grupo 12-4 |
| ---------- | ---------- | ---------- |
| El usuario debe ser Responsable Técnico | [x] | [ ] |
| El fichero XML por correo | [x] | [x] |
| El proyecto y la aplicación correspondiente ya existen | [x] | [ ] |

| Postcondiciones | Grupo 12-3 | Grupo 12-4 |
| ---------- | ---------- | ---------- |
| El sistema realiza un log de la acción | [x] | [ ] |
| Las dependencias entre elementos se han establecido en el sistema | [x] | [ ] |
| Los elementos de SW se han creado/actualizado en la base de datos | [x] | [ ] |

* Escenario principal: Ambos grupos seguimos el mismo proceso, excepto 12-4
que no tiene los logs como postcondición, por tanto tampoco en el escenario

* Escenarios alternativos: Caso de Archivo XML no válido en ambos

---

#### Grupo 12-3 (1)

* [x] ¿El caso de uso es una tarea discreta (¿empieza y termina en el mismo
momento temporal?)
* [x] ¿Está claro el objetivo o el valor medible del caso de uso?
* [x] ¿Está claro que actores se benefician del caso de uso?
* [x] ¿Están documentados todos los escenarios alternativos previstos?
*elecciones de usuario)
* [x] ¿Están documentadas todas las condiciones de excepción conocidas?
(errores y controles)
* [x] ¿Existe alguna secuencia de acción común que pueda dividirse en casos
de uso separados?
* [x] ¿La secuencia de diálogo de cada curso está claramente escrita, es
inequívoca y completa?
* [x] ¿Son todos los actores y pasos del caso de uso pertinentes para realizar
esa tarea?
* [x] ¿Es factible cada escenario definido en el caso de uso?
* [x] ¿Es verificable cada escenario definido en el caso de uso?
* [x] ¿Las precondiciones y postcondiciones enmarcan correctamente el caso de uso?
* [x] ¿Incluye la frecuencia si es necesario?
* [x] ¿Incluye todos los apartados definidos en la plantilla con el formato correcto?
* [x] ¿Es coherente con la funcionalidad solicitada por el usuario?
* [x] ¿Se corresponde el diseño de la interfaz con los escenarios?
* [x] ¿El diagrama de actividad incluye todos los escenarios?

#### Grupo 12-4 (1)

* [x] ¿El caso de uso es una tarea discreta (¿empieza y termina en el mismo
momento temporal?)
* [x] ¿Está claro el objetivo o el valor medible del caso de uso?
* [x] ¿Está claro que actores se benefician del caso de uso?
* [ ] ¿El caso de uso está libre de detalles de implementación?
* [x] ¿Están documentados todos los escenarios alternativos previstos?
*elecciones de usuario)
* [x] ¿Están documentadas todas las condiciones de excepción conocidas?
(errores y controles)
* [ ] ¿Existe alguna secuencia de acción común que pueda dividirse en casos
de uso separados?
* [x] ¿La secuencia de diálogo de cada curso está claramente escrita, es
inequívoca y completa?
* [x] ¿Son todos los actores y pasos del caso de uso pertinentes para realizar
esa tarea?
* [x] ¿Es factible cada escenario definido en el caso de uso?
* [x] ¿Es verificable cada escenario definido en el caso de uso?
* [ ] ¿Las precondiciones y postcondiciones enmarcan correctamente el caso de uso?
* [x] ¿Incluye la frecuencia si es necesario?
* [x] ¿Incluye todos los apartados definidos en la plantilla con el formato correcto?
* [x] ¿Es coherente con la funcionalidad solicitada por el usuario?
* [x] ¿Se corresponde el diseño de la interfaz con los escenarios?
* [x] ¿El diagrama de actividad incluye todos los escenarios?

### Crear tareas asociadas a la petición

| Precondiciones | Grupo 12-3 | Grupo 12-4 |
| ---------- | ---------- | ---------- |
| El usuario debe de haber iniciado sesión como Técnico | [x] | [x] |
| El usuario es responsable de la petición que se está modificando | [ ] | [x] |
| El ténico (RP) debe de haber solicitado la lista de elems| [x] | [x] |

| Postcondiciones | Grupo 12-3 | Grupo 12-4 |
| ---------- | ---------- | ---------- |
| Se crea la lisgta de tareas, cada una con sus datos y encargados | [x] | [x] |

* **Escenario principal**: Ambas secuencias de ejecución contienen todas las acciones
y servicios requeridos, tanto visuales como funcionales. Solo se difiere en los
distintos detalles que se muestran en ciertos escenarios.

* **Escenarios alternativos**: Se contempla, antes de confirmar la creación de la
lista, dar la opción de añadir una nueva tarea a la lista manualmente.
También que el encargado elegido para la tarea no se encuentre disponible, o
se da un error, o solo aparecen los encargados disponibles.

---

#### Grupo 12-3 (2)

* [x] ¿El caso de uso es una tarea discreta (¿empieza y termina en el mismo
momento temporal?)
* [x] ¿Está claro el objetivo o el valor medible del caso de uso?
* [x] ¿Está claro que actores se benefician del caso de uso?
* [x] ¿Están documentados todos los escenarios alternativos previstos?
*elecciones de usuario)
* [x] ¿Están documentadas todas las condiciones de excepción conocidas?
(errores y controles)
* [x] ¿Existe alguna secuencia de acción común que pueda dividirse en casos
de uso separados?
* [x] ¿La secuencia de diálogo de cada curso está claramente escrita, es
inequívoca y completa?
* [x] ¿Son todos los actores y pasos del caso de uso pertinentes para realizar
esa tarea?
* [x] ¿Es factible cada escenario definido en el caso de uso?
* [x] ¿Es verificable cada escenario definido en el caso de uso?
* [ ] ¿Las precondiciones y postcondiciones enmarcan correctamente el caso de uso?
* [x] ¿Incluye la frecuencia si es necesario?
* [x] ¿Incluye todos los apartados definidos en la plantilla con el formato correcto?
* [x] ¿Es coherente con la funcionalidad solicitada por el usuario?
* [x] ¿Se corresponde el diseño de la interfaz con los escenarios?
* [x] ¿El diagrama de actividad incluye todos los escenarios?

#### Grupo 12-4 (2)

* [x] ¿El caso de uso es una tarea discreta (¿empieza y termina en el mismo
momento temporal?)
* [x] ¿Está claro el objetivo o el valor medible del caso de uso?
* [x] ¿Está claro que actores se benefician del caso de uso?
* [x] ¿El caso de uso está libre de detalles de implementación?
* [x] ¿Están documentados todos los escenarios alternativos previstos?
*elecciones de usuario)
* [x] ¿Están documentadas todas las condiciones de excepción conocidas?
(errores y controles)
* [ ] ¿Existe alguna secuencia de acción común que pueda dividirse en casos
de uso separados?
* [x] ¿La secuencia de diálogo de cada curso está claramente escrita, es
inequívoca y completa?
* [x] ¿Son todos los actores y pasos del caso de uso pertinentes para realizar
esa tarea?
* [x] ¿Es factible cada escenario definido en el caso de uso?
* [x] ¿Es verificable cada escenario definido en el caso de uso?
* [x] ¿Las precondiciones y postcondiciones enmarcan correctamente el caso de uso?
* [x] ¿Incluye la frecuencia si es necesario?
* [x] ¿Incluye todos los apartados definidos en la plantilla con el formato correcto?
* [x] ¿Es coherente con la funcionalidad solicitada por el usuario?
* [x] ¿Se corresponde el diseño de la interfaz con los escenarios?
* [x] ¿El diagrama de actividad incluye todos los escenarios?

### Borrar un usuario cliente

| Precondiciones | Grupo 12-3 | Grupo 12-4 |
| ---------- | ---------- | ---------- |
| El usuario está autenticado y es Responsable Comercial | [x] | [x] |
| El usuario cliente que desea eliminar existe en el sistema | [x] | [x] |
| El usuario cliente no es responsable de ninguna aplicación | [x] | [x] |

| Postcondiciones | Grupo 12-3 | Grupo 12-4 |
| ---------- | ---------- | ---------- |
| El cliente se elimina de la base de datos | [x] | [x] |
| Se eliminan las aplicaciones de las que era responsable | [x] | [ ] |

* **Escenario principal**: Flujos de ejecución similares y correctos. Fetch
y borrado del usuario.

* **Escenarios alternativos**: Gracias a las precondiciones, no se contempla
ninguno.

---

#### Grupo 12-3 (3)

* [x] ¿El caso de uso es una tarea discreta (¿empieza y termina en el mismo
momento temporal?)
* [x] ¿Está claro el objetivo o el valor medible del caso de uso?
* [x] ¿Está claro que actores se benefician del caso de uso?
* [x] ¿El caso de uso está libre de detalles de implementación?
* [x] ¿Están documentados todos los escenarios alternativos previstos?
*elecciones de usuario)
* [x] ¿Están documentadas todas las condiciones de excepción conocidas?
(errores y controles)
* [ ] ¿Existe alguna secuencia de acción común que pueda dividirse en casos
de uso separados?
* [x] ¿La secuencia de diálogo de cada curso está claramente escrita, es
inequívoca y completa?
* [x] ¿Son todos los actores y pasos del caso de uso pertinentes para realizar
esa tarea?
* [x] ¿Es factible cada escenario definido en el caso de uso?
* [x] ¿Es verificable cada escenario definido en el caso de uso?
* [x] ¿Las precondiciones y postcondiciones enmarcan correctamente el caso de uso?
* [x] ¿Incluye la frecuencia si es necesario?
* [x] ¿Incluye todos los apartados definidos en la plantilla con el formato correcto?
* [x] ¿Es coherente con la funcionalidad solicitada por el usuario?
* [x] ¿Se corresponde el diseño de la interfaz con los escenarios?
* [x] ¿El diagrama de actividad incluye todos los escenarios?

#### Grupo 12-4 (3)

* [x] ¿El caso de uso es una tarea discreta (¿empieza y termina en el mismo
momento temporal?)
* [x] ¿Está claro el objetivo o el valor medible del caso de uso?
* [x] ¿Está claro que actores se benefician del caso de uso?
* [x] ¿El caso de uso está libre de detalles de implementación?
* [x] ¿Están documentados todos los escenarios alternativos previstos?
*elecciones de usuario)
* [x] ¿Están documentadas todas las condiciones de excepción conocidas?
(errores y controles)
* [ ] ¿Existe alguna secuencia de acción común que pueda dividirse en casos
de uso separados?
* [x] ¿La secuencia de diálogo de cada curso está claramente escrita, es
inequívoca y completa?
* [x] ¿Son todos los actores y pasos del caso de uso pertinentes para realizar
esa tarea?
* [x] ¿Es factible cada escenario definido en el caso de uso?
* [x] ¿Es verificable cada escenario definido en el caso de uso?
* [x] ¿Las precondiciones y postcondiciones enmarcan correctamente el caso de uso?
* [x] ¿Incluye la frecuencia si es necesario?
* [x] ¿Incluye todos los apartados definidos en la plantilla con el formato correcto?
* [x] ¿Es coherente con la funcionalidad solicitada por el usuario?
* [ ] ¿Se corresponde el diseño de la interfaz con los escenarios?
* [x] ¿El diagrama de actividad incluye todos los escenarios?

## Informe de Walkthrough

> [!IMPORTANT]
> Dados los cambios vistos previamente, decisiones y cambios a tomar en el proyecto.
> *"Se acepta tal cual / Se acepta si se toman las medidas 2 y 3, ..."*

### Cambios Grupo 12-3

* Ficheros XML: Después de la revisión, no se aprecia ningún cambio necesario.

* Crear tareas asociadas a la petición: Añadir nueva precondición, que el técnico
sea responsable de la petición que se está modificiando.

* Borrar un usuario cliente: Importante eliminar la postcondición de que las
aplicaciones bajo la responsabilidad del usuario se eliminen, ya que no se
contempla en el caso de uso.

### Cambios Grupo 12-4

* Ficheros XML: Falta agregar, como precondición, la existencia del proyecto y
la aplicación correspondientes, y como postcondición, la creación del fichero
log, cosa que afecta la secuencia de dialogo.

* Crear tareas asociadas a la petición: Después de la revisión, no se aprecia
ningún cambio necesario.

* Borrar un usuario cliente: Cambios en la interfaz, pues no coincidía con las
precondiciones, así como el diagrama de actividad.

## Entrega

> [!IMPORTANT]
> Subida de los documentos en formato PDF, a la herramienta `Debates` del aula.
