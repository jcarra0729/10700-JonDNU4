 /*
** This must be run in the SEIS732_Team02_Sales_Org database
**
*/

if (exists(select name from sysobjects where name = 'Stage_Region' and type = 'U'))
	begin
		drop table Stage_Region;
	end;
go

create table Stage_Region
	(
	SORG_Region_ID				smallint						not null,
	SORG_Region_Name			varchar(60)						not null,
	SORG_Region_Manager_Name	varchar(60)						not null,
	SORG_Region_Key				smallint		identity(1,1)	not null,
	CONSTRAINT PK_Stage_Region PRIMARY KEY CLUSTERED ( SORG_Region_Key ASC)
	);
go
