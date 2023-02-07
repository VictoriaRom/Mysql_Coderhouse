-- Vistas --

USE libreria;

-- Vista libro_info
CREATE OR REPLACE VIEW libro_info AS (
    SELECT
        l.id_libro,
        l.titulo,
        l.descrip_libro,
        l.fecha_publicacion,
        e.editor,
        ll.idioma_libro
    FROM libro AS l
    INNER JOIN editor AS e
        ON l.id_editor = e.id_editor
    INNER JOIN idioma_libro AS ll
        ON ll.idioma_libro = ll.id_idioma_libro
    ORDER BY 1
);

--  Vista autor_info
CREATE OR REPLACE VIEW autor_info AS (
    SELECT
        a.id_autor,
        CONCAT(a.nombre, " ", a.apellido) AS nombre_completo,
        p.pais
    FROM autor AS a
    INNER JOIN pais as p
        ON p.id_pais = p.id_pais
    ORDER BY 1
);

-- Vista libros_perdidos
CREATE OR REPLACE VIEW libros_perdidos AS (
    SELECT
        lp.id_inventario_libro,
        l.id_libro,
        l.titulo
    FROM inventario_libro AS lp
    INNER JOIN libro AS l
        ON lp.id_libro = l.id_libro
    INNER JOIN libro_status AS ls
        ON lp.id_libro_status = ls.id_libro_status
    WHERE ls.libro_status LIKE 'Perdido'
    ORDER BY 2
);

-- Vista prestamo_por_libro
CREATE OR REPLACE VIEW prestamo_por_libro AS (
    SELECT
		l.id_libro,
        l.titulo,
        COUNT(p.id_prestamo) AS veces_prestado
	FROM libro AS l
	INNER JOIN inventario_libro AS il
		ON l.id_libro = il.id_libro
	INNER JOIN prestamo AS p
		ON il.id_inventario_libro = p.id_inventario_libro
	GROUP BY 1
    ORDER BY 3 DESC
);

-- Vista prestamos_vencidos
CREATE OR REPLACE VIEW prestamos_vencidos AS (
    SELECT
        p.id_prestamo,
        p.id_inventario_libro,
        l.titulo,
        p.id_cliente,
        CONCAT(c.nombre, " ", c.apellido) AS cliente,
        c.telefono,
        c.email,
        p.fecha_vencimiento
    FROM prestamo AS p
    INNER JOIN cliente AS c
		ON p.id_prestamo = c.id_cliente
    INNER JOIN inventario_libro AS il
		ON p.id_inventario_libro = il.id_inventario_libro
    INNER JOIN libro AS l
        ON il.id_libro = l.id_libro
    INNER JOIN libro_status AS ls
		ON il.id_libro_status = ls.id_libro_status
    WHERE ls.libro_status LIKE 'Prestado' AND p.id_prestamo NOT IN (
		SELECT dl.id_prestamo
        FROM devolver_libro AS dl
    )
    ORDER BY p.fecha_vencimiento ASC
);

-- Vista libros_prestados
CREATE OR REPLACE VIEW libros_prestados AS (
    SELECT
		il.id_inventario_libro,
        l.id_libro,
        l.titulo,
        p.fecha_prestamo,
        p.fecha_vencimiento AS devuelta_esperada
	FROM inventario_libro AS il
    INNER JOIN libro AS l
		ON il.id_libro = l.id_libro
	INNER JOIN prestamo AS p
		ON il.id_inventario_libro = p.id_inventario_libro
	INNER JOIN libro_status AS ls
		ON il.id_libro_status = ls.id_libro_status
	WHERE ls.libro_status LIKE "Prestado" AND p.id_prestamo NOT IN (
		SELECT dl.id_prestamo
		FROM devolver_libro AS dl
	)
    ORDER BY 5 DESC
);

-- Vista libros_disponibles
CREATE OR REPLACE VIEW libros_disponibles AS (
    SELECT
		il.id_libro,
        l.titulo,
        COUNT(il.id_inventario_libro) as cantidad_en_stock
	FROM inventario_libro AS il
	INNER JOIN libro_status AS ls
		ON il.id_libro_status = ls.id_libro_status
    INNER JOIN libro AS l
        ON il.id_libro = l.id_libro
	WHERE ls.libro_status LIKE "Stock"
    GROUP BY 1
    ORDER BY 1 ASC
);