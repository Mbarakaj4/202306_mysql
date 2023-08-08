INSERT INTO usuarios (nombre) VALUES
	('Jane Austin'),
    ('Emily Dickinson'),
    ('Fyodor Dostoevsky'),
    ('William Shakespeare'),
    ('Lau Tzu');
    
INSERT INTO Libros (titulo, num_paginas) VALUES
	("C Sharp",200),
    ("Java",200),
    ("Python",200),
    ("PHP",200),
    ("Ruby",200);
    
UPDATE Libros SET titulo = 'C #' WHERE titulo = 'C Sharp';

UPDATE usuarios SET nombre = 'Bill Shakespeare' WHERE id = '4';

INSERT INTO favoritos (usuario_id, Libro_id) VALUES
	(1,1),
    (1,2),
    (2,1),
    (2,2),
    (2,3),
    (3,1),
    (3,2),
    (3,3),
    (3,4),
    (4,1),
    (4,2),
    (4,3),
    (4,4),
    (4,5);

SELECT * FROM Libros
JOIN `favoritos` ON `Libros`.`id` = `favoritos`.`Libro_id`
JOIN `favoritos` ON `usuarios`.`id` = `favoritos`.`usuario_id`
WHERE `Libros`.`id` = 3;

DELETE FROM favoritos WHERE
	Libro_id = 3
    AND usuario_id = 2;

SELECT usuario_id FROM favoritos WHERE Libro_id = 3 ORDER BY usuario_id LIMIT 1;

INSERT INTO favoritos (usuario_id, Libro_id) VALUES (5,2);

SELECT * FROM usuarios
JOIN `favoritos` ON `usuarios`.`id` = `favoritos`.`usuario_id`
JOIN `Libros` ON `Libros`.`id` = `favoritos`.`Libro_id`
WHERE `usuarios`.`id` = 3;

SELECT * FROM Libros
JOIN `favoritos` ON `Libros`.`id` = `favoritos`.`Libro_id`
JOIN `usuarios` ON `Libros`.`id` = `favoritos`.`usuario_id`
WHERE `Libros`.`id` = 5;