-- Sentencias TCL  --

USE libreria;
SET SQL_SAFE_UPDATES = 0;
SELECT @@AUTOCOMMIT; 
SET AUTOCOMMIT = 0; 


-- DELETE sentencia en la tabla devolver_libro 

-- Eliminando 3 registros de la tabla devolver_libro 
START TRANSACTION;
DELETE FROM devolver_libro WHERE id_prestamo = 83;

rollback;
commit;

 
-- INSERT sentencias en la tabla editor con savepoints
select * from editor;
-- Inicio la transaccion para insertar 8 registros en la tabla de editor
START TRANSACTION;
INSERT INTO editor VALUES (NULL, 'Barlin Libros');
INSERT INTO editor VALUES (NULL, 'El Vívora');
INSERT INTO editor VALUES (NULL, 'Gigamesh');
INSERT INTO editor VALUES (NULL, 'Funambulista');
SAVEPOINT editor_lote_4;
INSERT INTO editor VALUES (NULL, 'La Galera');
INSERT INTO editor VALUES (NULL, 'Encuentro');
INSERT INTO editor VALUES (NULL, 'Eclipse');
INSERT INTO editor VALUES (NULL, 'Confluencias');
SAVEPOINT editor_lote_8;
-- ROLLBACK TO editor_lote_4;

SET SQL_SAFE_UPDATES = 1;
-- SET AUTOCOMMIT = 1; -- Setting autocommit back to 1