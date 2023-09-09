Drop table IF EXISTS [stg_Transactions];
CREATE TABLE [stg_Transactions] (
	[index] integer, 
	[transaction_id] integer, 
	[product_id] integer, 
	[customer_id] integer, 
	[transaction_date] timestamp, 
	[online_order] real, 
	[order_status] text, 
	[brand] text, 
	[product_line] text, 
	[product_class] text, 
	[product_size] text, 
	[list_price] real, 
	[standard_cost] real, 
	[product_first_sold_date] real
);

CREATE INDEX [ix_stg_Transactions_index]
	ON [stg_Transactions] ([index]);