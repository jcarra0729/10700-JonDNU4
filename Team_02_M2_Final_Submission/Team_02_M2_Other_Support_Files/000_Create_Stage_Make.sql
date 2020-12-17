/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (exists(select name from sysobjects where name = 'Stage_Make' and type = 'U'))
	begin
		drop table Stage_Make;
	end;
go

create table Stage_Make
	(
	PRD_Make_Key			smallint	identity (1,1)	not null,
	PRD_Make_Name			varchar(40)					not null,
	PRD_Make_Description	varchar(256)				not null,
	MMC_ID					smallint					not null,
	CONSTRAINT PK_Stage_Make	PRIMARY KEY CLUSTERED (PRD_Make_Key ASC)
	);
go