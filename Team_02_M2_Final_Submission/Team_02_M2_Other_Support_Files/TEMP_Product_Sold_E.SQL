/*
** This must be run in the SEIS732_Team02_Products database
**
*/

if (exists(select name from sysobjects where name = 'Sold' and type = 'U'))
	begin
		drop table Stage_Sold;
	end;
go

create table Stage_Sold
	(
	Sale_Date			datetime		not null,
	Actual_Sales_Amount	money			not null,
	Sales_Tax_Amount	money 			not null,
	Retail_Or_WholeSale	varchar(1)		not null,
	First_Time_Buyer	varchar(1)		not null,
	CUST_ID				bigint		CONSTRAINT	FK_Stage_Sold	FOREIGN KEY	REFERENCES	Customer(CUST_ID),
	IP_ID 				smallint 	CONSTRAINT	FK_Stage_Sold	FOREIGN KEY REFERENCES 	IncentiveProgram(IP_ID),
	DLR_ID				bigint 		CONSTRAINT 	FK_Stage_Sold 	FOREIGN KEY REFERENCES 	Dealer(DLR_ID),
	RV_Serial_Number	int 		CONSTRAINT 	FK_Stage_Sold 	FOREIGN KEY REFERENCES 	RRV_Instance(RV_Serial_Number),
	CONSTRAINT PK_Stage_Sold	PRIMARY KEY CLUSTERED (RV_Serial_Number ASC)
	);
go
