</head>
<body>
  <div class="container">
    <img src="img/datos_info_conoc.jpg" alt="De Datos a Conocimiento">
    <p>De Datos a Conocimiento</p>
  </div>
</body>
</html>

# Convertir los Datos en Conocimiento
### Datos = conjunto de hechos almacenados
### Información = conjunto de datos procesados en tiempo y forma, que constituyen un mensaje relevante y reduce la incertidumbre
### Conocimiento = dota a las personas con la capacidad de tomar decisiones.

## Inteligenia de Negocios (BI)

 - Conocimiento sobre el dominio del negocio
 - Capacidad de describir su comportamiento y comprender aspectos y variables más importantes
 - Darle valor a los datos que el negocio genera
 - Generar información a partir de los datos

## Ecosistema de una organización
Los datos no se encuentran en un único repositorio y puede que no tengan una estructura apta para almacernarlos en una base de datos relacional (RDBMS):
- Sistemas transaccionales para la operatoria diaria: ingreso de datos a través de clientes, operadores, administrativos, usuarios.
- Dispositivos de medición: generan datos

Situación: acceder a varias fuentes, unificar en un repositorio, para luego realizar las consultas de forma confiable para llegar a conclusiones sin errores.


## Sistema de gestión de bases de datos
Generación de estructuras que forman parte de las bases de datos. Representación gráfica en un modelo, de lo que va a estar dentro de una base de datos. 

## Modelos relacionales - Modelo Entidad-Relación
**Modelos de negocios:** definición de los requisitos de negocio y diseño de estructuras para soportarlos. Concepto de lo que se quiere diseñar. 

**Bases de datos:** datos almacenados, provenientes de entidades, objetos, hechos. Generalmente controlada por un sistema de gestión de base de datos (DBMS)
* Base de Datos On-Premise o Cloud: de manera local (On-premise), los servidores se encuentran físicamente en instalaciones de la organización. En la nube, los servidores pertenecen a terceros (AWS, Azure, GCP, etc) También pueden estar de forma "distribuída". 
* Bases de datos relacionales vs Bases de datos no relacionales: las bases de datos que utilizan un lenguaje de consulta estructurada SQL, son relacionales.

**Propiedades ACID**: Atomicidad (una transacción se ejecute completamente o no se ejecute), Coherencia (una vez confirmada la transacción, los datos se acoplan al esquema de la base de datos), Aislamiento (las transacciones simultáneas se ejecutan por separado), Durabilidad (recuperarse de un error inesperado y volver al último estado conocido)

* No relacional refiere al no uso del modelo relacional, NoSQL pueden estar basadas en documentos, grafos,  clave-valor (ejemplo: MongoDB, Firebase o DynamoDB); optimizadas para aplicaciones que requieren grandes volúmenes de datos (escalables: diseñadas para escalar usando clústeres distribuidos de hardware), baja latencia y modelos de datos flexibles, se logra mediante la flexibilidazión de algunas de las restricciones de coherencia de datos en otras bases de datos. 
Ej: en una base de datos relacional, un registro de libros se almacena en tablas separadas y las relaciones se definen por claves primarias y foráneas. En una base de datos NoSQL, un libro se registra como documento JSON dónde cada atributo se almacena en un sólo documento. 

**Tipos NoSQL**: Clave-valor(altamente divisibles, permiten escalado horizontal); Documentos; Gráficos; En memoria; Buscar
* Bases de datos transaccionales vs Bases de datos analíticas: su elección depende del objetivo para el que sean creadas, ya sea soportar la persistencia de datos de las aplicaciones o servir de soporte analítico a la toma de decisiones. Existen herramientas como Datamarts, Datawarehouse o Datalake. 

**Sistema de bases de datos:** datos, DBMS y aplicaciones asociadas a ellos. 

**Modelo Entidad-Relación:** representación visual de la organización de entidades, atributos y relaciones de la base de datos.
* Relación: interacción de las entidades en la realidad, con los atributos que las describen. Se representan con líneas.
* Entidad: objeto que se puede describir por sus atributos. Se representan con rectángulos. Cada entidad es una tabla en la base de datos
* Atributos: se representan con elipses.
* Tipo de relación: se representan con rombos.
* Ambas se definen a partir del grado de relevancia que tienen para el negocio. 
* Determinan los registros que quedarán en la base de datos. Permite una relación intermedia 1-M y da la relación que hace falta
* Tabla puente: utilizada cuándo hay tablas con relaciones muchos a muchos

### Representación de las relaciones
* Aportan dos características: no duplicidad e integridad referencial.
* Primary key o llave primaria: representación única, inalterable, nunca nula de un elemento (registro) de la entidad. Existe una por cada entidad.
* Foreign key o llave foránea: puede ser una Primary Key en otra tabla. Pueden haber múltiples en una entidad.
* Clave primaria compuesta: unión de dos claves foráneas para una entidad. Para crearlas usa la menor cantidad posible de atributos, no utilizar atributos que tiendan a cambiar.

### Cardinalidad
Cómo interactúan o se relacionan las tablas de una base de datos:
* Uno a uno (1-1): 1 fila de la tabla 1 se relaciona con 1 fila de la tabla 2 y viceversa 
* Uno a muchos o muchos a uno (1-M o M-1): cada dato de la tabla 1 se relaciona con muchas filas de la tabla 2, pero cada dato de la tabla 2 s relaciona con 1 elemento de la tabla 1. 
* Muchos a muchos (M-M): las filas de la tabla 1, están relacionadas a muchas filas de la tabla 2 y viceversa 


</head>
<body>
  <div class="container">
    <img src="img/foreign and primary key.png" alt="Primary y Foreign Keys">
    <p>Primary y Foreign Keys</p>
  </div>
</body>
</html>


## SQL
* Lenguaje de Consulta Estructurada (Structured Query Language). 
* Lenguaje de interacción con bases de datos relacionales.
* Se utiliza para programación de tipo "declarativa" (no procedimental), es decir, el foco está en qué resultado se desea obtener
* Existen distintos tipos de sistemas de gestión de bases de datos relacionales (RDMS): MySQL, SQL Server, Oracle, Postgres
* Posee sublenguajes: 

**DDL (Data Definition Language)**: sentencias que permiten definir la estructura de una base de datos. Las acciones a ejecutar son CREAR, MODIFICAR (ALTER, RENAME, TRUNCATE), ELIMINAR

**DML (Data Manipulation Language)**: sentencias que permiten manipular los datos. Las acciones son SELECT, INSERT, UPDATE, DELETE

**DCL (Data Control Language)**: administrar los permisos para los usuarios. Las acciones son GRANT, REVOKE

**TCL (Transaction Control Language)**: guardar y restaurar cambios de las bases de datos. Las acciones son COMMIT, ROLLBACK. 
