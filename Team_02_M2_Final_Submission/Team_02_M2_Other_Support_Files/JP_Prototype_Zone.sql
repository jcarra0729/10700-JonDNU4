/*
** This must be run in the SEIS732_Team02_Sales_Org database
**
*/
if (exists(select * from sysobjects where name = 'Stage_Zone' and type = 'U'))
    begin
        Delete from Stage_Zone;
    end;
go
insert into Stage_Zone		(
								SORG_Zone_ID,
								SORG_Zone_Manager_Name,
								SORG_Zone_Name,
								SORG_Region_Key
							)
		select
				SORG_Zone_ID,
				SORG_Zone_Manager_Name,
				SORG_Zone_Name,
				SORG_Region_Key
		from
				Extract_Zone_with_Manager;
			
go

insert into Stage_Zone		(
								SORG_Zone_ID,
								SORG_Zone_Manager_Name,
								SORG_Zone_Name,
								SORG_Region_Key
							)
		select
				SORG_Zone_ID,
				SORG_Zone_Manager_Name,
				SORG_Zone_Name,
				SORG_Region_Key
		from
				Extract_Zone_without_Manager;
go
