-- Creación de tablas --

DROP SCHEMA IF EXISTS libreria;
CREATE SCHEMA libreria;


USE libreria;

CREATE TABLE pais (
	id_pais tinyint unsigned NOT NULL AUTO_INCREMENT, 
	pais varchar(30) NOT NULL, 
	PRIMARY KEY (id_pais)
);


CREATE TABLE categoria (
	id_categoria tinyint unsigned NOT NULL AUTO_INCREMENT, 
	categoria varchar(30) NOT NULL, 
	PRIMARY KEY (id_categoria)
);


CREATE TABLE editor (
	id_editor smallint unsigned NOT NULL AUTO_INCREMENT, 
	editor varchar(30) NOT NULL, 
	PRIMARY KEY (id_editor)
);


CREATE TABLE idioma_libro (
	id_idioma_libro smallint unsigned NOT NULL AUTO_INCREMENT,
	idioma_libro varchar(30) NOT NULL,
	PRIMARY KEY (id_idioma_libro)
);


CREATE TABLE libro_status (
	id_libro_status tinyint unsigned NOT NULL AUTO_INCREMENT,
	libro_status varchar(30) NOT NULL,
	PRIMARY KEY (id_libro_status)
);


CREATE TABLE cliente (
	id_cliente smallint unsigned NOT NULL AUTO_INCREMENT, 
	nombre varchar(30) NOT NULL, 
	apellido varchar(30) NOT NULL, 
	dni int unsigned NOT NULL, 
	telefono varchar(20) NULL, 
	email varchar(50) NOT NULL, 
	fecha_nacimiento date NOT NULL, 
	PRIMARY KEY (id_cliente)
);


CREATE TABLE libro (
	id_libro smallint unsigned NOT NULL AUTO_INCREMENT, 
	id_editor smallint unsigned NOT NULL, 
	titulo varchar(128) NOT NULL, 
	descrip_libro text NULL, 
	fecha_publicacion date NULL, 
	id_idioma_libro smallint unsigned NOT NULL, 
	PRIMARY KEY (id_libro),
	FOREIGN KEY (id_editor) REFERENCES editor(id_editor),
	FOREIGN KEY (id_idioma_libro) REFERENCES idioma_libro(id_idioma_libro)
);


CREATE TABLE inventario_libro (
	id_inventario_libro smallint unsigned NOT NULL AUTO_INCREMENT, 
	id_libro smallint unsigned NOT NULL, 
	id_libro_status tinyint unsigned NOT NULL, 
	PRIMARY KEY (id_inventario_libro),
	FOREIGN KEY (id_libro) REFERENCES libro(id_libro),
	FOREIGN KEY (id_libro_status) REFERENCES libro_status(id_libro_status)
);


CREATE TABLE ubicacion_almacenamiento (
	id_inventario_libro smallint unsigned NOT NULL, 
	estante tinyint unsigned NOT NULL, 
	seccion_estante tinyint unsigned NOT NULL,
	FOREIGN KEY (id_inventario_libro) REFERENCES inventario_libro(id_inventario_libro)
);


CREATE TABLE prestamo (
	id_prestamo int unsigned NOT NULL AUTO_INCREMENT, 
	id_cliente smallint unsigned NOT NULL, 
	id_inventario_libro smallint unsigned NOT NULL, 
	fecha_prestamo datetime NOT NULL, 
	fecha_vencimiento datetime NOT NULL, 
	PRIMARY KEY (id_prestamo),
	FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
	FOREIGN KEY (id_inventario_libro) REFERENCES inventario_libro(id_inventario_libro)
);


CREATE TABLE autor (
	id_autor smallint unsigned NOT NULL AUTO_INCREMENT, 
	nombre varchar(30) NULL, 
	apellido varchar(30) NOT NULL, 
	id_pais tinyint unsigned NOT NULL, 
	PRIMARY KEY (id_autor),
	FOREIGN KEY (id_pais) REFERENCES pais(id_pais)
);


CREATE TABLE autor_libro (
	id_autor smallint unsigned NOT NULL, 
	id_libro smallint unsigned NOT NULL, 
	FOREIGN KEY (id_autor) REFERENCES autor(id_autor),
	FOREIGN KEY (id_libro) REFERENCES libro(id_libro)
);


CREATE TABLE categoria_libro (
	id_categoria tinyint unsigned NOT NULL, 
	id_libro smallint unsigned NOT NULL, 
	FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria),
	FOREIGN KEY (id_libro) REFERENCES libro(id_libro)
);


CREATE TABLE devolver_libro (
	id_devolver_libro int unsigned NOT NULL AUTO_INCREMENT, 
	id_prestamo int unsigned NOT NULL, 
	fecha_devolucion datetime NOT NULL,
	PRIMARY KEY (id_devolver_libro),
	FOREIGN KEY (id_prestamo) REFERENCES prestamo(id_prestamo)
);


-- Tabla de préstamo de registro declaracion.

CREATE TABLE registro_declaracion (
	id_declaracion tinyint unsigned AUTO_INCREMENT,
	declaracion VARCHAR(6) NOT NULL,
	PRIMARY KEY (id_declaracion)
);


CREATE TABLE  registro_prestamo (
    id_registro int unsigned AUTO_INCREMENT, 
    id_declaracion tinyint unsigned, 
    id_prestamo int unsigned, 
	id_cliente smallint unsigned, 
    id_inventario_libro smallint unsigned, 
    usuario_manejo_consultas varchar(80), 
    fecha_registro date, 
    tiempo_registro time, 
    PRIMARY KEY (id_registro),
    FOREIGN KEY (id_declaracion) REFERENCES registro_declaracion(id_declaracion)
);


CREATE TABLE registro_borrado_devolver_libro (
    id_registro int unsigned AUTO_INCREMENT, 
    id_prestamo int unsigned, 
    id_devolver_libro int unsigned, 
   fecha_devolucion datetime, 
	usuario_manejo_consultas varchar(80), 
    fecha_registro date, 
    tiempo_registro time, 
    PRIMARY KEY (id_registro)
);