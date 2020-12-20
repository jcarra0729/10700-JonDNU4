/*
** This must be run in the SEIS732_Team02_Sales_Org database
**
*/

if (exists(select name from sysobjects where name = 'Extract_Sales_Org' and type = 'V'))
	begin
		drop view Extract_Sales_Org;
	end;
go

create view Extract_Sales_Org
as
	select 
			SORG_Key,
			SORG_Zone_ID,
			SORG_Zone_Name,
			SORG_Zone_Manager_Name,
			SZ.SORG_Zone_Key,
			SORG_Domain_ID,
			SORG_Domain_Name,
			SD.SORG_Domain_Manager_Name,
			SORG_Region_ID,
			SORG_Region_Name,
			SORG_Region_Manager_Name,
			SR.SORG_Region_Key,
			SORG_Full_Name
	from
			Stage_Region SR,
			Stage_Zone SZ,
			Stage_Domain SD
	where
			SR.SORG_Region_Key	=	SZ.SORG_Region_Key
			and
			SZ.SORG_Zone_Key 		=	SD.SORG_Zone_Key
	
go
