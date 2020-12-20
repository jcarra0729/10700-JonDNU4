/*
** This must be run in the SEIS732_Team02_Sales_Org database
**
*/
if (exists(select * from sysobjects where name = 'Stage_Domain' and type = 'U'))
    begin
        Delete from Stage_Domain;
    end;
go

insert into Stage_Domain	(
								SORG_Domain_ID,
								SORG_Domain_Manager_Name,
								SORG_Domain_Name,
								SORG_Zone_Key,
								SORG_Full_Name
							)
		select
					SORG_Domain_ID,
					SORG_Domain_Manager_Name,
					SORG_Domain_Name,
					SORG_Zone_Key,
					SORG_Full_Name
		from
				Extract_Domain_with_Manager;			
go

insert into Stage_Domain	(
								SORG_Domain_ID,
								SORG_Domain_Manager_Name,
								SORG_Domain_Name,
								SORG_Zone_Key,
								SORG_Full_Name
							)
		select
					SORG_Domain_ID,
					SORG_Domain_Manager_Name,
					SORG_Domain_Name,
					SORG_Zone_Key,
					SORG_Full_Name
		from
				Extract_Domain_without_Manager;			
go
