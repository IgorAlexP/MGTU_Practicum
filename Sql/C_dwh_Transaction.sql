CREATE TABLE IF NOT EXISTS  [dwh_Transaction] (
	[productid] integer NOT NULL, 
	[customerid] integer NOT NULL, 
	[Price] real, 
	[date] timestamp NOT NULL,
	PRIMARY KEY ([productid], [customerid], [date])
)