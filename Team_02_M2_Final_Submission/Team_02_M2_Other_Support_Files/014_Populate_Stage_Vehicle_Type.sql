/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (not exists(select name from sysobjects where name = 'Stage_Vehicle_Type' and type = 'U'))
	begin
		declare @Msg as varchar(500) = concat( char(10),
									   '========================================================================='
									   'Error: Populate Stage_Vehicle_Type failed to load all expected values:'
									   'Table Stage_Vehicle_Type does not exist.',
									   '========================================================================='
									   );
			throw 5001,@MSG,1;
	end;
go	
			
if (not exists(select name from sysobjects where name = 'Extract_Vehicle_Type' and type = 'V'))
	begin
		declare @Msg as varchar(500) = concat( char(10),
									   '========================================================================='
									   'Error: Populate Extract_Vehicle_Type failed to load all expected values:'
									   'View Extract_Vehicle_Type does not exist.',
									   '========================================================================='
									   );
			throw 5001,@MSG,1;
	end;
go

insert into Stage_Vehicle_Type	(														
								PRD_Model_Year,		
								PRD_Manufacturer_Suggested_Retail_Price,	
								PRD_Wholesale_Price,
								PRD_VehicleType_ID
						)
	select		
								PRD_Model_Year,		
								PRD_Manufacturer_Suggested_Retail_Price,	
								PRD_Wholesale_Price,
								PRD_VehicleType_ID
								
								
								
	from		Extract_Vehicle_Type;
go

insert into Stage_Vehicle_Type	(														
								PRD_Model_Year,		
								PRD_Manufacturer_Suggested_Retail_Price,	
								PRD_Wholesale_Price,
								PRD_VehicleType_ID,
								MMC_ID
						)
	select		
								PRD_Model_Year,		
								PRD_Manufacturer_Suggested_Retail_Price,	
								PRD_Wholesale_Price,
								PRD_VehicleType_ID,
								PRD_MMC_ID
								
								
								
	from		Extract_Vehicle_Type;
go