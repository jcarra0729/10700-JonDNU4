 /*
** This must be run in the SEIS732_Team02_Sales_Org database
**
*/

if (exists(select name from sysobjects where name = 'Extract_Zone_without_Manager' and type = 'V'))
	begin
		drop view Extract_Zone_without_Manager;
	end;
go

create view Extract_Zone_without_Manager
as
select	distinct
		SA_ID															as	SORG_Zone_ID,
		Stage_Region.SORG_Region_Key									as 	SORG_Region_Key,
		'<No Regional Manager>'			    							as 	SORG_Zone_Manager_Name,
		SA_Name															as	SORG_Zone_Name
from	
		Sales_Area,
		Sales_Mgr,
		Stage_Region
where 	
		Sales_Area.MGR_ID	is null 
		and 
		Sales_Area.SD_ID	=	Stage_Region.SORG_Region_ID;

go