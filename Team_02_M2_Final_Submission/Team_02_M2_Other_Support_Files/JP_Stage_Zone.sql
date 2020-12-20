 /*
** This must be run in the SEIS732_Team02_Sales_Org database
**
*/

if (exists(select name from sysobjects where name = 'Stage_Zone' and type = 'U'))
	begin
		drop table Stage_Zone;
	end;
go

create table Stage_Zone
	(
	SORG_Zone_ID				smallint						not null,
	SORG_Zone_Name				varchar(60)						not null,
	SORG_Zone_Manager_Name		varchar(60)						not null,
	SORG_Zone_Key				smallint		identity(1,1)	not null,
	SORG_Region_Key				numeric							not null,
	CONSTRAINT PK_Stage_Zone PRIMARY KEY CLUSTERED ( SORG_Zone_Key ASC)
	);
go
