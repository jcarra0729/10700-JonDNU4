/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (exists(select name from sysobjects where name = 'Extract_PRODUCT' and type = 'V'))
	begin
		drop view Extract_PRODUCT;
	end;
go

create view Extract_PRODUCT as

select distinct

PRD_Key
,ma.PRD_Make_Key
,PRD_Make_Name
,PRD_Make_Description
,mo.PRD_Model_Key
,PRD_Model_Name
,PRD_Model_Description
,cl.PRD_Class_Key
,PRD_Class_Name
,PRD_Class_Description
,co.PRD_Color_Key
,PRD_Color_ID
,PRD_Color_Name
,PRD_Color_Description
,PRD_Model_Year
,PRD_VehicleType_ID
,PRD_Manufacturer_Suggested_Retail_Price
,PRD_Wholesale_Price
,cl.PRD_MMC_ID

from

Stage_Make ma,
Stage_Model mo,
Stage_Class cl,
Stage_Color co,
Stage_Vehicle_Type v

WHERE

ma.PRD_Make_Key = mo.PRD_Make_Key
and
mo.PRD_Model_Key = cl.PRD_Model_Key
and
cl.PRD_Class_Key = co.PRD_Class_Key
and
co.PRD_Color_Key = v.PRD_Color_Key

