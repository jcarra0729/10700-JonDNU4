/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (exists(select name from sysobjects where name = 'Stage_Class' and type = 'U'))
	begin
		drop table Stage_Class;
	end;
go

create table Stage_Class
	(
	PRD_Class_Key			smallint	identity (1,1)	not null,
	PRD_Class_Name			varchar(40)					not null,
	PRD_Class_Description	varchar(256)				not null,
	MMC_ID					smallint					not null,
	CONSTRAINT PK_Stage_Class	PRIMARY KEY CLUSTERED (PRD_Class_Key ASC)
	);
go