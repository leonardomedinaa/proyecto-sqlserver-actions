USE EmpresaDB;
GO

CREATE TABLE Inventario (
    Producto VARCHAR(100) PRIMARY KEY,
    Stock INT NOT NULL CHECK (Stock >= 0),
    UltimaActualizacion DATETIME DEFAULT GETDATE()
);
GO

CREATE TABLE Ventas (
    VentaID INT IDENTITY(1,1) PRIMARY KEY,
    Producto VARCHAR(100) NOT NULL,
    Cantidad INT NOT NULL,
    Fecha DATETIME DEFAULT GETDATE(),
    CONSTRAINT FK_Ventas_Inventario FOREIGN KEY (Producto) REFERENCES Inventario(Producto)
);
GO

CREATE TABLE AuditoriaVentas (
    AuditoriaID INT IDENTITY(1,1) PRIMARY KEY,
    VentaID INT NOT NULL,
    FechaRegistro DATETIME DEFAULT GETDATE(),
    Mensaje VARCHAR(255)
);
GO
