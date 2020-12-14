/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (exists(select name from sysobjects where name = 'Color' and type = 'U'))
	begin
		drop table Stage_Color;
	end;
go

create table Stage_Color
	(
	CLR_Name		varchar(40)						not null,
	CLR_Description	varchar(256)					not null,
	CLR_ID			bigint	identity(1,1)			not null,
	CONSTRAINT PK_Stage_Color	PRIMARY KEY CLUSTERED (CLR_ID ASC)
	);
go
