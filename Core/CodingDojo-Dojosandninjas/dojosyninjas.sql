/*
	Dojos y Ninjas
    
    Aplica ingenieria avanzada al esquema_dojos_y_ninjas del capitulo anterior y:
		- Crea 3 nuevos dojos
        - Elimina los 3 dojos que acabas de crear
        - Crea 3 nuevos dojos
        - Crea 3 ninjas en cada dojo
        - Recupera todos los ninjas del primer y ultimo dojo
        - Recupera el dojo del ultimo ninja
*/

# Seleccionamos la base de datos
USE esquema_dojos_y_ninjas;

# Insertamos en dojos, 3 nuevos dojos
INSERT INTO dojos (nombre, created_at, updated_at) VALUES 
	('dojo1', NOW(), NOW()),
	('dojo2', NOW(), NOW()),
	('dojo3', NOW(), NOW());

# Mostramos los valores nuevos
SELECT * FROM dojos;

# Borramos los valores
DELETE FROM dojos LIMIT 3;

# Creamos 3 Dojos nuevos
INSERT INTO dojos (nombre, created_at, updated_at) VALUES 
	('dojo4', NOW(), NOW()),
	('dojo5', NOW(), NOW()),
	('dojo6', NOW(), NOW());

# Creamos 3 Ninjas en cada Dojo
INSERT INTO ninjas (
    dojo_id,
    first_name,
    last_name,
    age,
    created_at,
    updated_at 
)
VALUES
	(16,'Pepe','Ramirez',16,NOW(),NOW()),
    (16,'Pepe','Ramirez',17,NOW(),NOW()),
    (16,'Pepe','Ramirez',18,NOW(),NOW()),
    
    (17,'Adrian','Gimenez',19,NOW(),NOW()),
    (17,'Adrian','Gimenez',20,NOW(),NOW()),
    (17,'Adrian','Gimenez',21,NOW(),NOW()),
    
    (18,'Juan','Rodriguez',22,NOW(),NOW()),
    (18,'Juan','Rodriguez',23,NOW(),NOW()),
    (18,'Juan','Rodriguez',24,NOW(),NOW());

# Recuperamos los ninjas del primer y ultimo dojo
SELECT * FROM ninjas WHERE dojo_id = 16 OR dojo_id = 18;

# Recuperamos el ultimo ninja
SELECT * FROM ninjas ORDER BY id DESC LIMIT 1