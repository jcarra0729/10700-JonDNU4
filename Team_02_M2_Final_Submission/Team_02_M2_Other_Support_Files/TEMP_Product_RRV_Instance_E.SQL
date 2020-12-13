/*
** This must be run in the SEIS732_Team02_Products Database
**
*/

if (exists(select name from sysobjects where name = 'RRV_Instance' and type = 'U'))
	begin
		drop table Stage_RRV_Instance;
	end;
go

create table Stage_RRV_Instance
	(
	RV_MFG_Plant_Code 	varchar(10) 					not null,
	RV_MFG_Date			datetime 						not null,
	RV_Status			varchar(1)						not null,
	VT_ID				bigint			CONSTRAINT 	FK_Stage_RRV_Instance	FOREIGN KEY REFERENCES	VehicleType(VT_ID),
	CLR_ID				bigint			CONSTRAINT	FK_Stage_RRV_Instance	FOREIGN KEY REFERENCES	Color(CLR_ID),
	FS_ID				varchar(256) 	CONSTRAINT 	FK_Stage_RRV_Instance 	FOREIGN KEY REFERENCES 	FeatureSet(FS_ID),
	RV_Serial_Number 	bigint	identity(1,1)			not null,
	CONSTRAINT PK_Stage_RRV_Instance	PRIMARY KEY CLUSTERED (RV_Serial_Number ASC)
	);
go
