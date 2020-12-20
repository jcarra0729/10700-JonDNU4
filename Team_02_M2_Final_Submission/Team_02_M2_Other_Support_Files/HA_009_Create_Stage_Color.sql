/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (exists(select name from sysobjects where name = 'Stage_Color' and type = 'U'))
	begin
		drop table Stage_Color;
	end;
go

create table Stage_Color
	(
	PRD_Color_Key					smallint	identity(1,1)	not null, 
	PRD_Color_ID					smallint		not null,
	PRD_Color_Name 					varchar(40)		not null,
	PRD_Color_Description 			varchar(256)	not null,
	PRD_Class_Key					smallint		not null,
	--PRD_MMC_ID						smallint		not null, 
	CONSTRAINT	PK_Stage_Color PRIMARY KEY CLUSTERED (PRD_Color_Key ASC)
);
go
