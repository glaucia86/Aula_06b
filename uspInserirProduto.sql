create procedure uspInserirProduto
	@Nome nvarchar(50),
	@Preco decimal(18,2),
	@DataCompra date,
	@Garantia nvarchar(50),
	@Caracteristicas nvarchar(50)

as
begin
	insert into Produto
	(
		Nome,
		Preco,
		DataCompra,
		Garantia,
		Caracteristicas
	)
	values
	(
		@Nome,
		@Preco,
		@DataCompra,
		@Garantia,
		@Caracteristicas
	)
end