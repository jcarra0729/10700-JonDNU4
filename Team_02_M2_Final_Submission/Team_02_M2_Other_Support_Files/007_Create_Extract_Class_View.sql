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
select    
        MMC_Class_Desc                                                  as    PRD_Class_Description,
        Stage_Model.MMC_ID                                       		as    PRD_MMC_ID,
        MMC_Class_Name                                                  as    PRD_Class_Name
from    
        MMC,
        Stage_Model
where     
        MMC.MMC_ID    =    Stage_Model.MMC_ID;


go



