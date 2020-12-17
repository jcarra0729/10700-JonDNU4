/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (exists(select name from sysobjects where name = 'Extract_Color' and type = 'V'))
	begin
		drop view Extract_Color;
	end;
go


create view Extract_Color
as
select    
        CLR_ID															as		PRD_Color_ID
		CLR_Description                                                 as    PRD_Color_Description,
        Stage_Class.MMC_ID                                       		as    PRD_Class_Key,
        CLR_Name                                                  		as    PRD_Color_Name
from    
		Color,
        Stage_Class;
/*where     
        MMC.MMC_ID    =    Stage_Class.MMC_ID;*/


go



