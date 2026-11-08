USE EmpresaDB;
GO

INSERT INTO Inventario (Producto, Stock) VALUES 
('Laptop', 50),
('Monitor', 80),
('Teclado Mecanico', 100),
('Mouse Inalambrico', 120);
GO

INSERT INTO Ventas (Producto, Cantidad) VALUES ('Laptop', 3);
GO

INSERT INTO Ventas (Producto, Cantidad) VALUES 
('Monitor', 5),
('Teclado Mecanico', 10),
('Mouse Inalambrico', 4),
('Laptop', 2);
GO

PRINT '--- TABLA VENTAS ---';
SELECT * FROM Ventas;

PRINT '--- TABLA AUDITORIA VENTAS ---';
SELECT * FROM AuditoriaVentas;

PRINT '--- TABLA INVENTARIO ACTUALIZADO ---';
SELECT * FROM Inventario;
GO
