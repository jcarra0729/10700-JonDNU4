/*
** This must be run in the SEIS732_Team02_Products database
**
*/

if (exists(select name from sysobjects where name = 'Feature' and type = 'U'))
	begin
		drop table Stage_Feature;
	end;
go

create table Stage_Feature
	(
	FEA_Type		varchar(30)		not null, 
	FEA_Value		varchar(50)		not null,
	FEA_Description	varchar(50)		not null,
	FS_ID			varchar(256) CONSTRAINT FK_Stage_Feature FOREIGN KEY REFERENCES FeatureSet(FS_ID),
	FEA_ID	bigint identity(1,1) 	not null,
	CONSTRAINT PK_Stage_Feature	PRIMARY KEY CLUSTERED (FEA_ID ASC)
	);
go
