/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (exists(select name from sysobjects where name = 'Extract_Model' and type = 'V'))
	begin
		drop view Extract_Model;
	end;
go

create view Extract_Model
as
select distinct
		--MMC_ID                                       					as    PRD_MMC_ID,
        MMC_Model_Desc                                                  as    PRD_Model_Description
        ,MMC_Model_Name                                                 as    PRD_Model_Name
		,s.PRD_Make_Key													as		PRD_Make_Key
from    
        
       Stage_Make s,
		MMC
	where MMC.MMC_Make_Name = s.PRD_Make_Name

go



