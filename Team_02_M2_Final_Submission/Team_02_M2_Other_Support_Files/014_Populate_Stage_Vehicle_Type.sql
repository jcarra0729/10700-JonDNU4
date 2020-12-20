if (exists(select * from sysobjects where name = 'Stage_Vehicle_Type' and type = 'U'))
    begin
        Delete from Stage_Vehicle_Type;
    end;
go


insert into Stage_Vehicle_Type	(														
								PRD_Model_Year,		
								PRD_Manufacturer_Suggested_Retail_Price,	
								PRD_Wholesale_Price,
								PRD_VehicleType_ID,
								PRD_Color_Key
								--PRD_MMC_ID

								
						)
	select		
								PRD_Model_Year,		
								PRD_Manufacturer_Suggested_Retail_Price,	
								PRD_Wholesale_Price,
								PRD_VehicleType_ID,
								PRD_Color_Key
								--PRD_MMC_ID
								
								
	from		Extract_Vehicle_Type;
go