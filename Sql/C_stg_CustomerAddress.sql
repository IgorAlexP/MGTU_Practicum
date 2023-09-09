Drop table IF EXISTS [stg_CustomerAddress];
CREATE TABLE [stg_CustomerAddress] (
	[index] integer, 
	[customer_id] integer, 
	[address] text, 
	[postcode] integer, 
	[state] text, 
	[country] text, 
	[property_valuation] integer
);

CREATE INDEX [ix_stg_CustomerAddress_index]
	ON [stg_CustomerAddress] ([index]);