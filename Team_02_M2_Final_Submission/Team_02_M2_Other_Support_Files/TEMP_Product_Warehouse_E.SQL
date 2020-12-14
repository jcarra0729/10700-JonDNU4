/*
** This must be run in the SEIS732_Team02_Products database
**
*/

if (exists(select name from sysobjects where name = 'Warehouse' and type = 'U'))
	begin
		drop table Stage_Warehouse;
	end;
go

create table Stage_Warehouse
	(
	WH_Name			varchar(60)					not null,
	WH_Desc 		varchar(256)				not null,
	WH_Established	datetime					not null,
	WH_Workforce	smallint 					not null,
	WH_Code			varchar(10) 				not null,
	WH_ID			smallint	identity(1,1)	not null,
	CONSTRAINT PK_Stage_Warehouse	PRIMARY KEY CLUSTERED (WH_ID ASC)
	);
go
