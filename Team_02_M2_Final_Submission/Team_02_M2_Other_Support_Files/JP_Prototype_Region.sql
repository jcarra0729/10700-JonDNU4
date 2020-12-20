/*
** This must be run in the SEIS732_Team02_Sales_Org database
**
*/
if (exists(select * from sysobjects where name = 'Stage_Region' and type = 'U'))
    begin
        Delete from Stage_Region;
    end;
go

insert into Stage_Region	(
								SORG_Region_ID,
								SORG_Region_Manager_Name,
								SORG_Region_Name
							)
		select
				SORG_Region_ID,
				SORG_Region_Manager_Name,
				SORG_Region_Name
		from
				Extract_Region_with_Manager;
go

insert into Stage_Region	(
								SORG_Region_ID,
								SORG_Region_Manager_Name,
								SORG_Region_Name
							)
		select
				SORG_Region_ID,
				SORG_Region_Manager_Name,
				SORG_Region_Name
		from
				Extract_Region_without_Manager;
go
