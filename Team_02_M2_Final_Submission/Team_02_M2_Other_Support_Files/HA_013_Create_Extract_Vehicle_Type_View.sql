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
select   distinct
        
		--c.PRD_MMC_ID		as			PRD_MMC_ID,
		r.VT_ID				as 			PRD_VehicleType_ID,
		VT_Model_Year		as			PRD_Model_Year,
		VT_MSRP				as 			PRD_Manufacturer_Suggested_Retail_Price,
		VT_Wholesale_Price 	as 			PRD_Wholesale_Price,
		c.PRD_Color_Key		as			PRD_Color_Key


		
from    
        Vehicle_Type v,
		Stage_Color c,
		RRV_Instance r,
		Stage_Class sc
where     
		
		c.PRD_Color_ID = r.CLR_ID
		and
		r.VT_ID = v.VT_ID
		and sc.PRD_MMC_ID = v.MMC_ID
		and sc.PRD_Class_Key = c.PRD_Class_Key
		
		;


go
