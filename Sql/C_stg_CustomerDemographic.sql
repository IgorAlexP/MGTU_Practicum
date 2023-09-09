Drop table IF EXISTS [stg_CustomerDemographic];
CREATE TABLE [stg_CustomerDemographic] (
	[index] integer, 
	[customer_id] integer, 
	[first_name] text, 
	[last_name] text, 
	[gender] text, 
	[past_3_years_bike_related_purchases] integer, 
	[DOB] text, 
	[job_title] text, 
	[job_industry_category] text, 
	[wealth_segment] text, 
	[deceased_indicator] text, 
	[default] text, 
	[owns_car] text, 
	[tenure] real
);

CREATE INDEX [ix_stg_CustomerDemographic_index]
	ON [stg_CustomerDemographic] ([index]);