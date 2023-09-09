INSERT or IGNORE INTO [dwh_Products]
		([ProductId]
		,[brand]
		,[Product_line]
		,[product_class]
		,[StandartPrice])
	SELECT distinct
	[product_id]
	,[brand]
	,[product_line]
	,[product_class]
	,[standard_cost]
FROM [stg_Transactions] 