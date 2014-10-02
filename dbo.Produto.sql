CREATE TABLE [dbo].[Produto]
(
	[Codigo] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Nome] NVARCHAR(50) NOT NULL, 
    [Preco] DECIMAL(18, 2) NOT NULL, 
    [DataCompra] DATE NOT NULL, 
    [Garantia] NVARCHAR(50) NOT NULL, 
    [Caracteristicas] NVARCHAR(50) NOT NULL
)
