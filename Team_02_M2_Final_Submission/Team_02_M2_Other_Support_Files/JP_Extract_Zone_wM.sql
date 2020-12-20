 /*
** This must be run in the SEIS732_Team02_Sales_Org database
**
*/

if (exists(select name from sysobjects where name = 'Extract_Zone_with_Manager' and type = 'V'))
	begin
		drop view Extract_Zone_with_Manager;
	end;
go

create view Extract_Zone_with_Manager
as
select	
		SA_ID															as	SORG_Zone_ID,
		Stage_Region.SORG_Region_Key									as 	SORG_Region_Key,
		MGR_Last_Name +','+ MGR_First_Name    							as 	SORG_Zone_Manager_Name,
		SA_Name															as	SORG_Zone_Name
from	
		Sales_Area,
		Sales_Mgr,
		Stage_Region
where 	
		Sales_Area.MGR_ID	=	Sales_Mgr.MGR_ID 
		and
		Sales_Area.SD_ID	=	Stage_Region.SORG_Region_ID;

go