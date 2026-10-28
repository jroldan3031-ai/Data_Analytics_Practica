-- use (nombre basde de dato);

CREATE DATABASE Clase3_ddl;

Use Clase3_ddl; 

-- DDL: Lenguaje de Definicion de Objetos/Datos
-- Create, alter y drop

-- Ejemplo de Nomenclaturas:
-- Ordenes de compra
-- PacalCase: OrdenesDeCompra
-- Snakecase: ordenes_de_compra
-- CamelCase: ordenesDeCompra



CREATE TABLE Clientes (
DNI INT /* iDENTY (1,1) ESTO ES AUTOINCREMENTAL*/ PRIMARY KEY,
Nombre VARCHAR(50) NOT NULL,
Apellido VARCHAR(100) NOT NULL, 
FechaNacimiento DATE,
Domicilio VARCHAR(100)
);

SELECT * FROM Clientes;

-- DROP TABLE Clientes: es para eliminar la tabla.

ALTER TABLE Clientes
ADD Mail VARCHAR(100);

CREATE TABLE Ventas (
IdVenta INT IDENTITY (1,1) PRIMARY KEY,
Producto VARCHAR(50),
Empleado VARCHAR(50),
DNI INT 

CONSTRAINT Fk_Ventas_Clientes
FOREIGN KEY (DNI)
references cLIENTES (DNI)

);

