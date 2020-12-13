/*
** This must be run in the SEIS732_Team02_Products database
**
*/

if (exists(select name from sysobjects where name = 'FeatureSet' and type = 'U'))
	begin
		drop table Stage_FeatureSet;
	end;
go

create table Stage_FeatureSet
	(
	FS_Retail_Price	money					not null,
	FS_ID			bigint 	identity(1,1)	not null,
	CONSTRAINT PK_Stage_FeatureSet	PRIMARY KEY CLUSTERED (FS_ID ASC)
	);
go
