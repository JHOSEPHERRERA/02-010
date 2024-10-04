
CREATE DATABASE reposteria_db;


USE reposteria_db;


CREATE TABLE roles (
    id INT AUTO_INCREMENT PRIMARY KEY,
    role_name VARCHAR(50) NOT NULL UNIQUE
);


CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    role_id INT,
    FOREIGN KEY (role_id) REFERENCES roles(id)
);


CREATE TABLE categories (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    image_url VARCHAR(255)  -- URL para la imagen de la categoría
);

-- Crear la tabla 'productos'
CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL,
    category_id INT,
    image_url VARCHAR(255), -- URL para la imagen del producto
    FOREIGN KEY (category_id) REFERENCES categories(id)
);

ALTER TABLE usuarios
ADD COLUMN profile_picture VARCHAR(255);  -- URL para la foto de perfil


-- Insertar roles iniciales (opcional)
INSERT INTO roles (role_name) VALUES ('Administrador'), ('Vendedor'), ('Repostero');

drop database reposteria_db;

select * from roles;
use reposteria_db;
select * from usuarios;
delete from usuarios
  where id=13;

DESCRIBE usuarios;

SELECT id, name, email, profile_picture FROM usuarios;


