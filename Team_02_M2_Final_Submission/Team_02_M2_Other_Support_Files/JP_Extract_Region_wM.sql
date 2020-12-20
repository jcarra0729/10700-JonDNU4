 /*
** This must be run in the SEIS732_Team02_Sales_Org database
**
*/

if (exists(select name from sysobjects where name = 'Extract_Region_with_Manager' and type = 'V'))
	begin
		drop view Extract_Region_with_Manager;
	end;
go

create view Extract_Region_with_Manager
as
select	
		SD_ID															as	SORG_Region_ID,
		MGR_Last_Name + ',' + MGR_First_Name    						as 	SORG_Region_Manager_Name,
		SD_Name															as	SORG_Region_Name
from	
		Sales_District,
		Sales_Mgr
where 	
		Sales_District.MGR_ID	=	Sales_Mgr.MGR_ID;

go
