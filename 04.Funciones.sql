-- Funciones --

USE libreria;


-- Obtener libros disponibles en stock
-- Esta funcion devolvera libros disponibles en stock. (n inventario_libro stock)

DROP function IF EXISTS `obtener_libro_disponible_stock`;

DELIMITER $$
USE `libreria`$$
CREATE FUNCTION `obtener_libro_disponible_stock` (id_libro SMALLINT)
RETURNS INT
READS SQL DATA
BEGIN
	DECLARE disponibilidad_stock INT;

    SET disponibilidad_stock = (
		SELECT
			COUNT(il.id_inventario_libro) AS disponibilidad_stock
        FROM inventario_libro AS il
        INNER JOIN libro_status AS ls
			ON il.id_libro_status = ls.id_libro_status
        WHERE il.id_libro = id_libro AND ls.libro_status LIKE 'Stock'
        );

	RETURN disponibilidad_stock;
END;$$

DELIMITER ;


-- Obtener cuantas veces fue prestado el libro
-- Esta funcion de vuelve la cantidad de veces fue prestado el libro

DROP function IF EXISTS `obtener_veces_prestado_libro`;

DELIMITER $$

CREATE FUNCTION `obtener_veces_prestado_libro` (id_book SMALLINT)
RETURNS INT
READS SQL DATA
BEGIN
	DECLARE veces_prestado INT;

    SET veces_prestado = (
		SELECT
			COUNT(g.id_perstamo) AS veces_prestado
        FROM prestamo AS g
        INNER JOIN inventario_libro AS il
			ON p.id_inventario_libro = il.id_inventario_libro
		INNER JOIN libro AS p
			ON il.id_libro = p.id_libro
        WHERE p.id_libro = id_libro
        );

	RETURN veces_prestado;
END;$$

DELIMITER ;


-- Obtener id libro status de la tabla de libro_status


DROP function IF EXISTS `obtener_id_libro_status`;

DELIMITER $$

CREATE FUNCTION `obtener_id_libro_status` (libro_status_argumento VARCHAR(30))
RETURNS TINYINT UNSIGNED
READS SQL DATA
BEGIN
	DECLARE id_resultado_status tinyint unsigned;

	SET id_resultado_status := (
        SELECT id_libro_status
        FROM libro_status
        WHERE UPPER(libro_status) LIKE UPPER(libro_status_argumento)
    );

	RETURN id_resultado_status;
END;$$

DELIMITER ;