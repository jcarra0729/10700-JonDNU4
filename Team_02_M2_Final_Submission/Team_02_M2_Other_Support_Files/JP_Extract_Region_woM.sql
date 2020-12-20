 /*
** This must be run in the SEIS732_Team02_Sales_Org database
**
*/

if (exists(select name from sysobjects where name = 'Extract_Region_without_Manager' and type = 'V'))
	begin
		drop view Extract_Region_without_Manager;
	end;
go

create view Extract_Region_without_Manager
as
select	distinct
		SD_ID															as	SORG_Region_ID,
		'<No Regional Manager>'    										as 	SORG_Region_Manager_Name,
		SD_Name															as	SORG_Region_Name
from	
		Sales_District,
		Sales_Mgr
where 	
		Sales_District.MGR_ID is null;
		
go


