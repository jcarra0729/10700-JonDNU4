/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (exists(select name from sysobjects where name = 'Extract_Class' and type = 'V'))
	begin
		drop view Extract_Class;
	end;
go

create view Extract_Class
as
select   distinct
		MMC_ID												as	PRD_MMC_ID
        ,MMC_Class_Desc                                      as    PRD_Class_Description
        ,MMC_Class_Name                                      as    PRD_Class_Name
		,mo.PRD_Model_Key									as 		PRD_Model_Key
from    

MMC,
Stage_Model mo

where 

MMC.MMC_Model_Name = mo.PRD_Model_Name



go



