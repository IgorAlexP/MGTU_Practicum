CREATE TABLE IF NOT EXISTS [dwh_Products] (
	[ProductId] integer NOT NULL PRIMARY KEY, 
	[brand] nvarchar(254), 
	[Product_line] nvarchar(254), 
	[product_class] nvarchar(254), 
	[StandartPrice] real
)