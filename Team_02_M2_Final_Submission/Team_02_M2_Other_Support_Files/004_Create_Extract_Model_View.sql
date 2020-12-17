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
select    
        MMC_Model_Desc                                                  as    PRD_Model_Description,
        Stage_Make.MMC_ID                                       		as    PRD_MMC_ID,
        MMC_Model_Name                                                  as    PRD_Model_Name
from    
        MMC,
        Stage_Make
where     
        MMC.MMC_ID    =    Stage_Make.MMC_ID;


go



