INSERT or IGNORE INTO [dwh_Customers]
		([customerid]
		,[address]
		,[state]
		,[gender]
		,[firstName]
		,[LastName]
		,[job_title])
SELECT 
	 A.[customer_id]
	,B.[address]
	,B.[state]
	,A.[gender]
	,A.[first_name]
	,A.[last_name]
	,A.[job_title]

FROM [stg_CustomerDemographic] as A,[stg_CustomerAddress] as B
where A.[customer_id] == B.[customer_id]
