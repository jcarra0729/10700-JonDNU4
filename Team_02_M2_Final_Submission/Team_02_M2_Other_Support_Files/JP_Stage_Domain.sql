 /*
** This must be run in the SEIS732_Team02_Sales_Org database
**
*/

if (exists(select name from sysobjects where name = 'Stage_Domain' and type = 'U'))
	begin
		drop table Stage_Domain;
	end;
go

create table Stage_Domain
	(
	SORG_Key					numeric		identity(1,1)		not null,
	SORG_Domain_ID				smallint						not null,
	SORG_Domain_Name			varchar(60)						not null,
	SORG_Domain_Manager_Name	varchar(60)						not null,
	SORG_Zone_Key				numeric							not null,
	SORG_Full_Name				varchar(256)					not null,
	CONSTRAINT PK_Stage_Domain PRIMARY KEY CLUSTERED ( SORG_Key ASC)
	);
go



