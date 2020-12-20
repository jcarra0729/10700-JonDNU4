/*
** This must be run in the SEIS732_Team02_Sales_Org database and the SEIS732_Team02_Star_Schema database
**
*/
if (exists(select * from sysobjects where name = 'SALES_ORG' and type = 'U'))
    begin
        Delete from SALES_ORG;
    end;
go


set identity_insert SALES_ORG on;
go

insert into SALES_ORG	(
						SORG_Key,
						SORG_Zone_ID,
						SORG_Zone_Name,
						SORG_Zone_Manager_Name,
						SORG_Zone_Key,
						SORG_Domain_ID,
						SORG_Domain_Name,
						SORG_Domain_Manager_Name,
						SORG_Region_ID,
						SORG_Region_Name,
						SORG_Region_Manager_Name,
						SORG_Region_Key,
						SORG_Full_Name
						)	
				select
						SORG_Key,
						SORG_Zone_ID,
						SORG_Zone_Name,
						SORG_Zone_Manager_Name,
						SORG_Zone_Key,
						SORG_Domain_ID,
						SORG_Domain_Name,
						SORG_Domain_Manager_Name,
						SORG_Region_ID,
						SORG_Region_Name,
						SORG_Region_Manager_Name,
						SORG_Region_Key,
						SORG_Full_Name
				from	SEIS732_Team_02_Sales_Org.dbo.Extract_Sales_Org;
go

set identity_insert SALES_ORG off;
go
