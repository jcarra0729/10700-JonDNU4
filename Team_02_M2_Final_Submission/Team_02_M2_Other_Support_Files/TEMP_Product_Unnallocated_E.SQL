/*
** This must be run in the SEIS732_Team02_Products database
**
*/

if (exists(select name from sysobjects where name = 'Unallocated' and type = 'U'))
	begin
		drop table Stage_Unallocated;
	end;
go

create table Stage_Unallocated
	(
	UNA_Recieved_Date	datetime	not null,
	UNA_Cost 			money		not null,
	WH_ID				smallint 	CONSTRAINT FK_Stage_Unallocated FOREIGN KEY REFERENCES Warehouse(WH_ID),
	RV_Serial_Number 	bigint 		CONSTRAINT FK_Stage_Unallocated FOREIGN KEY REFERENCES RRV_Instance(RV_Serial_Number),
	CONSTRAINT PK_Stage_Unallocated	PRIMARY KEY CLUSTERED (RV_Serial_Number ASC)
	);
go
