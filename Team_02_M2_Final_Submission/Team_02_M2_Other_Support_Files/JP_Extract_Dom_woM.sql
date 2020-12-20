 /*
** This must be run in the SEIS732_Team02_Sales_Org database
**
*/

if (exists(select name from sysobjects where name = 'Extract_Domain_without_Manager' and type = 'V'))
	begin
		drop view Extract_Domain_without_Manager;
	end;
go

create view Extract_Domain_without_Manager
as
select	distinct
		ST_ID																			as	SORG_Domain_ID,
		Stage_Zone.SORG_Zone_Key														as 	SORG_Zone_Key,
		'<No Regional Manager>'			    											as 	SORG_Domain_Manager_Name,
		ST_Name																			as	SORG_Domain_Name,
		CONCAT('[',SORG_Region_Name,']','-','(',SORG_Zone_Name,')','/',ST_Name) 		as 	SORG_Full_Name	
from	
		Sales_Territory,
		Sales_Mgr,
		Stage_Zone,
		Stage_Region
where 	
		Sales_Territory.MGR_ID	is null
		and
		Sales_Territory.SA_ID	=	Stage_Zone.SORG_Zone_ID
		and
		Stage_Zone.SORG_Region_Key	=	Stage_Region.SORG_Region_Key;

go