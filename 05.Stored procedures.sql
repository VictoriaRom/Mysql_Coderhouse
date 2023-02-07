-- Stored procedures --

USE `libreria`;


DROP procedure IF EXISTS `encarga_libros_por`;

DELIMITER $$
USE `libreria`$$
CREATE PROCEDURE `encarga_libros_por` (IN columna_para_encargar_por VARCHAR(30), IN forma_pedido VARCHAR(4))
BEGIN
	IF  columna_para_encarga_por <> "" THEN
		SET @pedido_consulta = CONCAT_WS(" ", "PEDIR POR", columna_para_encarga_por, forma_pedido); 
	ELSE
		SET @pedido_consulta = "";
	END IF;
    SET @resultado_consulta = CONCAT_WS(" ", "SELECT * FROM libro", @pedido_consulta);
    PREPARE declaración_resultadot FROM @resultado_consulta;
    EXECUTE declaración_resultado; 
    DEALLOCATE PREPARE declaración_resultado; 
END$$

DELIMITER ;



DROP procedure IF EXISTS `introduce_o_eliminar_categoria_libro`;

DELIMITER $$
USE `libreria`$$
CREATE PROCEDURE `introduce_o_eliminar_categoria_libro` (
	IN declaración_en VARCHAR(6),
	IN id_categoria tinyint,
	IN id_libro tinyint)

etiqueta_proc: BEGIN
	IF UPPER(declaración_enn) LIKE "DELETE" THEN
		-- ELIMINAR DECLARACION
		SET @resultado_consulta = CONCAT_WS(" ", "DELETE FROM categoria_libro WHERE id_categoria =", id_categoria, "AND id_libro =", id_libro);
	ELSEIF UPPER(declaración_en) LIKE "INSERT" THEN
		SET @resultado_consulta = CONCAT_WS(" ", "INSERT INTO categoria_libro VALUES (", id_categoria, ",", id_libro, ")");
	ELSE
		LEAVE etiqueta_proc;
	END IF;

    PREPARE declaración_resultado FROM @resultado_consulta;
    EXECUTE declaración_resultado; 
    DEALLOCATE PREPARE declaración_resultado; 
END$$

DELIMITER ;



DROP procedure IF EXISTS `introducir_categoria_libro`;

DELIMITER $$
USE `libreria`$$
CREATE PROCEDURE `introducir_categoria_libro`(
	IN id_categoria tinyint,
	IN id_libro tinyint)

BEGIN
    CALL introduce_o_eliminar_categoria_libro("INSERT", id_categoria, id_libro); 
END$$

DELIMITER ;


DROP procedure IF EXISTS `eliminar_categoria_libro`;

DELIMITER $$
USE `libreria`$$
CREATE PROCEDURE `eliminar_categoria_libro` (
	IN id_categoria tinyint,
	IN id_libro tinyint)
BEGIN
    CALL introducir_o_eliminar_categoria_libro("DELETE", id_categoria, id_libro);
END$$

DELIMITER ;




DROP procedure IF EXISTS `actualizacion_libro_status_de_id_devolver_libro`;

DELIMITER $$
USE `libreria`$$
CREATE PROCEDURE `actualizacion_libro_status` (
	IN id_inventario_libro_argumento smallint unsigned,
	IN id_libro_status_argumento tinyint unsigned)
BEGIN
    UPDATE inventario_libro
    SET id_libro_status = id_libro_status_argumento
    WHERE id_inventario_libro = id_inventario_libro_argumento;
END$$

DELIMITER ;


DROP procedure IF EXISTS `actualizacion_libro_status_de_id_devolver_libro`;

DELIMITER $$
USE `libreria`$$
CREATE PROCEDURE `actualizacion_libro_status_de_id_devolver_libro` (
	IN id_devolver_libro_argumento int unsigned,
	IN id_libro_status_argumento tinyint unsigned)
BEGIN
	SET @id_inventario_libro_para_actualizar = (
        SELECT p.id_inventario_libro
        FROM prestamo AS p
		INNER JOIN devolver_libro AS dl
			ON p.id_prestamo = dl.id_prestamo
		WHERE dl.id_devolver_libro = id_devolver_libro_argumento
    );

    CALL actualizacion_libro_status(
		@id_inventario_libro_para_actualizar,
		id_libro_status_argumento
	);
END$$

DELIMITER ;




DROP procedure IF EXISTS `registrarse_en_tabla_registro_prestamo`;

DELIMITER $$
USE `libreria`$$
CREATE PROCEDURE `registrarse_en_tabla_registro_prestamo` (
	IN id_declaración_argumento tinyint unsigned,
	IN id_prestamo_argumento int unsigned,
	IN id_cliente_argumento smallint unsigned,
	IN id_inventario_libro_argumento smallint unsigned)
BEGIN
	INSERT INTO `registro_prestamo` (
		id_declaracion,
		id_prestamo,
		id_cliente,
		id_inventario_libro,
		usuario_ejecutando_consulta,
		fecha_prestamo,
		tiempo_prestamo
	)
	VALUES (
		id_declaracion_argumento, 
		id_prestamo_argumento, 
		id_cliente_argumento,
		id_inventario_libro_argumento, 
		CURRENT_USER(), 
		CURRENT_DATE(), 
		CURRENT_TIME() 
	);
END$$

DELIMITER ;