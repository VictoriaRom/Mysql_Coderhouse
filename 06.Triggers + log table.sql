-- Triggers + log table --

USE libreria;

DROP TRIGGER IF EXISTS `libreria`.`prestamos_AFTER_INSERT`;

DELIMITER $$
USE `libreria`$$
CREATE TRIGGER `libreria`.`prestamos_AFTER_INSERT` AFTER INSERT ON `prestamo`
FOR EACH ROW
BEGIN
	DECLARE id_declaración_consulta VARCHAR(6);
    SET id_declaración_consulta := (
		SELECT id_declaracion
        FROM registro_declaracion
        WHERE declaracion LIKE 'INSERT'
    );

	CALL registrarse_en_tabla_registro_prestamo(
		id_declaración_consulta,
        NEW.id_prestamo, 
        NEW.id_cliente, 
        NEW.id_inventario_libro 
    );
END$$
DELIMITER ;



DROP TRIGGER IF EXISTS `libreria`.`prestamos_AFTER_DELETE`;

DELIMITER $$
USE `libreria`$$
CREATE TRIGGER `libreria`.`prestamos_AFTER_DELETE` AFTER DELETE ON `prestamo`
FOR EACH ROW
BEGIN
	DECLARE id_declaración_consulta VARCHAR(6);
    SET id_declaración_consulta := (
		SELECT id_declaración
        FROM registro_declaracion
        WHERE declaraciont LIKE 'DELETE'
    );

	CALL registrarse_en_tabla_registro_prestamo(
		id_declaración_consulta, 
        OLD.id_prestamo, 
        OLD.id_cliente, 
        OLD.id_inventario_libro 
    );
END$$
DELIMITER ;



DROP TRIGGER IF EXISTS `libreria`.`prestamos_BEFORE_INSERT`;

DELIMITER $$
USE `libreria`$$
CREATE TRIGGER `libreria`.`prestamos_BEFORE_INSERT` BEFORE INSERT ON `prestamo`
FOR EACH ROW
BEGIN
	CALL actualizacion_libros_status(
		NEW.id_inventario_libro,
		obtener_id_libro_status("Prestado")
    );
END$$
DELIMITER ;



-- devolver_libro TABLE TRIGGERS --

DROP TRIGGER IF EXISTS `libreria`.`devolver_libro_AFTER_DELETE`;

DELIMITER $$
USE `libreria`$$
CREATE TRIGGER `libreria`.`devolver_libro_AFTER_DELETE` AFTER DELETE ON `devolver_libro`
FOR EACH ROW
BEGIN
	INSERT INTO `registro_eliminado_devolver_libro` (
		id_devolver_libro,
		id_prestamo,
		fecha_devolucion,
		usuario_ejecutando_consulta,
		fecha_registro,
		tiempo_registro
	)
	VALUES (
		OLD.id_devolver_libro, 
		OLD.id_prestamo, 
		OLD.fecha_devolucion, 
		CURRENT_USER(), -- 	usuario_ejecutando_consulta
		CURRENT_DATE(), -- fecha_registro
		CURRENT_TIME() -- tiempo_registro
	);
END$$
DELIMITER ;

DROP TRIGGER IF EXISTS `libreria`.`devolver_libro_BEFORE_DELETE`;

DELIMITER $$
USE `libreria`$$
CREATE TRIGGER `libreria`.`devolver_libro_BEFORE_DELETE` BEFORE DELETE ON `devolver_libro`
FOR EACH ROW
BEGIN
	CALL actualizacion_libro_status_de_id_devolver_libro(
		OLD.id_devolver_libro,
        obtener_id_libro_status("Prestado")
    );
END$$
DELIMITER ;


DROP TRIGGER IF EXISTS `libreria`.`devolver_libro_AFTER_INSERT`;

DELIMITER $$
USE `libreria`$$
CREATE TRIGGER `libreria`.`devolver_libro_AFTER_INSERT` AFTER INSERT ON `devolver_libro`
FOR EACH ROW
BEGIN
	CALL actualizacion_libro_status_de_id_devolver_libro(
		NEW.id_devolver_libro,
        obtener_id_libro_status("Stock")
        );
END$$
DELIMITER ;

