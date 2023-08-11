CREATE DATABASE instituto;

USE instituto; -- Utilizar BD

CREATE TABLE carrera (
	carrera_ID INT NOT NULL auto_increment, -- Entero no nulo que se va a incrementar solo
    nombre VARCHAR (20) NOT NULL,
    PRIMARY KEY (carrera_ID)
    );
    
    SELECT * FROM carrera; -- El * es para seleccionar todo
    
    SELECT carrera_ID, nombre FROM carrera; -- Es lo mismo que poner *
    
CREATE TABLE instructor (
	instructor_ID INT NOT NULL auto_increment,
    cedula VARCHAR (25) NOT NULL,
    nombre VARChAR (45) NOT NULL,
	apellido VARCHAR (45) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    fecha_incorporacion DATE NOT NULL,
    PRIMARY KEY (instructor_ID)
);

SELECT * FROM instructor;

CREATE TABLE cohorte (
	cohorte_ID INT NOT NULL auto_increment,
    codigo varchar (45) NOT NULL,
	carrera_ID INT NOT NULL,
	instructor_ID INT NOT NULL,
    fecha_inicio DATE NOT NULL,
	fecha_finalizacion DATE,
    PRIMARY KEY (cohorte_ID),
    FOREIGN KEY (carrera_ID) REFERENCES carrera (carrera_ID),
    FOREIGN KEY (instructor_ID) REFERENCES instructor (instructor_ID)
);
    
CREATE TABLE alumno (
	alumno_ID INT NOT NULL auto_increment,
    cedula VARCHAR (25) NOT NULL, -- NOT NULL para que quede todo siempre completo
    nombre VARCHAR (45) NOT NULL,
    apellido VARCHAR (45) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    fecha_ingreso DATE NOT NULL,
    cohorte_ID INT,
    PRIMARY KEY (alumno_ID),
    FOREIGN KEY (cohorte_ID) REFERENCES cohorte (cohorte_ID)
);
    
SELECT * FROM alumno;

DROP DATABASE instituto;