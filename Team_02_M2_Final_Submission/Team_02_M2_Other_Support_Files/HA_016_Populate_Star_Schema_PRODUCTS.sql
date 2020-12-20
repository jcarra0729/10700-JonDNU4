/*
** This must be run in the SEIS732_Team02_PRODUCT database and the SEIS732_Team02_Star_Schema database
**
*/
if (exists(select * from sysobjects where name = 'PRODUCT' and type = 'U'))
    begin
        Delete from PRODUCT
    end;
go


set identity_insert PRODUCT on;
go

insert into PRODUCT (
PRD_Key
,PRD_Make_Key
,PRD_Make_Name
,PRD_Make_Description
,PRD_Model_Key
,PRD_Model_Name
,PRD_Model_Description
,PRD_Class_Key
,PRD_Class_Name
,PRD_Class_Description
,PRD_Color_Key
,PRD_Color_ID
,PRD_Color_Name
,PRD_Color_Description
,PRD_Model_Year
,PRD_VehicleType_ID
,PRD_Manufacturer_Suggested_Retail_Price
,PRD_Wholesale_Price
,PRD_MMC_ID
)
select
PRD_Key
,PRD_Make_Key
,PRD_Make_Name
,PRD_Make_Description
,PRD_Model_Key
,PRD_Model_Name
,PRD_Model_Description
,PRD_Class_Key
,PRD_Class_Name
,PRD_Class_Description
,PRD_Color_Key
,PRD_Color_ID
,PRD_Color_Name
,PRD_Color_Description
,PRD_Model_Year
,PRD_VehicleType_ID
,PRD_Manufacturer_Suggested_Retail_Price
,PRD_Wholesale_Price
,PRD_MMC_ID
from SEIS732_Team_02_Products.dbo.Extract_PRODUCT;
go

set identity_insert PRODUCT off;