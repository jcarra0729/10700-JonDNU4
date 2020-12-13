/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (exists(select name from sysobjects where name = 'MMC' and type = 'U'))
	begin
		drop table Stage_MMC;
	end;
go

create table Stage_MMC
	(
	MMC_Make_Name	varchar(40)					not null,
	MMC_Make_Desc	varchar(256)				not null,
	MMC_Model_Name	varchar(40)					not null,
	MMC_Model_Desc	varchar(256)				not null,
	MMC_Class_Name	varchar(40)					not null,
	MMC_Class_Desc	varchar(256)				not null,
	MMC_ID			smallint	identity (1,1)	not null,
	CONSTRAINT PK_Stage_MMC	PRIMARY KEY CLUSTERED (MMC_ID ASC)
	);
go
