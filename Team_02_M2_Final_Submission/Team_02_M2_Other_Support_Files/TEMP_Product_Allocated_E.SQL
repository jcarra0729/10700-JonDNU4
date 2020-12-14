/*
** This must be run in the SEIS732_Team02_Products database
**
*/

if (exists(select name from sysobjects where name = 'Allocated' and type = 'U'))
	begin
		drop table Stage_Allocated;
	end;
go

create table Stage_Allocated
	(
	Allocation_Date			datetime	not null,
	Dealer_Recipient_Date	datetime 	not null,
	Processing_Fees 		money 		not null,
	Handling_Fees 			money		not null,
	Transit_Fees			money		not null,
	DLR_ID	bigint CONSTRAINT FK_Stage_Allocated FOREIGN KEY REFERENCES Dealer(DLR_ID),
	RV_Serial_Number	int CONSTRAINT FK_Stage_Allocated FOREIGN KEY REFERENCES RRV_Instance(RV_Serial_Number),
	CONSTRAINT PK_Stage_Allocated	PRIMARY KEY CLUSTERED (RV_Serial_Number ASC)
	);
go
