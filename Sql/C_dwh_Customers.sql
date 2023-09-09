CREATE TABLE IF NOT EXISTS [dwh_Customers] (
	[customerid] integer NOT NULL PRIMARY KEY, 
	[address] nvarchar(254), 
	[state] nvarchar(254), 
	[gender] nvarchar(254), 
	[firstName] nvarchar(254), 
	[LastName] nvarchar(254), 
	[job_title] nvarchar(254)
)