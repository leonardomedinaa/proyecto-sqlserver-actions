USE EmpresaDB;
GO

CREATE OR ALTER TRIGGER trg_AuditarVenta
ON Ventas
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    IF NOT EXISTS (SELECT 1 FROM inserted)
        RETURN;

    DECLARE @VentasLote dbo.VentasInsertadasType;

    INSERT INTO @VentasLote (VentaID, Producto, Cantidad)
    SELECT VentaID, Producto, Cantidad
    FROM inserted;

    EXEC sp_RegistrarAuditoriaYActualizarStock @NuevasVentas = @VentasLote;
END;
GO
