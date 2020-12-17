/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (exists(select name from sysobjects where name = 'Extract_Vehicle_Type' and type = 'V'))
	begin
		drop view Extract_Vehicle_Type;
	end;
go


create view Extract_Vehicle_Type
as
select    
        
		VT_ID				as 			PRD_VehicleType_ID,
		v.MMC_ID			as 			PRD_MMC_ID,
		VT_Model_Year		as			PRD_Model_Year,
		VT_MSRP				as 			PRD_Manufacturer_Suggested_Retail_Price,
		VT_Wholesale_Price 	as 			PRD_Wholesale_Price

		
from    
        Vehicle_Type v,
		MMC m
where     
        m.MMC_ID    =    v.MMC_ID;


go



