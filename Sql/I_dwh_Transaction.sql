INSERT or IGNORE INTO [dwh_Transaction]
		([productid]
		,[customerid]
		,[Price]
		,[date])
SELECT [product_id]
	,[customer_id]
	,[list_price]
	,[transaction_date]
FROM [stg_Transactions]