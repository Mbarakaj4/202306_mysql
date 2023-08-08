INSERT INTO Usuarios (Nombre, Apellido, Correo_Electronico, Created_at, Updated_at) VALUES 
	('Juan', 'Bogarin', 'juanb@example.com',NOW(),NOW()),
    ('Robert', 'Alcaraz', 'robert.a@example.com',NOW(),NOW()),
    ('Pepe', 'Ramirez', 'el.pepe@example.com',NOW(),NOW());

SELECT * FROM Usuarios;

SELECT * FROM Usuarios WHERE Correo_Electronico = 'juanb@example.com';

SELECT * FROM Usuarios WHERE id = 3;

UPDATE Usuarios SET Apellido = 'Panqueques', Updated_at = NOW() WHERE idUsuarios = 3;

DELETE FROM Usuarios WHERE idUsuarios = 2;

SELECT * FROM Usuarios ORDER BY Nombre DESC; 