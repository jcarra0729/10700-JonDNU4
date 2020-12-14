/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (exists(select name from sysobjects where name = 'Vehicle_Type' and type = 'U'))
	begin
		drop table Stage_Vehicle_Type;
	end;
go

create table Stage_Vehicle_Type
	(
	VT_Model_Year 		smallint 				not null,
	VT_MSRP 			money 					not null,
	VT_Wholesale_Price	money 					not null, 
	MMC_ID 				smallint CONSTRAINT FK_Stage_Vehicle_Type FOREIGN KEY REFERENCES MMC(MMC_ID),
	VT_ID				bigint	identity(1,1)	not null,
	CONSTRAINT PK_Stage_Vehicle_Type	PRIMARY KEY CLUSTERED (VT_ID ASC)
	);
go
