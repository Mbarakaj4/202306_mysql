USE twitter;

/*
	LO BASICO
*/

# que consulta ejecutarias para obtener todos los usuarios?
SELECT * FROM users;

# que consulta ejecutarias para obtener solo los nombres de todos los usuarios?
SELECT first_name FROM users;

# que consulta ejecutarias para obtener solo los nombres y apellidos de todos los usuarios?
SELECT first_name, last_name FROM users;

/*
	SELECT CON CONDICIONES
*/

# que consulta ejecutarias para obtener solo los nombres de los usuarios con id de 2?
SELECT * FROM users WHERE id = 2;

# que consulta ejecutarias para obtener solo los apellidos de los usuarios con id de 2 y 3?
SELECT last_name FROM users WHERE id = 2 OR id = 3;

# que consulta ejecutarias para obtener todos los usuarios con id mayor que 2?
SELECT * FROM users WHERE id > 2;

# que consulta ejecutarias para obtener todos los usuarios con id menor o igual a 3?
 SELECT * FROM users WHERE id <= 3;
 
 # que consulta ejecutarias para obtener todos los usuarios con nombres que terminen en e?
 SELECT * FROM users WHERE first_name LIKE '%e';
 
 # que consulta ejecutarias para obtener todos los usuarios con nombres que no comiencen en k?
 SELECT * FROM users WHERE first_name NOT LIKE 'k%';
 
 /*
	SELECT CON ORDENAMIENTO
 */
 
 # que consulta ejecutarias para obtener todos los usuarios, con los usuarios mas jovenes en la
 # parte superior de la tabla
 SELECT * FROM users ORDER BY birthday DESC;
 
 # que consulta ejecutarias para obtener todos los usuarios, con los usuarios de mayor de edad 
 # en la parte superior de la tabla?
 SELECT * FROM users ORDER BY birthday ASC;
 
 # que consulta ejecutarias para obtener todos los usuarios cuyo nombre termine en "e", con los
 # usuarios mas jovenes en la parte superior de la tabla
 SELECT * FROM users WHERE first_name LIKE "%e" ORDER BY birthday DESC;
 
 # que consulta ejecutarias para obtener solo los nombres de todos los usuarios en el orden
 # alfabetico
 SELECT * FROM users ORDER BY first_name;
 # el valor por defecto de order by es asc, por lo que se puede omitir
 
 /*
	SELECT CON LIMITE Y COMPENSACION
 */
 
 # que consulta ejecutarias para obtener solo los primeros 3 usuarios?
 SELECT * FROM users LIMIT 3;
 
 # que consulta ejecutarias paraq obtener los registros de usuario 3-5?
 SELECT * FROM users LIMIT 3 OFFSET 2;
 
 # tambien se puede combinar offset y limit de la siguiente manera
 SELECT * FROM users LIMIT 2,3;