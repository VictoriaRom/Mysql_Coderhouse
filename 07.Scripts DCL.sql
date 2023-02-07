-- Script DCL/Creacion usuarios --
USE mysql;

-- usuario creado con permisos.
CREATE USER IF NOT EXISTS 'usuario_lectura'@'localhost' IDENTIFIED BY 'contraseña';
-- usuario creado solo con el permiso de lectura.
GRANT SELECT ON libreria.* TO 'usuario_lectura'@'localhost';
REVOKE DELETE ON *.* FROM 'usuario_lectura'@'localhost';

-- Para ver permisos:
/*SHOW GRANTS FOR 'usuario_lectura'@'localhost';
*/

-- Usuario creado con los permisos de lectura, insercion y modificacion. 
CREATE USER IF NOT EXISTS 'usuario_mas_permisos'@'localhost' IDENTIFIED BY 'contraseña2';
-- Usuario creado solo con los permisos de lectura, insercion y modificacion.
GRANT SELECT, UPDATE, INSERT ON libreria.* TO 'usuario_mas_permisos'@'localhost';
REVOKE DELETE ON *.* FROM 'usuario_mas_permisos'@'localhost';

-- Para ver permisos:
/*SHOW GRANTS FOR 'usuario_mas_permisos'@'localhost';
*/