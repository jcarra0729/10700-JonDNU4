/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (exists(select name from sysobjects where name = 'Stage_Vehicle_Type' and type = 'U'))
	begin
		drop table Stage_Vehicle_Type;
	end;
go

create table Stage_Vehicle_Type
	(
	PRD_Key												bigint identity(1,1)		not null,
	PRD_VehicleType_ID									bigint 						not null,
	PRD_Model_Year										varchar(10)					not null,
	PRD_Manufacturer_Suggested_Retail_Price				money						not null,
	PRD_Wholesale_Price									money						not null,
	MMC_ID												smallint					not null,
	CONSTRAINT	PK_Stage_Vehicle_Type	PRIMARY KEY CLUSTERED (PRD_Key ASC)
	);
go